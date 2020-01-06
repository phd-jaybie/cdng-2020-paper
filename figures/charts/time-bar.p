
#------- Time ratio - One object ---------------------------------------
#set terminal postscript eps enhanced color "NimbusSan-Reg" 24 #"Times-Roman" 28 
reset

set terminal postscript eps enhanced color ", 22"

set size 1.2,1
set autoscale

#4169E1
#DC143C
#6B8E23
#F4A460
#A9A9A9
#4B0082

# All size comparisons in one chart.

set boxwidth 9

set xlabel "Frame Size" font ",26"
#set grid x y
#set grid mxtics

set xrange [250:550]
set xtics (300,400,500)#
#set xtics
set mxtics

set ylabel "Time (seconds)" font ",26" 

set yrange [0:5]
set ytics(0,1,2,3,4,5)
set grid ytics

#set title "Varying Frame Sizes"

set output 'size-comparison-bar.eps'

set key top left font ",22" maxcols 2

plot 'bar-sizes.txt' every 1:2:0:1:2:6 using ($1+5):($3/1000):($5/1000) with boxerrorbars lw 4 lc rgb "#4169E1" ti "without abstraction",\
	'' every 1:2:0:2:2:6 using ($1-5):($3/1000):($5/1000) with boxerrorbars lw 4 lc rgb "#DC143C" ti "with abstraction",\
	'' every 1:2:0:1:2:6 using ($1+5):(0):($4) with labels font "Helvetica,12" center offset 0,0.5 notitle,\
	'' every 1:2:0:2:2:6 using ($1-5):(0):($4) with labels font "Helvetica,12" center offset 0,0.5 notitle,\
#	'' every 1:2:0:1:2:6 using ($1+5):($3/1000):($6/1000) with yerr lw 5 lc rgb "#DC143C" notitle,\
#	'' every 1:2:0:2:2:6 using ($1-5):($3/1000):($6/1000) with yerr lw 5 lc rgb "#4169E1" notitle

#plot 'data.txt' using 1:3 with boxes lt 1 title columnheader(3), \ 'data.txt' using 1:3:(sprintf("%.0f",$3)) with labels font "Helvetica,8" center offset 0,0.5 notitle