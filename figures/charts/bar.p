
#------- Time ratio - One object ---------------------------------------
#set terminal postscript eps enhanced color "NimbusSan-Reg" 24 #"Times-Roman" 28 
set terminal postscript eps enhanced color ", 22"

set size 1.2,1
set autoscale

set ylabel offset 0.5,0
set xlabel offset 0,-1

#set style fill solid border
#binwidth=0
#set boxwidth binwidth
#bin(x,width)=width*floor(x/width) + binwidth/2.0

set boxwidth 0.45
set style fill solid border -1

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

set ylabel "Time (milliseconds)" font ",26" 

set xlabel "Process" font ",26"
set grid y

set xrange [-0.5:5.5]

set yrange [0:250]
set xtics ("SIFT" 0.5, "ORB" 2.5, "TF-OD" 4.5)

set y2range [0:50]
set y2tics 
set y2label "Number of feature matches" font ",26" 

# set ytics 0.005
  
set output 'task-comparison.eps'

set key top right font ",15"

plot 'task-comparison.txt' every 1::0:1:0:3 using ($1):($2) axes x1y1 with boxes fs pattern 3 lc rgb "#F4A460" ti "Average processing time",\
	'' every 1::1:1:1:3 using ($1):($2) axes x1y2 with boxes fs pattern 3 lc rgb "#DC143C" ti "Average number of matches",\
	'' every 1::0:1:0:3 using ($1):($2):($2) axes x1y1 with labels font "Helvetica,12" center offset 2.5,-0.5 notitle,\
	'' every 1::1:1:1:2 using ($1):($2):($2) axes x1y2 with labels font "Helvetica,12" center offset 2.5,-0.5 notitle,\
#'bar-cloud-edge.txt' using ($1):($2/1000) with boxes fs pattern 2 lc rgb "#4169E1" ti "Detection"

