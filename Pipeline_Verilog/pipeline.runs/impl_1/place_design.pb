
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2310.9182default:default2
0.0002default:default2
2602default:default2
107992default:defaultZ17-722h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 840d4333
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2310.918 ; gain = 0.000 ; free physical = 260 ; free virtual = 108002default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2310.9182default:default2
0.0002default:default2
2602default:default2
108002default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: b483488f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.99 . Memory (MB): peak = 2310.918 ; gain = 0.000 ; free physical = 253 ; free virtual = 107972default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: d05aea25
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2310.918 ; gain = 0.000 ; free physical = 249 ; free virtual = 107942default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: d05aea25
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2310.918 ; gain = 0.000 ; free physical = 249 ; free virtual = 107932default:defaulth px� 
H
3Phase 1 Placer Initialization | Checksum: d05aea25
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2310.918 ; gain = 0.000 ; free physical = 249 ; free virtual = 107942default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
B
-Phase 2.1 Floorplanning | Checksum: d05aea25
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2310.918 ; gain = 0.000 ; free physical = 246 ; free virtual = 107912default:defaulth px� 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px� 
D
/Phase 2 Global Placement | Checksum: 1d154e232
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2313.324 ; gain = 2.406 ; free physical = 218 ; free virtual = 107652default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1d154e232
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2313.324 ; gain = 2.406 ; free physical = 218 ; free virtual = 107652default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 25225749f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2313.324 ; gain = 2.406 ; free physical = 214 ; free virtual = 107612default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 20900679a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2313.324 ; gain = 2.406 ; free physical = 214 ; free virtual = 107612default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 20900679a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2313.324 ; gain = 2.406 ; free physical = 214 ; free virtual = 107612default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
Q
<Phase 3.5 Small Shape Detail Placement | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 205 ; free virtual = 107532default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
G
2Phase 3.6 Re-assign LUT pins | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:16 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 205 ; free virtual = 107532default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
S
>Phase 3.7 Pipeline Register Optimization | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:16 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 205 ; free virtual = 107532default:defaulth px� 
C
.Phase 3 Detail Placement | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:16 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 205 ; free virtual = 107532default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:16 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 205 ; free virtual = 107532default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:16 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 207 ; free virtual = 107542default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: efb127c3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 207 ; free virtual = 107552default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2321.3522default:default2
0.0002default:default2
2072default:default2
107552default:defaultZ17-722h px� 
L
7Phase 4.4 Final Placement Cleanup | Checksum: be221605
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 207 ; free virtual = 107552default:defaulth px� 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: be221605
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 207 ; free virtual = 107552default:defaulth px� 
=
(Ending Placer Task | Checksum: 87c475d8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2321.352 ; gain = 10.434 ; free physical = 226 ; free virtual = 107732default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:01:192default:default2
00:00:182default:default2
2321.3522default:default2
10.4342default:default2
2262default:default2
107732default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2321.3522default:default2
0.0002default:default2
2262default:default2
107732default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2321.3522default:default2
0.0002default:default2
2202default:default2
107712default:defaultZ17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.572default:default2
2321.3522default:default2
0.0002default:default2
2122default:default2
107702default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
|/home/hover/Desktop/Labs/HUST_ComputerOrginazation_CourseDesign/redirect/project_1/project_1.runs/impl_1/TopLayer_placed.dcp2default:defaultZ17-1381h px� 
c
%s4*runtcl2G
3Executing : report_io -file TopLayer_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.10 . Memory (MB): peak = 2321.352 ; gain = 0.000 ; free physical = 204 ; free virtual = 10754
*commonh px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file TopLayer_utilization_placed.rpt -pb TopLayer_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2d
PExecuting : report_control_sets -verbose -file TopLayer_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2321.352 ; gain = 0.000 ; free physical = 209 ; free virtual = 10760
*commonh px� 


End Record