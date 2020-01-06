
#------- Time ratio - One object ---------------------------------------
#set terminal postscript eps enhanced color "NimbusSan-Reg" 24 #"Times-Roman" 28 
set terminal postscript eps enhanced color ", 26"

set size 1.2,1
set autoscale

set key center horiz top font ",25" maxcols 2

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

set xlabel "Number of Concurrent Tasks" font ",26"
set grid x y
set grid mxtics

set xrange [0:21]
set xtics (1, 2, 3, 5,7,9,11,15,20)#(300,400,500)#
#set xtics
set mxtics
set grid mxtics

set yrange [0:5]
set key top center font ",20" maxcols 3 

#set title "Average Overall Frame Processing Time (ms) \n Frame Size: 300x300"
set output 'size-300.eps'

plot 'averages.txt' using ($1):($2/1000):($5/1000) with yerrorbars ps 0 lw 6 pt 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($8/1000):($11/1000) with yerrorbars ps 0 pt 3 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($2/1000) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "w/o abstraction",\
	'' using ($1):($8/1000) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#DC143C" ti "w/ abstraction",\
#	'' using ($1):($14/1000):($17/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($20/1000):($23/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($14/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" ti "w/ (Edge) abstraction",\
#	'' using ($1):($20/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#228B22" ti "w/ (Cloud) abstraction"

set yrange [0:5]

#set title "Average Overall Frame Processing Time (ms) \n Frame Size: 400x400"
set output 'size-400.eps'

plot 'averages.txt' using ($1):($3/1000):($6/1000) with yerrorbars ps 0 lw 6 pt 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($9/1000):($12/1000) with yerrorbars ps 0 pt 3 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($3/1000) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "w/o abstraction",\
	'' using ($1):($9/1000) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#DC143C" ti "w/ abstraction",\
#	'' using ($1):($15/1000):($18/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($21/1000):($24/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($15/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" ti "w/ (Edge) abstraction",\
#	'' using ($1):($21/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#228B22" ti "w/ (Cloud) abstraction"

set yrange [0:12.5]

#set title "Average Overall Frame Processing Time (ms) \n Frame Size: 500x500"
set output 'size-500.eps'

plot 'averages.txt' using ($1):($4/1000):($7/1000) with yerrorbars ps 0 lw 6 pt 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($10/1000):($13/1000) with yerrorbars ps 0 pt 5 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($4/1000) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "w/o abstraction",\
	'' using ($1):($10/1000) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#DC143C" ti "w/ abstraction",\
#	'' using ($1):($16/1000):($19/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($22/1000):($25/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($16/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" ti "w/ (Edge) abstraction",\
#	'' using ($1):($22/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#228B22" ti "w/ (Cloud) abstraction"

#unset key

set xlabel "Frame Size" font ",26"
set grid x y
set grid mxtics

set xrange [250:550]
set xtics (300,400,500)#
#set xtics
set mxtics
set grid mxtics

set yrange [0:5]
set ytics(0,1,2,3,4,5)

#set title "Varying Frame Sizes\n (without abstraction)"

set output 'size-comparison-wo_abstraction.eps'
#
set key below font ",20" maxrows 3

plot 'sizes.txt' using ($1):($2/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#4169E1" ti "3 Apps",\
	'' using ($1):($3/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" t "9 Apps",\
	'' using ($1):($4/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#F4A460" t "15 Apps",\
	'' using ($1):($2/1000):($5/1000) with yerrorbars ps 0 lw 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($3/1000):($6/1000) with yerrorbars ps 0 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($4/1000):($7/1000) with yerrorbars ps 0 lw 6 lc rgb "#F4A460" notitle

#set title "Varying Frame Sizes\n (with abstraction)"
set yrange [0:2]
set ytics(0,1,2)

set output 'size-comparison-w_abstraction.eps'
#
set key below font ",20" maxrows 3

plot 'sizes.txt' using ($1):($8/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#4169E1" ti "3 Apps",\
	'' using ($1):($9/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" t "9 Apps",\
	'' using ($1):($10/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#F4A460" t "15 Apps",\
	'' using ($1):($8/1000):($11/1000) with yerrorbars ps 0 lw 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($9/1000):($12/1000) with yerrorbars ps 0 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($10/1000):($13/1000) with yerrorbars ps 0 lw 6 lc rgb "#F4A460" notitle

#set title "Varying Frame Sizes\n (with abstraction at co-located edge)"
set yrange [1:4]
set ytics(1,2,3,4)

set output 'size-comparison-w_edge_abstraction.eps'
#
set key top outside font ",20" maxrows 3

plot 'sizes.txt' using ($1):($14/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#4169E1" ti "3 Apps",\
	'' using ($1):($15/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" t "9 Apps",\
	'' using ($1):($16/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#F4A460" t "15 Apps",\
	'' using ($1):($14/1000):($17/1000) with yerrorbars ps 0 lw 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($15/1000):($18/1000) with yerrorbars ps 0 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($16/1000):($19/1000) with yerrorbars ps 0 lw 6 lc rgb "#F4A460" notitle

# All size comparisons in one chart.

set xlabel "Frame Size" font ",26"
set grid x y
set grid mxtics

set xrange [250:550]
set xtics (300,400,500)#
#set xtics
set mxtics
set grid mxtics

set yrange [0:5]
set ytics(0,1,2,3,4,5)

#set title "Varying Frame Sizes"

set output 'size-comparison.eps'
#
set key top center font ",20" maxcols 2

plot	'' using ($1):($8/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#DC143C" ti "with, 3 Tasks",\
	'' using ($1):($9/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" t "with, 9 Tasks",\
	'' using ($1):($10/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#DC143C" t "with, 15 Tasks",\
	'' using ($1):($8/1000):($11/1000) with yerrorbars ps 0 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($9/1000):($12/1000) with yerrorbars ps 0 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($10/1000):($13/1000) with yerrorbars ps 0 lw 6 lc rgb "#DC143C" notitle,\
	'' using ($1):($2/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#4169E1" ti "without, 3 Tasks",\
	'' using ($1):($3/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#4169E1" t "without, 9 Tasks",\
	'' using ($1):($4/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#4169E1" t "without, 15 Tasks",\
	'' using ($1):($2/1000):($5/1000) with yerrorbars ps 0 lw 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($3/1000):($6/1000) with yerrorbars ps 0 lw 6 lc rgb "#4169E1" notitle,\
	'' using ($1):($4/1000):($7/1000) with yerrorbars ps 0 lw 6 lc rgb "#4169E1" notitle
#	'' using ($1):($20/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#228B22" ti "with (Cloud), 3 Tasks",\
#	'' using ($1):($21/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#228B22" t "with (Cloud), 9 Tasks",\
#	'' using ($1):($22/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#228B22" t "with (Cloud), 15 Tasks",\
#	'' using ($1):($20/1000):($23/1000) with yerrorbars ps 0 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($21/1000):($24/1000) with yerrorbars ps 0 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($22/1000):($25/1000) with yerrorbars ps 0 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($14/1000) with linespoints ps 2.0 lw 5 pt 3 lc rgb "#F4A460" ti "with (Edge), 3 Tasks",\
#	'' using ($1):($15/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" t "with (Edge), 9 Tasks",\
#	'' using ($1):($16/1000) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#F4A460" t "with (Edge), 15 Tasks",\
#	'' using ($1):($14/1000):($17/1000) with yerrorbars ps 0 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($15/1000):($18/1000) with yerrorbars ps 0 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($16/1000):($19/1000) with yerrorbars ps 0 lw 6 lc rgb "#F4A460" notitle,\



