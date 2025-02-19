;; 1. Based on: 3014
;; 2. Description: 25Rt+M,  M1 h+ICU+d, M2 h+B, M3 h+d+I, M4 h+I+d, M5 h+d+I, M6 h+d, M7 h nach Weihnachten, MT8 d+I+h, MT9 d
;; x1. Author: dings
;; 3. Label:

$SIZES NO=5000 PD=-1000 LVR=50
$PROBLEM COVID-19 cases

$INPUT ID TIME TIME2 DROP DV LNDV LNDVCR OBS CMT AMT EVID MDV STATE=DROP NUMBER CASE0 ICUDATASET DIVIFLAG SCHOOLS STORECLOSURE CURFEW RESTRAININGORDER CARNIVAL FLAGZEROOBS FLAGRKI FLAGMP DOSING2 MAXIMUMICU FLAG20200714 MDV20200714 FLAG20200804 RKIDEATHS MPCASES MPCASESRECOVRKIDEATH fixR0_0 fixR0_1 fixR0_2 fixR0_3 fixR0_4 fixR0_5 fixR0_6 fixR0_7 fixR0_8 fixR0_9 fixR0_10 fixR0_11 fixR0_12 fixR0_13 fixR0_14 fixR0_15 fixR0_16 fixR0_17 fixR0_18 fixR0_19 fixR0_20 fixR0_21 fixR0_22 fixR0_23 fixR0_24 fixR0_25 fixCP_4 fixCP_5 fixCP_6 fixCP_7 fixCP_8 fixCP_9 fixCP_10 fixCP_11 fixCP_12 fixCP_13 fixCP_14 fixCP_15 fixCP_16 fixCP_17 fixCP_18 fixCP_19 fixCP_20 fixCP_21 fixCP_22 fixCP_23 fixCP_24 fixCP_25 fixF2 fixIIV1 fixIIV2 fixIIV3 fixIIV4 fixIIV5 fixIIV6 fixIIV7 fixIIV8 fixIIV9 fixIIV10 fixIIV11 fixIIV12 fixIIV13 fixIIV14 fixIIV15 fixIIV16 fixIIV17 fixIIV18 fixIIV19 fixIIV20 fixIIV21 fixIIV22 fixIIV23 fixIIV24 fixIIV25 fixIIV26 fixIIV27 fixIIV28 fixIIV29 PREDIC MDVLAST
$DATA ..\DATASET\COVID_ds_153_runC3001_run3014.csv IGNORE=@ IGNORE(DOSING2.EQ.1) IGNORE(CMT.EQ.8) IGNORE(CMT.EQ.9) IGNORE(CMT.EQ.12) IGNORE(DIVIFLAG.EQ.2) IGNORE(FLAGZEROOBS.EQ.1) IGNORE(ID.EQ.17) IGNORE(FLAGRKI.EQ.1) IGNORE(PREDIC.EQ.1)

$SUBROUTINES ADVAN13 TOL=6
$MODEL NCOMPS=28

$PK
;;;;Metakis-Information;;;;;
P_KH = 0.81;Anteil Normalstation vs ICU und BEAT
P_ICU = 0.309 ;Anteil ICU vs BEAT
LD_BEAT_D = 14.3  ;Liegedauer Beatmet verstorben
LD_BEAT_L = 31 ;Liegedauer Beatmet entlassen
LD_ICU_D = 20.6 ;Liegedauer ICU verstorben
LD_ICU_L = 19.2 ;Liegedauer ICU entlassen
LD_KH_D = 9.8 ;Liegedauer KH verstorben
LD_KH_L = 11.1 ;Liegedauer KH entlassen
P_BEAT_D = 0.643;Sterberate Beatmet
P_ICU_D = 0.179 ;Sterberate ICU
P_KH_D = 0.158 ;Sterberate KH
P_BEAT_AUFENTHALT_D = 0.73;Beatmung Anteil Aufenthalt verstorben
P_BEAT_AUFENTHALT_L = 0.35;Beatmung Anteil Aufenthalt entlassen
P_BEAT_on_ICU_AUFENTHALT_D = 0.74;beatmet ICU Anteil Aufenthalt verstorben
P_BEAT_on_ICU_AUFENTHALT_L =  0.5;beatmet ICU Anteil Aufenthalt entlassen
P_ICU_AUFENTHALT_D = 0.42;unbeatmet ICU Anteil Aufenthalt verstorben
P_ICU_AUFENTHALT_L = 0.3;unbeatmet ICU Anteil Aufenthalt entlassen

R0START = fixR0_0

COV1 = SCHOOLS
E1 = fixR0_1
COV2 = CARNIVAL
E2 = fixR0_2
COV3 = MAX(CURFEW,RESTRAININGORDER)
E3 = fixR0_3
MTDIFF = 1
MTIME(1) = fixCP_4
COV4 = MPAST(1)
E4 = fixR0_4
MTIME(2) = fixCP_5
COV5 = MPAST(2)
E5 = fixR0_5
MTIME(3) = fixCP_6
COV6 = MPAST(3)
E6 = fixR0_6
MTIME(4) = fixCP_7
COV7 = MPAST(4)
E7 = fixR0_7
MTIME(7) = fixCP_8
COV8 = MPAST(7)
E8 = fixR0_8
MTIME(8) = fixCP_9
COV9 = MPAST(8)
E9 = fixR0_9
MTIME(9) = fixCP_10
COV10 = MPAST(9)
E10 = fixR0_10
MTIME(11) = fixCP_11
COV11 = MPAST(11)
E11 =fixR0_11
MTIME(12) = fixCP_12
COV12 = MPAST(12)
E12 = fixR0_12
MTIME(13) = fixCP_13
COV13 = MPAST(13)
E13 = fixR0_13
MTIME(15) = fixCP_14
COV14 = MPAST(15)
E14 = fixR0_14
MTIME(16) = fixCP_15
COV15 = MPAST(16)
E15= fixR0_15
MTIME(17) = fixCP_16
COV16= MPAST(17)
E16= fixR0_16
MTIME(19) = fixCP_17
COV17= MPAST(19)
E17= fixR0_17
MTIME(21) = fixCP_18
COV18= MPAST(21)
E18= fixR0_18
MTIME(22) = fixCP_19
COV19 = MPAST(22)
E19 = fixR0_19
MTIME(24) = fixCP_20
COV20 = MPAST(24)
E20 = fixR0_20
MTIME(25) = fixCP_21
COV21 = MPAST(25)
E21 = fixR0_21
MTIME(26) = fixCP_22
COV22 = MPAST(26)
E22 = fixR0_22
MTIME(28) = fixCP_23
COV23 = MPAST(28)
E23 = fixR0_23
MTIME(29) = fixCP_24
COV24 = MPAST(29)
E24 = fixR0_24
MTIME(31) = fixCP_25
COV25 = MPAST(31)
E25 = fixR0_25

R0FREE_OLD = R0START*(1-COV1)+E2*COV2+E1*(COV1-COV3)+E3*(COV3-COV4)+E4*(COV4-COV5)+E5*(COV5-COV6)+E6*(COV6-COV7)+E7*(COV7-COV8)+E8*(COV8-COV9)+E9*(COV9-COV10)+E10*(COV10-COV11)+E11*(COV11-COV12)+E12*(COV12-COV13)+E13*(COV13-COV14)+E14*(COV14-COV15)+E15*(COV15-COV16)+E16*(COV16-COV17)+E17*(COV17-COV18)+E18*(COV18-COV19)+E19*(COV19-COV20)+E20*(COV20-COV21)+E21*(COV21-COV22)+E22*(COV22-COV23)+E23*(COV23-COV24)+E24*(COV24-COV25)+E25*COV25
R0BASE = R0START
R0END = E24
R0_0 = R0START ;Startwert
R0_1 = E1 ;Startwert
R0_2 = E2 ;nach Schulschließung
R0_3 = E3 ;nach Kontaktverbot
R0_4 = E4 ;
CP_4 = MTIME(1)
R0_5 = E5 ;
CP_5 = MTIME(2)
R0_6 = E6 ;
CP_6 = MTIME(3)
R0_7 = E7 ;
CP_7 = MTIME(4)
R0_8 = E8 ;
CP_8 = MTIME(7)
R0_9 = E9 ;
CP_9 = MTIME(8)
R0_10 = E10 ;
CP_10 = MTIME(9)
R0_11 = E11 ;
CP_11 = MTIME(11)
R0_12 = E12 ;
CP_12 = MTIME(12)
R0_13 = E13 ;
CP_13 = MTIME(13)
R0_14 = E14 ;
CP_14 = MTIME(15)
R0_15 = E15 ;
CP_15 = MTIME(16)
R0_16 = E16 ;
CP_16 = MTIME(17)
R0_17 = E17 ;
CP_17 = MTIME(19)
R0_18 = E18 ;
CP_18 = MTIME(21)
R0_19 = E19 ;
CP_19 = MTIME(22)
R0_20 = E20 ;
CP_20 = MTIME(24)
R0_21 = E21 ;
CP_21 = MTIME(25)
R0_22 = E22 ;
CP_22 = MTIME(26)
R0_23 = E23 ;
CP_23 = MTIME(28)
R0_24 = E24 ;
CP_24 = MTIME(29)
R0_25 = E25 ;
CP_25 = MTIME(31)

F2 = fixF2
ALAG2 = 9

isolation = 100
infectious = 7

gamma = 1/(infectious)

IIV1 = fixIIV1
IIV2 = fixIIV2
IIV3 = fixIIV3
IIV4 = fixIIV4
IIV5 = fixIIV5
IIV6 = fixIIV6
IIV7 = fixIIV7
IIV8 = fixIIV8
IIV9 = fixIIV9
IIV10 = fixIIV10
IIV11 = fixIIV11
IIV12 = fixIIV12
IIV13 = fixIIV13
IIV14 = fixIIV14
IIV15 = fixIIV15
IIV16 = fixIIV16
IIV17 = fixIIV17
IIV18 = fixIIV18
IIV19 = fixIIV19
IIV20 = fixIIV20
IIV21 = fixIIV21
IIV22 = fixIIV22
IIV23 = fixIIV23
IIV24 = fixIIV24
IIV25 = fixIIV25
IIV26 = fixIIV26
IIV27 = fixIIV27
IIV28 = fixIIV28
IIV29 = fixIIV29

; FRACTION HOSPITALIZED
MTIME(6) = THETA(7)
FKH = THETA(8)*EXP((IIV10))
FD = THETA(6)*EXP(IIV6)

MTIME(10) = THETA(7)+THETA(9)
FKH2 = THETA(10)*EXP((IIV11))
FICU = EXP(LOG(THETA(14)/(1-THETA(14)))+IIV14)/(1+EXP(LOG(THETA(14)/(1-THETA(14)))+IIV14)) 
FICU2 = EXP(LOG(THETA(15)/(1-THETA(15)))+IIV15)/(1+EXP(LOG(THETA(15)/(1-THETA(15)))+IIV15)) 

MTIME(14) = THETA(7)+THETA(9)+THETA(11)
FKH3 = THETA(12)*EXP((IIV12))
FD2 = THETA(13)*EXP(IIV13)

MTIME(18) = MTIME(14)+THETA(17)
FKH4 = THETA(18)*EXP(IIV16)
FD3 = THETA(19)*EXP(IIV17)
FICU3 = EXP(LOG(THETA(20)/(1-THETA(20)))+IIV18)/(1+EXP(LOG(THETA(20)/(1-THETA(20)))+IIV18)) 

MTIME(20) = MTIME(18)+THETA(21)
FKH5 = THETA(22)*EXP(IIV20)
FD4 = THETA(23)*EXP(IIV21)
FICU4 = EXP(LOG(THETA(24)/(1-THETA(24)))+IIV22)/(1+EXP(LOG(THETA(24)/(1-THETA(24)))+IIV22)) 

MTIME(23) = THETA(25)
FKH6 = THETA(26)*EXP(IIV23)
FD5 = THETA(27)*EXP(IIV24)

MTIME(27) = THETA(25)+THETA(28)
FKH7 = THETA(29)*EXP(IIV25)

MTIME(30) = MTIME(27)+THETA(30)
FD6 = THETA(31)*EXP(IIV26)
FICU5 = EXP(LOG(THETA(32)/(1-THETA(32)))+IIV27)/(1+EXP(LOG(THETA(32)/(1-THETA(32)))+IIV27)) 
FKH8 = THETA(33)*EXP(IIV28)

MTIME(32) = MTIME(30)+THETA(34)
FD7 = THETA(35)*EXP(IIV29)

hosptrans = THETA(1)*EXP((IIV1))
hosp = THETA(2)*EXP((IIV2))*(1-MPAST(6))+FKH*(MPAST(6)-MPAST(10))+FKH2*(MPAST(10)-MPAST(14))+FKH3*(MPAST(14)-MPAST(18))+FKH4*(MPAST(18)-MPAST(20))+FKH5*(MPAST(20)-MPAST(23))+FKH6*(MPAST(23)-MPAST(27))+FKH7*(MPAST(27)-MPAST(30))+FKH8*MPAST(30)
isolated = (1-hosp)*isolation
hospitalized = hosp*isolation

; FRACTION TO STANDARD CARE
FRACTHOSP = P_KH*EXP((IIV3))*(1-MPAST(6))+FICU*(MPAST(6)-MPAST(14))+FICU2*(MPAST(14)-MPAST(18))+FICU3*(MPAST(18)-MPAST(20))+FICU4*(MPAST(20)-MPAST(30))+FICU5*MPAST(30)
toKH =  hosptrans*FRACTHOSP

; FRACTION ICU (non ventilated)
FRACTICU = P_ICU*EXP(IIV4)*(1-MPAST(10))+THETA(16)*EXP(IIV19)*MPAST(10)
IF(FRACTICU.GT.1) FRACTICU = 1
toICU = hosptrans*(1-FRACTHOSP)*FRACTICU

toBEAT = hosptrans*(1-FRACTHOSP)*(1-FRACTICU)

KHd = P_KH_D*EXP(IIV5)*FD**MPAST(6)*(FD2**MPAST(14))*(FD3**MPAST(18))*(FD4**MPAST(20))*(FD5**MPAST(23))*(FD6**MPAST(30))*(FD7**MPAST(32))
ICUd =  P_ICU_D*EXP(IIV5)*FD**MPAST(6)*(FD2**MPAST(14))*(FD3**MPAST(18))*(FD4**MPAST(20))*(FD5**MPAST(23))*(FD6**MPAST(30))*(FD7**MPAST(32))
BEATd = P_BEAT_D*EXP(IIV5)*FD**MPAST(6)*(FD2**MPAST(14))*(FD3**MPAST(18))*(FD4**MPAST(20))*(FD5**MPAST(23))*(FD6**MPAST(30))*(FD7**MPAST(32))
death = 0.0119*EXP(IIV5)*FD**MPAST(6)*(FD2**MPAST(14))*(FD3**MPAST(18))*(FD4**MPAST(20))*(FD5**MPAST(23))*(FD6**MPAST(30))*(FD7**MPAST(32))
IF(KHd.GT.1) KHd=1
IF(ICUd.GT.1) ICUd=1
IF(BEATd.GT.1) BEATd=1
IF(death.GT.1) death=1
IF(KHd.LT.0) KHd=0
IF(ICUd.LT.0) ICUd=0
IF(BEATd.LT.0) BEATd=0
IF(death.LT.0) death=0

LDdeathKH = LD_KH_D*IIV7
LDdeathICU = LD_ICU_D*IIV8
LDdeathBEAT = LD_BEAT_D*IIV9
LDrecoveryKH = LD_KH_L*IIV7
LDrecoveryICU = LD_ICU_L*IIV8
LDrecoveryBEAT = LD_BEAT_L*IIV9
deathKH = 2/(LD_KH_D*IIV7)
deathICU = 2/(LD_ICU_D*IIV8)
deathBEAT = 2/(LD_BEAT_D*IIV9)
recovery_rateKH = 2/(LD_KH_L*IIV7)
recovery_rateICU = 2/(LD_ICU_L*IIV8)
recovery_rateBEAT = 2/(LD_BEAT_L*IIV9)

MTIME(5) = THETA(3)
REC_TIME = MPAST(5)
recovery = THETA(4)
recovery_rate = 2/recovery
recovery_hosp = THETA(5)
recovery_ratehosp = 2/recovery_hosp
death_rate = 2/(LD_KH_D*IIV7)

KHl = 1-KHd
ICUl = 1-ICUd
BEATl = 1-BEATd

Q_0 = 0

A_0(1) = NUMBER

Starttag = 347
k=0.072
initMutante=0.002

$DES
DaysSinceMutante = T-Starttag
IF(T.LT.Starttag) DaysSinceMutante = 0
Mutante = 1/(1+((1-initMutante)/initMutante)*EXP(-k*DaysSinceMutante))
IF(T.LT.Starttag) Mutante = 0
R0FREE = R0FREE_OLD*(1-Mutante)+R0FREE_OLD*1.35*Mutante
beta = R0FREE*gamma
DADT(1) = -beta*A(1)/NUMBER*A(2) 
DADT(2) = beta*A(1)/NUMBER*A(2) -  gamma*A(2) 
DADT(3) = gamma*A(2) - isolated*A(3) - hospitalized*A(3)
DADT(4) = (1-death)*isolated*A(3) - recovery_rate*A(4) 	            ;R1 
DADT(5) = KHl*toKH*A(26) - recovery_rateKH*A(5) 						;KH L 1
DADT(6) = recovery_rateKH*A(5) - recovery_rateKH*A(6)				;KH L 2
DADT(7) = KHd*toKH*A(26)- deathKH*A(7) 								;KH D 1
DADT(8) = deathKH*A(7) - deathKH*A(8) 								;KH D 1
DADT(9) = ICUl*toICU*A(26) - recovery_rateICU*A(9) 					;ICU L 1
DADT(10) = recovery_rateICU*A(9) - recovery_rateICU*A(10) 			;ICU L 2
DADT(11) = ICUd*toICU*A(26)- deathICU*A(11) 						;ICU D 1
DADT(12) = deathICU*A(11)- deathICU*A(12) 							;ICU D 2
DADT(13) = BEATl*toBEAT*A(26) - recovery_rateBEAT*A(13) 				;BEAT L 1
DADT(14) = recovery_rateBEAT*A(13) - recovery_rateBEAT*A(14) 		;BEAT L 2
DADT(15) = BEATd*toBEAT*A(26) - deathBEAT*A(15) 						;BEAT D 1
DADT(16) = deathBEAT*A(15)- deathBEAT*A(16) 						;BEAT D 2
DADT(17) = recovery_rate*A(20) +  recovery_ratehosp*A(24)           ;RECOVERED
DADT(18) = death_rate*A(28) +deathKH*A(8) + deathICU*A(12) + deathBEAT*A(16);DEAD
DADT(19) = gamma*A(2)                       ;total cases
DADT(20) = recovery_rate*A(4) - recovery_rate*A(20)   ;R2
DADT(21) = (toICU + toBEAT + toKH)*A(26)             ;KH kumulativ
DADT(22) = (toICU + toBEAT)*A(26)                    ;ICU kumulativ
DADT(23) = recovery_rateKH*A(6) + recovery_rateICU*A(10) + recovery_rateBEAT*A(14) - recovery_ratehosp*A(23) ;RKH1
DADT(24) = recovery_ratehosp*A(23) - recovery_ratehosp*A(24) ;RKH2
DADT(25) = hospitalized*A(3) - hosptrans*A(25);DEAD KH
DADT(26) = hosptrans*A(25) - hosptrans*A(26)
DADT(27) = death*isolated*A(3) - death_rate*A(27)
DADT(28) =  death_rate*A(27) -  death_rate*A(28)

$ERROR
CASES = A(19)+Q_0
BEATMET = P_BEAT_AUFENTHALT_L*(A(13)+A(14))+P_BEAT_AUFENTHALT_D*(A(15)+A(16))
BEATMET_ICU = P_BEAT_on_ICU_AUFENTHALT_L*(A(13)+A(14))+P_BEAT_on_ICU_AUFENTHALT_D*(A(15)+A(16))
ICUgesamt = P_ICU_AUFENTHALT_L*(A(9)+A(10))+ P_ICU_AUFENTHALT_D*(A(11)+A(12))+BEATMET_ICU
KHgesamt = A(5)+A(6)+A(7)+A(8)+A(9)+A(10)+A(11)+A(12)+A(13)+A(14)+A(15)+A(16)
DEAD = A(18)
KHkumulativ = A(21)
ICUkumulativ = A(22)
RECOVERED = CASE0+Q_0+A(17)*REC_TIME

IPRED = CASES
IF(CMT.EQ.4) IPRED = RECOVERED 
IF(CMT.EQ.5) IPRED = ICUgesamt
IF(CMT.EQ.6) IPRED = DEAD
IF(CMT.EQ.7) IPRED = KHgesamt
IF(CMT.EQ.10) IPRED = BEATMET
IF(CMT.EQ.11) IPRED = KHkumulativ
IF(CMT.EQ.12) IPRED = ICUkumulativ
W = IPRED
DEL = 0
IF(IPRED.EQ.0) DEL = 0.001
IRES	= DV -  IPRED
IWRES   = IRES/(W+DEL)
Y  = IPRED *EXP(EPS(1)) + EPS(2)
;IF(CMT.EQ.4) Y = IPRED + W*EPS(9) + EPS(10)
IF(CMT.EQ.5) Y = IPRED + W*EPS(3) + EPS(4)
IF(CMT.EQ.6) Y = IPRED + W*EPS(5)  + EPS(6)
IF(CMT.EQ.7) Y = IPRED + W*EPS(7)  + EPS(8)
IF(CMT.EQ.10) Y = IPRED + W*EPS(3)  + EPS(4)
IF(CMT.EQ.11) Y = IPRED + W*EPS(7)  + EPS(8)
IF(CMT.EQ.12) Y = IPRED + W*EPS(3)  + EPS(4)

$THETA
(0.01, 0.451,6) FIX ;1 hosptrans
(0.01, 0.197,0.5) FIX ;2 hospitalized
(0, 70,100) FIX ;3 ET50
(14) FIX ;4 recovery
(14) FIX ;5 recovery hosp
(0.1, 0.8,1.5) FIX ;6 fD
(100, 120,200) FIX ;7 MTD
(0, 0.0728,1) FIX ;8 KH
(30, 103,200) FIX ;9 MT2
(0, 0.0275,2) FIX ;10 KH2
(1, 41.8,100) FIX ;11 MT3
(0, 0.01,2) FIX ;12 KH3
(0.1, 0.899,1.5) FIX ;13 D2
(0.1, 0.101,1) FIX ;14 ICU1
(0, 0.508,1) FIX ;15 ICU2
(0.1, 0.57,1) FIX ;16 tobeat2
(10, 43.3,100) FIX ;17 MT4
(0, 0.0067,2) FIX ;18 KH4
(0.1, 0.101,1.6) FIX ;19 D3
(0.1, 0.658,1) FIX ;20 ICU3
(15, 28.1,60) FIX ;21 MT5
(0.01, 0.0701,0.4) FIX ;22 KH5
(0.1, 0.643,1.5) FIX ;23 D4
(0.05, 0.451,1) FIX ;24 ICU4
(367) FIX ;25 MT6
(0.01, 0.0832,0.4) FIX ;26 KH6
(0.1, 1.29,2) FIX ;27 D5
(13) FIX ;28 MT7
(0, 0.01,0.4) FIX ;29 KH7
(5, 22.1) FIX ;30 MT7
(0.1, 0.487,1.5) ;31 D6
(0.05, 0.949,1) ;32 ICU5
(0.01, 0.0331,0.4) ;33 KH8
(5, 35.4) ;30 MT8
(0.1, 0.412,1.5) ;31 D7

$OMEGA 
 0 FIX  ;1 hosptrans

$SIGMA 
 0.000028 ;prop c
 1360 ;add c
 0.03 ;prop i
 1.86 ;add i
 0.000303 ;prop d
 36.7 ;add d
 0.0146 ;prop k
 64.9 ;add k
0.1  ;prop r
1  ;add r

$EST METHOD=1 INTER MAXEVAL=100 NOABORT NSIG=3 SIGL=6 PRINT=1 POSTHOC

;$EST METHOD=SAEM INTERACTION PRINT=100 NBURN=1000 NITER=1000 ISAMPLE=1000
;$COV MATRIX=R PRINT=E UNCOND

$TABLE ID TIME TIME2 DV OBS CMT EVID MDV IPRED IIV1 IIV2 IIV3 IIV4 IIV5 IIV6 IIV7 IIV8 IIV9 IIV10 IIV11 IIV12 IIV13 IIV14 IIV15 IIV16 IIV17 IIV18 IIV19 IIV20 IIV21 IIV22 IIV23 IIV24 IIV25 IIV26 IIV27 IIV28 IIV29 F2 R0_0 R0_1 R0_2 R0_3 R0_4 R0_5 R0_6 R0_7 R0_8 R0_9 R0_10 R0_11 R0_12 R0_13 R0_14 R0_15 R0_16 R0_17 R0_18 R0_19 R0_20 R0_21 R0_22 R0_23 R0_24 R0_25 CP_4 CP_5 CP_6 CP_7 CP_8 CP_9 CP_10 CP_11 CP_12 CP_13 CP_14 CP_15 CP_16 CP_17 CP_18 CP_19 CP_20 CP_21 CP_22 CP_23 CP_24 CP_25 R0FREE R0FREE_OLD hosp FRACTHOSP FRACTICU KHd ICUd BEATd death LDdeathKH LDdeathICU LDdeathBEAT LDrecoveryKH LDrecoveryICU LDrecoveryBEAT ONEHEADER NOPRINT FILE=sdtab3014R

