import pandas as pd 

data = pd.read_csv("/pfs/fremont/fremont.csv", index_col="Date, parse_dates=True)
print('dataset loaded')

#rename columns
data.columns = ['West', 'East']
data.fillna(0, inplace=True)
data['Total'] = data.eval('East + West')
                   
# calculate daily totals
pivoted = data.pivot_table(['East', 'West'],
                           index=data.index.date,
                           columns=data.index.hour,
                           fill_value=0)
                   
pivoted_array = pivoted.values
np.save("/pfs/out/pivoted_array.npy", pivoted_array)