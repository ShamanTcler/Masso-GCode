( Author: Carl Slater)
( Github: https://github.com/ShamanTcler/Masso-GCode )
( License: GPL 2 )
( Date: 1-8-2024)
( Reference: Spindle warm up in procedure )
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

(MSG Spindle Warm Up, hit cycle start)
(require cycle start to continue)
(M01)
(G04 S5)


( 1. Run the spindle to 25% max speed for 3 minutes)
( 2. Stop the spindle for 1 min )
(25 percent of 18000 is 4500, turn on spindle)
S4500 M03 
(Dwell 60 seconds)
G04 X180
( Stop spindle)
M05
(Dwell 120 seconds)
G04 X120

(MSG 28% complete)


( 3. Run the spindle to 50% max speed for 4 minutes)
( 4. Stop the spindle for 1 min)
(50 percent of 18000 is 9000, turn on spindle)
S9000 M03 
(Dwell 240 seconds)
G04 X240
(Stop spindle)
M05
(Dwell 60 seconds)
G04 X60

(MSG 64% complete)

( 5. Run the spindle to 75% max speed for 4 minutes )
( 6. Stop the spindle for 1 min)
(75 percent of 18000 is 13500, turn on spindle)
S13500 M03 
(Dwell 240 seconds)
G04 240
(Stop spindle)
M05
(Dwell 60 seconds)
G04 60

(end the program)
M30