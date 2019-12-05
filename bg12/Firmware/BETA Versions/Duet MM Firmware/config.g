; Configuration file for Duet WiFi (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2.0.5 on Mon Oct 28 2019 20:36:57 GMT-0400 (Eastern Daylight Time)

; General preferences
G90                                     ; send absolute coordinates...
M83                                     ; ...but relative extruder moves
M550 P"Link Printer"                      ; set printer name

; Network
M551 P"root"                     ; set password
M552 S1                                 ; enable network
M586 P0 S1                              ; enable HTTP
M586 P1 S0                              ; disable FTP
M586 P2 S0                              ; disable Telnet

; Drives
M569 P0 S0                              ; physical drive 0 goes forwards
M569 P1 S1                              ; physical drive 1 goes forwards
M569 P2 S1                              ; physical drive 2 goes forwards
M569 P3 S0                              ; physical drive 3 goes forwards
M569 P5 S0
M569 P6 S1
M569 P7 S1

M584 X0 Y1 Z2 E3:5:6:7                        ; set drive mapping
M350 X16 Y16 Z16 E16:16:16:16 I1                 ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z1600.00 E415.00:138:138:138      ; set steps per mm
M566 X600.00 Y300.00 Z12.00 E120.00:120:120:120     ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00:1200:1200:1200 ; set maximum speeds (mm/min)
M201 X500.00 Y300.00 Z15.00 E250.00:250:250:250     ; set accelerations (mm/s^2)
M906 X1100 Y1400 Z1500 E1000:1000:1000:1000 I30        ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                 ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                        ; set axis minima
M208 X260 Y280 Z400 S0                  ; set axis maxima

; Endstops
M574 X1 Y1 S3                           ; set endstops controlled by motor stall detection
M915 S4 X
M915 S3 Y

; Z-Probe
M574 Z1 S2                              ; set endstops controlled by probe
M558 P1 H5 F120 T6000                   ; set Z probe type to unmodulated and the dive height + speeds
G31 P500 X0 Y20 Z0.8                    ; set Z probe trigger value, offset and trigger height
M557 X50:210 Y80:280 S40                ; define mesh grid

; Heaters
M307 H0 B0 S0.70                        ; disable bang-bang mode for the bed heater and set PWM limit
M305 P0 T100000 B4138 R4700             ; set thermistor + ADC parameters for heater 0
M143 H0 S120                            ; set temperature limit for heater 0 to 120C
M305 P1 T100000 B4138 R4700             ; set thermistor + ADC parameters for heater 1
M143 H1 S280                            ; set temperature limit for heater 1 to 280C

; Fans
M106 P0 S0 I0 F500 H-1                  ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T55               ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P0 D0:1 H1 F0                        ; define tool 0
M563 P1 D0:2 H1 F0                        ; define tool 1
M563 P2 D0:3 H1 F0			  ; define tool 2
M567 P0 E1:1				  ; define mixing ratio for tool 0
M567 P1 E1:1				  ; define mixing ratio for tool 1
M567 P2 E1:1				  ; define mixing ratio for tool 2
G10 P0 X0 Y0 Z0                         ; set tool 0 axis offsets
G10 P0 R0 S0                            ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
T0                                      ; select first tool