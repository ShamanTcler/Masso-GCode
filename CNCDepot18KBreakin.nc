( Author: Carl Slater )
( Github: https://github.com/ShamanTcler/Masso-GCode )
( License: GPL 2 )
( Refernece: Spindle break in procedure )
( https://www.cncdepot.net/_files/ugd/26185d_352cfffeff57465b9f95e1ed2d731e09.pdf )
( Notes: I could use subprogram calls, but the masso seperate files with numeric )
( filename. It also does not support passing parameters... just to ugly)


(Safe block)
(G20 Units:inches)
(G90 Absolute distance mode)
(G17 work on in the X & Y plane )
(G80 cancel all active canned cycles)
(G40 turn off cutter compensation)
(G49 turn off tool length compensation)
G20 G90 G17 G80 G40 G49 

(Work offset: G54)
G54

MSG Spindle Break In, hit cycle start
(require cycle start to continue)
M01

 (1. Run the spindle to 25% of maximum speed for 1 minute)
 (2. Stop the spindle and allow to sit for 2 minutes)
 (3. Repeat steps 1 and 2, 5 times total)

(Count 1)
(25 percent of 18000 is 4500, turn on spindle)
S4500 M03 
(Dwell 60 seconds)
G04 P60000
(Stop spindle)
M05
(Dwell 120 seconds)
G04 P120000

(Count 2)
S4500 M03 
G04 P60000
M05
G04 P120000

(Count 3)
S4500 M03 
G04 P60000
M05
G04 P120000

(Count 4)
S4500 M03 
G04 P60000
M05
G04 P120000

(Count 5)
S4500 M03 
G04 P60000
M05
G04 P120000

MSG 10% completed


( 4. Run the spindle to 50% of maximum speed for 2 minute)
( 5. Stop the spindle and allow to sit for 2 minutes)
( 6. Repeat steps 4 and 5, 5 times total)


(Count 1)
(50 percent of 18000 is 9000, turn on spindle)
S9000 M03 
(Dwell 120 seconds)
G04 P120000
(Stop spindle)
M05
(Dwell 120 seconds)
G04 P120000

(Count 2)
S9000 M03 
G04 P120000
M05
G04 P120000

(Count 3)
S9000 M03 
G04 P120000
M05
G04 P120000

(Count 4)
S9000 M03 
G04 P120000
M05
G04 P120000

(Count 5)
S9000 M03 
G04 P120000
M05
G04 P120000

MSG 25 perc completed

( 7. Run the spindle to 75% of maximum speed for 1 minute)
( 8. Stop the spindle and allow to sit for 2 minutes)
( 9. Repeat steps 7 and 8, 5 times total)


(Count 1)
(75 percent of 18000 is 13500, turn on spindle)
S13500 M03 
(Dwell 120 seconds)
G04 P120000
(Stop spindle)
M05
(Dwell 120 seconds)
G04 P120000

(Count 2)
S13500 M03 
G04 P120000
M05
G04 P120000

(Count 3)
S13500 M03 
G04 P120000
M05
G04 P120000

(Count 4)
S13500 M03 
G04 P120000
M05
G04 P120000

(Count 5)
S13500 M03 
G04 P120000
M05
G04 P120000

MSG 35 perc completed


( 10. Run the spindle to 50% of maximum speed for 1 minute )
( 11. Stop the spindle and allow to sit for 2 minutes )
( 12. Repeat steps 10 and 11, 3 times total )

(Count 1)
(50 percent of 18000 is 9000, turn on spindle)
S9000 M03 
(Dwell 120 seconds)
G04 P60000
(Stop spindle)
M05
(Dwell 120 seconds)
G04 P120000

(Count 2)
S9000 M03 
G04 P60000
M05
G04 P120000

(Count 3)
S9000 M03 
G04 P60000
M05
G04 P120000

MSG 41 perc completed,next phase long

( 13. Run the spindle to 75% of maximum speed for 30 minutes )
( 14. Stop the spindle and allow to sit for 5 minutes )
( 15. Repeat steps 13 and 14 2 times total )


(Count 1)
(75 percent of 18000 is 13500, turn on spindle)
S13500 M03 
(Dwell 120 seconds)
G04 P1800000
(Stop spindle)
M05
(Dwell 120 seconds)
G04 P300000

(Count 2)
S13500 M03 
G04 P1800000
M05
G04 P300000

MSG 90 perc completed


( 16. Run the spindle to 75% of maximum speed for 5 minutes )
( 17. Stop the spindle and allow to sit for 2 minutes )
( 18. Repeat steps 16 and 17, 2 times total )

(Count 1)
(75 percent of 18000 is 13500, turn on spindle)
S13500 M03 
(Dwell 300 seconds)
G04 P300000
(Stop spindle)
M05
(Dwell 120 seconds)
G04 P120000

(Count 2)
S13500 M03 
G04 P300000
M05
G04 P120000

MSG Spindle break in completed

(end the program)
M30