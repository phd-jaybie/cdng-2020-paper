
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

set ylabel "Normalized value of hits" font ",26" 

set xlabel "Number of Concurrent Apps" font ",26"
set grid x y
set grid mxtics

set xrange [0:12]
set xtics (1, 2, 3, 5,7,9,11)#,15,20)#(300,400,500)#
#set xtics
set mxtics
set grid mxtics

set yrange [0:1]
set key top center font ",22" maxcols 3

#set title ""
#set output 'utilization.eps'

#plot 'utilization.txt' using ($1):($2) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "Detection Hit, w/o abstraction",\
#	'' using ($1):($4) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#F4A460" ti "Detection Hit, w/ abstraction",\
#	'' using ($1):($5) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" ti "Secret Hit, w/ abstraction",\

#set xrange [0:1]
#set output 'utilization-vs-secrecy.eps'

#plot 'utilization.txt' using ($2):($4) with linespoints ps 2.0 lw 5 pt 6 lc rgb "#4169E1" ti "Detection Hit",\
#	'' using ($2):($5) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#F4A460" ti "Secrecy Hit"

set xlabel "Normalized value of hits" font ",26"

set xrange [0:1]
set xtics (0.1, 0.3, 0.5, 0.7,0.9)#,15,20)#(300,400,500)#
#set xtics
set mxtics
set grid mxtics

set ylabel "CDF" font ",26" 
set yrange [0:1]
set ytics nomirror  0,.2
set key top center font ",20" maxcols 3

set output 'utilization-cdf-new.eps'

#plot 'utilization-cdf.txt' using ($1):($2) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#4169E1" ti "Detection Hit, w/o abstraction",\
#	'' using ($3):($4) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#F4A460" ti "Detection Hit, w/ abstraction",\
#	'' using ($5):($6) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" ti "Secret Hit, w/ abstraction"#,\
#	'sample.txt' using 1:(1.) lc rgb "#6B8E23" smooth cumulative ti "smooth cumulative"

plot 'case3-wo.txt' using 1:(1.) lw 5 lc rgb "#4169E1" smooth cnorm ti "Utilization, w/o abstraction",\
	'case1-w.txt' using 1:(1.) lw 5 lc rgb "#F4A460" smooth cnorm ti "Utilization, w/ abstraction",\
	'case1-w.txt' using 2:(2.) lw 5 lc rgb "#DC143C" smooth cnorm ti "Secrecy, w/ abstraction",\
	'case1-w.txt' using 3:(3.) lw 5 lc rgb "#6B8E23" smooth cnorm ti "Latent Privacy, w/ abstraction"


set xlabel "Normalized value of hits" font ",26"

set xrange [0:1.0]
#set xtics 0,0.1
set mxtics
set grid mxtics

set ylabel "CDF" font ",26" 
set yrange [0:1]
#set ytics nomirror  0,0.1
set key left font ",23"

set output 'utilization-cdf.eps'

plot 'utilization-cdf.txt' using ($1):($2) with linespoints ps 2.0 pt 6 lw 5 lc rgb "#4169E1" ti "Target Detection Hits, w/o abstraction",\
	'' using ($3):($4) with linespoints ps 2.0 pt 3 lw 5 lc rgb "#F4A460" ti "Target Detection Hits, w/ abstraction",\
	'' using ($5):($6) with linespoints ps 2.0 pt 4 lw 5 lc rgb "#DC143C" ti "Secret and Latent Blocked Hits, w/ abstraction"
#	'sample.txt' using 1:(1.) lc rgb "#6B8E23" smooth cumulative ti "smooth cumulative"

#plot 'case3-wo.txt' using 1:(1.) lw 5 lc rgb "#4169E1" smooth cnorm ti "Utilization, w/o abstraction",\
#	'case1-w.txt' using 1:(1.) lw 5 lc rgb "#F4A460" smooth cnorm ti "Utilization, w/ abstraction",\
#	'case1-w.txt' using 2:(2.) lw 5 lc rgb "#DC143C" smooth cnorm ti "Secrecy, w/ abstraction",\
#	'case1-w.txt' using 3:(3.) lw 5 lc rgb "#6B8E23" smooth cnorm ti "Latent Privacy, w/ abstraction"

