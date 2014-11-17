# create a matrix

z = linspace(0,1.5,2001)

mu1=0.5
mu2=0.6
sig1=0.1
sig2=0.1

# make first bin
nz1 = exp(-0.5*(mu1-z).*(mu1-z)/(sig1*sig1))

# make second bin
nz2 = exp(-0.5*(mu2-z).*(mu2-z)/(sig2*sig2))

# write to file
writecsv("./uclcl_2_bin_nz.csv",hcat(z,nz1,nz2))
