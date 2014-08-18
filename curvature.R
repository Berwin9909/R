r<-6378000*3.2088
range=50*6076
x<-seq(0,range,range/20)
d<-r-sqrt(r^2+x^2)
plot(x/6076,d,"l")
