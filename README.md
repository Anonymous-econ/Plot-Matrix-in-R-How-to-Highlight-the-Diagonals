# Plot-Matrix-in-R-How-to-Highlight-the-Diagonals
This data-related blog is the result of my searches on the mobility matrix with clearly distinct diagonal cells.

As we know, the diagonal cells of a mobility matrix represent immobility.

As far as my searches related to this theme are concerned, I haven’t come across any solution to this problem.

However, there are methods to put different colours in the cells of the matrix based on some logical arguments.

Still, that is insufficient to achieve the unique goal of highlighting only diagonal cells. I will explain why.

I feel it would be helpful to other researchers who are working on similar issues or are interested in plotting square matrices with matched pairs.

The plot.matrix is the package available in R for this purpose. We explore the options through this package to highlight diagonal cells of the matrix.

The solution I am providing here is a bit lengthy and wouldn't be appropriate when we have a large number of matrices to be plotted. I have tried other solutions as well with image() and with for loops. But again, I have not received the desired outcome.



