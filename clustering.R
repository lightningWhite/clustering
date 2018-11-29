

# Agglomerative Hierarchical Clustering
library(datasets)
myData = state.x77


# Exclude Area from the data
data_scaled = scale(myData[, -8])

summary(data_scaled)

# Compute a distance matrix of the data
distance = dist(as.matrix(data_scaled), method = "euclidean")

# Perform the clustering
hc = hclust(distance)

plot(hc)

################################################

# # K-Means Clustering
# library(datasets)
# myData = state.x77
# 
# data_scaled = scale(myData)
# 
# # Table to plot the total within-cluster sum of squares error for each k-value.
# table = NULL
# 
# for (k in 1:25) {
# 
# # Cluster into k clusters
# #k = 3
#   myClusters = kmeans(data_scaled, k)
# 
#   # Summary of the clusters
#   summary(myClusters)
# 
#   # Centers (mean values) of the clusters
#   myClusters$centers
# 
#   # Cluster assignments
#   myClusters$cluster 
# 
#   # Within-cluster sum of squares and total sum of squares across clusters
#   myClusters$withinss
#   table[k] = myClusters$tot.withinss
# }
# 
# plot(table)
# 
# # k = 5 since it is the elbow point of the data
# myClusters = kmeans(data_scaled, 5)
# 
# # Summary of the clusters
# summary(myClusters)
# 
# # Centers (mean values) of the clusters
# myClusters$centers
# 
# # Cluster assignments
# myClusters$cluster 
# 
# # Within-cluster sum of squares and total sum of squares across clusters
# myClusters$withinss
# myClusters$tot.withinss
# 
# library(cluster)
# clusplot(data_scaled, myClusters$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)








