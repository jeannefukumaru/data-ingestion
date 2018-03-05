from sklearn.decomposition import PCA
import numpy as np

X = np.load('/pfs/pivoted_array/pivoted_array.npy')
Xpca = PCA(0.9).fit_transform(X)

np.save("/pfs/out/Xpca.npy")