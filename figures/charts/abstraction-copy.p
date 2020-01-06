
#------- Time ratio - One object ---------------------------------------
#set terminal postscript eps enhanced color "NimbusSan-Reg" 24 #"Times-Roman" 28 
set terminal postscript eps enhanced color ", 26"

set size 1.2,1
set autoscale

set key center horiz out font ",25" maxcols 2

unset log
unset label
unset title

set ylabel offset 0.5,0

set style fill solid border
binwidth=0.25
set boxwidth binwidth
bin(x,width)=width*floor(x/width) + binwidth/2.0

set linestyle 1 lt 1 lw 1 lc rgb "#4169E1
set linestyle 2 lt 2 lw 1 lc rgb "sandybrown"
set linestyle 3 lt 3 lw 1 lc rgb "black"
set linestyle 4 lt 6 lw 1 lc rgb "red"
set linestyle 5 lt 7 lw 1 lc rgb "#A9A9A9"
set linestyle 6 lt 4 lw 1 lc rgb "#4B0082"
set linestyle 7 lt 5 lw 1 lc rgb "#6B8E23"
set linestyle 8 lt 9 lw 1 lc rgb "#4169E1"

#4169E1
#DC143C
#6B8E23
#F4A460
#A9A9A9
#4B0082

set ylabel "Time (seconds)" font ",26" 

set xlabel "Number of Concurrent Apps" font ",26"
set grid x y
set grid mxtics

set xrange [0:21]
set xtics (1, 2, 3, 5,7,9,11,15,20)#(300,400,500)#
#set xtics
set mxtics
set grid mxtics

set yrange [0:5]
set key top center font ",22" maxcols 2

#set title "Average Overall Frame Processing Time (ms) \n Frame Size: 300x300"
set output 'size-300.eps'

plot 'averages.txt' using ($1):($2/1000):($5/1000) with yerrorbars ps 0 lw 6 pt 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($8/1000):($11/1000) with yerrorbars ps 0 pt 3 lw 6 lc rgb "#F4A460" notitle,\
	'' using ($1):($2/1000) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "w/o abstraction",\
	'' using ($1):($8/1000) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#F4A460" ti "w/ abstraction" #,\
#	'' using ($1):($14/1000):($17/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($20/1000):($23/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($14/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" ti "w/ (Edge) abstraction",\
#	'' using ($1):($20/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#228B22" ti "w/ (Cloud) abstraction"
	


