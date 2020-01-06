#------- Time ratio - One object ---------------------------------------
reset

#set terminal postscript eps enhanced color "NimbusSan-Reg" 24 #"Times-Roman" 28 
set terminal postscript eps enhanced color ", 26"

set size 1.2,1
#set autoscale

#set key center horiz out font ",25" maxcols 2

unset log
unset label
unset title

set ylabel offset 0.5,0

#set style fill solid border
#binwidth=0.25
#set boxwidth binwidth
#bin(x,width)=width*floor(x/width) + binwidth/2.0

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

set ylabel "Instantaneous Power (mW)" font ",26"

#set xlabel "Time (seconds)" font ",26"
set grid x y
#set grid mxtics

set xlabel " "
set xrange [0:350]
#set xtics (1, 2, 3, 5,7,9,11,15,20)#(300,400,500)#
#set xtics 0,20
#set mxtics
#set grid mxtics

set yrange [600:1000]
set ytics 0,200
set key top right font ",22"

#set title "Average Overall Frame Processing Time (ms) \n Frame Size: 300x300"
set output '6_raw_data.eps'

#set multiplot layout 2, 1

#set size 2,0.5
#set origin 0,0.45
#set arrow from 2,695 to 12, 695 lw 4
#set arrow from 82,695 to 72, 695 lw 4
#set label "without abstraction" at 15,730 font ",15" 

#set arrow from 112,755 to 122, 755 lw 4
#set arrow from 168,755 to 158, 755 lw 4
#set label "with abstraction" at 120,730 font ",15" 

#set arrow from 199,795 to 209,795 lw 4
#set arrow from 276,795 to 266, 795 lw 4
#set label "camera preview" at 215,770 font ",15" 

#plot '6_raw_data.txt' using ($1):($3) every 500 with lines lw 3 lc rgb "#4169E1" ti "Trace 1"

set xlabel "Time (seconds)" font ",26"
set grid x y
#set grid mxtics

set xrange [0:350]
#set xtics (1, 2, 3, 5,7,9,11,15,20)#(300,400,500)#
#set xtics 0,20
#set mxtics
#set grid mxtics

#unset arrow
#unset label
#set size 2,0.5
#set origin 0,0

set arrow from 200,760 to 210, 760 lw 6 
set arrow from 260,760 to 250, 760 lw 6 
set label "without \nabstraction" at 212,730 font ",15" 

set arrow from 110,795 to 120,795 lw 6
set arrow from 160,795 to 150, 795 lw 6
set label "with \nabstraction" at 118,760 font ",15" 

set arrow from 12,695 to 22,695 lw 6
set arrow from 78,695 to 68,695 lw 6
set label "camera \npreview" at 35,700 font ",15" 


plot '6_raw_data_2.txt' using ($1):($3) every 500 with lines lw 3 lc rgb "#DC143C" notitle

#	'' using ($1):($8/1000):($11/1000) with yerrorbars ps 0 pt 3 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($2/1000) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "w/o abstraction",\
#	'' using ($1):($8/1000) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#F4A460" ti "w/ abstraction" #,\
#	'' using ($1):($14/1000):($17/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#F4A460" notitle,\
#	'' using ($1):($20/1000):($23/1000) with yerrorbars ps 0 pt 4 lw 6 lc rgb "#228B22" notitle,\
#	'' using ($1):($14/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#F4A460" ti "w/ (Edge) abstraction",\
#	'' using ($1):($20/1000) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#228B22" ti "w/ (Cloud) abstraction"

