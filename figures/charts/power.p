
#------- Time ratio - One object ---------------------------------------
#set terminal postscript eps enhanced color "NimbusSan-Reg" 24 #"Times-Roman" 28 
set terminal postscript eps enhanced color ", 26"

set size 1.2,1
set autoscale

#set key center horiz top font ",25" maxcols 2

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

set ylabel "Energy Consumption (W-Hrs)" font ",26"

set xlabel "Number of Concurrent Tasks" font ",26"
set grid x y
set grid mxtics

set xrange [0:12]
set xtics (1, 2, 3, 5,7,9,11)#15)#(300,400,500)#
#set xtics
set mxtics
set grid mxtics

set yrange [15.3:16.7]
set ytics 0,.2
set key right font ",18" maxcols 3

#set title "Average Energy Consumption"
set output 'energy.eps'

plot 'energy-7-May-2018.txt' using ($1):($4):($5/2) with yerrorbars ps 0 lw 6 pt 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($6):($7/2) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($4) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#DC143C" ti "with abstraction",\
	'' using ($1):($6) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#4169E1" ti "without abstraction",\
	#'' using ($1):($2):($3/2) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#F4A460" notitle,\
	#'' using ($1):($2) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" ti "camera preview"