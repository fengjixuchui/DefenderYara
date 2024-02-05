
rule Backdoor_Win32_Rustock{
	meta:
		description = "Backdoor:Win32/Rustock,SIGNATURE_TYPE_PEHSTR,01 00 01 00 5c 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 62 67 63 5c 74 66 5c 6a 6c 5c 79 69 6a 75 71 5c 6d 75 7a 74 66 5c 78 6f 61 78 6c 5c 6b 71 74 6e 6f 77 73 63 76 6f 68 2e 70 64 62 } //01 00 
		$a_01_1 = {61 70 6a 5c 75 70 78 62 78 5c 6a 64 71 6c 65 6c 78 5c 65 63 72 6c 63 74 5c 77 64 64 6b 68 69 71 5c 63 68 67 72 67 65 79 75 2e 70 64 62 } //01 00 
		$a_01_2 = {61 75 74 76 6a 5c 67 79 68 75 72 68 5c 76 6c 7a 6b 5c 6a 76 66 5c 70 6a 70 71 74 70 5c 73 63 62 74 71 5c 70 61 67 74 76 63 6b 2e 70 64 62 } //01 00 
		$a_01_3 = {62 62 74 6a 6c 71 6c 75 73 5c 70 74 64 68 61 65 61 5c 62 61 79 64 66 73 64 6d 5c 7a 68 6a 79 67 70 77 79 6d 66 79 71 70 6b 2e 70 64 62 } //01 00 
		$a_01_4 = {62 6d 75 66 72 69 7a 79 6e 63 69 6e 68 5c 7a 79 6f 77 74 74 77 66 65 72 5c 69 69 68 76 74 69 61 68 77 65 2e 70 64 62 } //01 00 
		$a_01_5 = {63 63 76 79 6f 65 77 73 6a 5c 61 62 6c 71 67 65 67 79 77 74 6c 69 67 75 6a 6c 63 5c 73 61 64 75 71 61 6b 69 2e 70 64 62 } //01 00 
		$a_01_6 = {63 6f 78 75 78 5c 73 6b 71 63 73 66 5c 7a 6f 71 74 72 5c 70 6a 6b 74 65 61 70 5c 70 71 63 67 76 63 6d 5c 6d 6d 6d 68 6c 62 2e 70 64 62 } //01 00 
		$a_01_7 = {64 6b 64 67 62 7a 68 5c 67 63 75 68 77 6b 61 6e 68 65 73 6f 5c 79 77 6e 67 65 73 6c 79 78 67 77 69 65 73 7a 78 6c 2e 70 64 62 } //01 00 
		$a_01_8 = {64 73 62 75 5c 72 68 6e 78 77 75 5c 65 79 6f 71 74 71 5c 79 72 70 6c 5c 64 61 68 75 74 6d 61 74 5c 6d 6e 79 6f 66 62 72 6b 65 78 69 2e 70 64 62 } //01 00 
		$a_01_9 = {64 75 66 6a 69 5c 70 61 61 69 5c 70 7a 61 69 75 71 5c 6c 66 69 74 63 5c 71 62 7a 6e 75 5c 74 79 78 6f 76 64 6f 5c 6b 6f 74 61 2e 70 64 62 } //01 00 
		$a_01_10 = {65 64 66 65 78 5c 6b 72 63 6f 5c 67 63 79 5c 6b 66 62 72 75 76 5c 7a 63 64 61 6a 6c 5c 61 63 68 6a 76 61 66 6b 2e 70 64 62 } //01 00 
		$a_01_11 = {65 6a 65 5c 7a 6b 5c 61 76 78 65 6a 69 64 5c 61 69 72 6a 5c 71 6e 70 62 71 6b 5c 79 63 6d 62 5c 69 79 66 6e 79 79 79 6a 75 68 6e 69 2e 70 64 62 } //01 00 
		$a_01_12 = {66 68 64 62 6f 77 74 75 76 5c 76 6d 76 73 69 61 6e 78 69 74 6e 6e 79 5c 76 64 69 63 6d 66 6e 6a 6d 79 6f 79 70 68 72 2e 70 64 62 } //01 00 
		$a_01_13 = {66 69 69 63 63 5c 79 78 78 70 5c 68 7a 6a 63 71 63 75 69 5c 67 6b 6b 63 74 77 62 61 5c 65 61 66 78 6a 6b 69 61 6f 77 67 68 2e 70 64 62 } //01 00 
		$a_01_14 = {66 70 6f 5c 6f 62 6c 6d 74 66 69 5c 6b 65 64 63 5c 70 76 62 65 5c 7a 79 74 67 77 66 65 72 5c 62 73 61 64 6a 78 2e 70 64 62 } //01 00 
		$a_01_15 = {67 6d 65 67 79 5c 72 66 68 64 76 65 64 6e 71 6b 62 65 6a 68 77 5c 74 69 6e 76 79 66 75 6e 7a 7a 63 6d 74 65 64 76 6e 7a 62 2e 70 64 62 } //01 00 
		$a_01_16 = {67 77 6b 6d 5c 75 66 5c 71 6c 74 61 69 70 5c 66 75 64 62 6f 5c 70 64 68 7a 5c 6b 6a 62 76 6f 64 6d 5c 6d 75 68 71 78 6a 2e 70 64 62 } //01 00 
		$a_01_17 = {68 63 68 65 66 74 75 5c 7a 64 69 73 69 5c 6a 6e 71 6e 68 5c 65 65 77 75 65 79 6b 5c 66 72 73 61 6d 70 61 70 5c 70 66 72 62 76 77 70 6b 2e 70 64 62 } //01 00 
		$a_01_18 = {68 74 6e 79 5c 75 65 66 63 6b 5c 76 6e 74 6f 5c 6e 6e 6f 6d 5c 6a 69 70 78 5c 6c 75 77 70 6a 69 67 5c 73 78 64 79 79 63 77 6d 66 6c 2e 70 64 62 } //01 00 
		$a_01_19 = {69 68 69 73 79 5c 6b 66 74 5c 6b 77 76 70 5c 7a 70 6c 6e 67 5c 61 66 68 6e 6c 74 78 63 5c 78 64 68 77 5c 61 61 62 6d 63 75 6f 79 70 2e 70 64 62 } //01 00 
		$a_01_20 = {69 6a 73 76 5c 64 65 67 6b 67 62 74 6f 74 73 74 77 72 5c 79 7a 63 6b 78 79 6d 64 69 62 6f 76 7a 5c 72 78 72 77 72 65 71 2e 70 64 62 } //01 00 
		$a_01_21 = {6a 69 65 73 67 6b 72 5c 68 7a 67 5c 66 72 68 64 6b 67 66 5c 66 79 71 64 76 77 6e 62 68 5c 75 6b 72 74 78 73 63 6d 7a 72 2e 70 64 62 } //01 00 
		$a_01_22 = {6b 70 6d 5c 76 66 77 65 70 5c 77 68 77 78 6b 6a 6c 5c 77 69 78 7a 79 78 5c 7a 78 6e 76 5c 73 6b 6d 70 6b 5c 69 64 69 6b 7a 68 77 2e 70 64 62 } //01 00 
		$a_01_23 = {6b 78 6f 62 69 70 6a 78 79 70 77 65 68 72 6f 5c 7a 68 79 6c 7a 70 6f 64 61 75 63 5c 6c 6e 62 75 67 6f 71 75 6f 7a 75 70 2e 70 64 62 } //01 00 
		$a_01_24 = {6c 63 68 70 5c 75 77 7a 7a 75 68 76 5c 79 62 72 6c 73 68 76 6b 5c 65 75 67 66 5c 61 69 6a 73 65 6c 73 70 74 61 68 65 6a 79 2e 70 64 62 } //01 00 
		$a_01_25 = {6c 6b 67 76 72 5c 64 7a 74 5c 77 70 66 6d 73 5c 61 74 65 5c 73 6f 61 61 64 6e 5c 75 66 61 62 74 61 6a 67 75 5c 77 78 76 76 2e 70 64 62 } //01 00 
		$a_01_26 = {6d 79 74 6a 6b 62 5c 65 6f 69 6f 73 5c 63 69 74 5c 77 67 72 5c 68 79 6d 79 73 7a 65 5c 75 71 69 69 67 65 73 5c 64 72 78 6f 6d 78 76 2e 70 64 62 } //01 00 
		$a_01_27 = {6e 62 6c 73 79 79 78 75 5c 7a 66 66 74 6d 67 64 64 61 77 5c 64 69 7a 73 66 67 6f 61 63 69 65 74 6a 75 2e 70 64 62 } //01 00 
		$a_01_28 = {6e 6f 73 79 7a 75 7a 5c 6f 65 6a 6b 5c 6d 74 72 73 63 64 75 69 6e 61 5c 61 72 6c 73 7a 5c 79 66 6d 75 6c 6f 70 6d 75 64 6c 69 73 71 2e 70 64 62 } //01 00 
		$a_01_29 = {6e 70 6c 5c 6b 71 71 5c 6d 68 63 5c 63 72 66 74 61 72 74 5c 79 77 75 66 77 77 5c 67 63 62 5c 61 78 7a 79 74 76 72 78 7a 69 2e 70 64 62 } //01 00 
		$a_01_30 = {6e 72 6f 5c 62 63 78 68 6f 5c 62 6d 72 68 77 77 5c 71 77 63 67 61 68 73 6b 5c 64 6f 62 76 75 6f 78 5c 70 69 62 70 63 68 64 2e 70 64 62 } //01 00 
		$a_01_31 = {6e 75 72 6d 6e 64 63 71 77 64 5c 7a 63 71 7a 73 73 77 69 5c 67 6f 6e 6c 76 72 70 7a 65 5c 6f 74 6f 72 6a 66 2e 70 64 62 } //01 00 
		$a_01_32 = {6f 62 70 67 5c 71 6a 6a 72 5c 67 65 64 75 5c 74 77 71 6f 76 69 62 79 6b 5c 67 62 76 74 6b 78 68 5c 62 69 69 67 64 66 78 2e 70 64 62 } //01 00 
		$a_01_33 = {71 6e 79 6d 76 64 5c 69 69 6c 5c 68 62 66 76 5c 69 66 68 77 74 6b 5c 6c 62 78 7a 7a 64 6f 67 5c 74 78 61 65 65 6c 63 6c 6d 77 6f 64 64 2e 70 64 62 } //01 00 
		$a_01_34 = {71 74 5c 7a 67 75 6c 76 5c 6c 61 79 72 73 5c 61 62 65 5c 66 75 64 69 6d 7a 70 73 6d 5c 67 68 79 68 77 6e 6d 6b 5c 6e 67 6a 6e 2e 70 64 62 } //01 00 
		$a_01_35 = {72 74 7a 6f 78 6f 70 77 6d 75 5c 73 74 67 63 77 6a 5c 6d 65 61 75 63 5c 6d 66 6d 77 6c 66 78 63 76 61 6f 74 63 79 66 6a 63 78 66 2e 70 64 62 } //01 00 
		$a_01_36 = {72 78 6b 5c 7a 70 68 66 6b 5c 7a 6e 61 76 6b 5c 6a 6f 6c 74 5c 73 65 73 77 5c 6f 6b 64 7a 67 5c 78 6c 79 6d 7a 72 79 61 2e 70 64 62 } //01 00 
		$a_01_37 = {73 73 61 74 78 7a 64 68 78 6c 69 5c 67 6f 69 67 78 67 67 69 75 5c 67 7a 64 72 6c 66 68 70 62 6c 6f 66 61 6b 71 6b 66 2e 70 64 62 } //01 00 
		$a_01_38 = {73 7a 68 78 5c 65 62 6e 69 68 5c 74 68 6c 6a 5c 61 69 75 77 71 5c 6a 72 6b 75 6d 79 6f 5c 7a 6d 64 77 6f 6b 78 6e 66 71 79 69 2e 70 64 62 } //01 00 
		$a_01_39 = {76 61 66 6e 5c 68 65 77 77 79 78 5c 6f 70 66 73 69 62 73 65 76 5c 6e 62 76 76 7a 70 6c 68 63 5c 75 70 71 69 63 6c 75 74 71 2e 70 64 62 } //01 00 
		$a_01_40 = {77 63 70 70 61 5c 6a 76 70 5c 74 6d 71 73 71 75 64 68 76 5c 76 63 71 72 6d 68 79 76 5c 73 6f 64 68 71 67 5c 66 79 65 75 6b 2e 70 64 62 } //01 00 
		$a_01_41 = {77 70 76 6a 6f 74 62 69 6c 5c 67 6d 6d 6e 63 5c 61 62 76 66 77 70 5c 78 72 7a 69 6b 73 74 78 5c 71 70 6f 7a 7a 69 71 7a 63 6c 2e 70 64 62 } //01 00 
		$a_01_42 = {78 6a 6a 68 6b 75 74 68 5c 63 77 77 61 67 79 75 72 5c 78 72 68 71 7a 65 62 6b 76 76 6c 79 2e 70 64 62 } //01 00 
		$a_01_43 = {79 63 66 75 6b 65 78 63 6d 6a 5c 66 6a 68 6d 71 61 75 5c 6a 74 6b 70 77 66 65 64 79 68 69 62 6c 5c 6f 6e 74 63 72 77 68 61 71 6e 67 2e 70 64 62 } //01 00 
		$a_01_44 = {79 72 6a 6e 75 66 5c 64 6d 69 66 5c 6d 68 70 6f 78 72 6d 5c 63 75 76 6d 64 5c 74 75 6d 78 67 69 5c 7a 61 73 6b 6a 75 74 2e 70 64 62 } //01 00 
		$a_01_45 = {68 6b 66 70 5c 68 75 77 77 68 79 79 65 5c 66 61 71 68 6e 62 5c 6c 72 79 6d 72 6b 5c 6b 63 75 76 6c 6d 68 6c 5c 71 64 6b 68 67 63 67 2e 70 64 62 } //01 00 
		$a_01_46 = {72 69 6f 76 6b 5c 70 6e 6d 72 66 6a 5c 6f 75 65 76 6c 5c 73 6f 73 71 6a 69 73 67 5c 72 6a 6d 5c 67 6f 71 70 63 67 74 6a 76 64 61 2e 70 64 62 } //01 00 
		$a_01_47 = {61 6c 71 76 6d 76 79 5c 6f 62 62 64 5c 75 6c 71 77 75 77 5c 74 77 71 77 75 75 79 79 67 70 74 5c 66 67 66 74 63 6b 6c 62 6c 2e 70 64 62 } //01 00 
		$a_01_48 = {61 61 76 6d 75 72 73 61 72 70 73 75 5c 6e 61 79 78 6e 74 62 70 6a 5c 6b 64 6c 75 73 72 66 6d 6a 74 79 69 77 77 2e 70 64 62 } //01 00 
		$a_01_49 = {6e 6d 66 61 78 62 5c 6a 6f 72 69 76 79 69 73 66 70 5c 75 63 6f 69 6d 6c 70 63 70 6a 6f 78 6a 78 73 63 76 62 62 2e 70 64 62 } //01 00 
		$a_01_50 = {6f 74 63 63 67 6a 67 5c 71 6b 66 73 7a 6b 6c 71 74 5c 77 6b 72 69 74 5c 71 64 74 6a 69 79 6e 65 66 61 6d 6d 71 65 6a 76 65 72 6d 69 2e 70 64 62 } //01 00 
		$a_01_51 = {78 6e 68 71 66 5c 75 6d 72 74 76 69 6d 65 76 74 5c 78 66 75 6d 69 75 6e 71 5c 6f 6d 75 73 72 65 6f 69 2e 70 64 62 } //01 00 
		$a_01_52 = {69 68 6c 6e 71 63 5c 6e 77 64 68 5c 6b 6d 71 72 75 5c 63 7a 6b 67 5c 66 71 78 62 66 61 70 5c 6a 69 77 66 5c 65 70 61 6c 73 2e 70 64 62 } //01 00 
		$a_01_53 = {61 69 78 79 68 6a 5c 61 6f 75 79 6c 70 68 70 64 6f 6c 65 5c 79 6a 73 6b 6d 6f 65 65 68 66 5c 76 78 79 67 61 75 70 78 71 2e 70 64 62 } //01 00 
		$a_01_54 = {73 6b 77 6f 73 61 5c 70 68 6c 69 5c 62 62 7a 6e 5c 7a 67 6f 6f 71 64 6c 79 76 5c 61 66 75 75 76 6f 5c 71 6c 75 62 71 78 2e 70 64 62 } //01 00 
		$a_01_55 = {77 66 74 5c 70 70 7a 65 7a 79 61 5c 6f 61 5c 75 79 71 75 5c 63 62 68 74 6a 65 5c 70 62 74 61 61 74 73 77 5c 74 78 69 78 71 71 63 2e 70 64 62 } //01 00 
		$a_01_56 = {6b 7a 61 64 7a 5c 68 6d 66 66 7a 76 6b 68 68 5c 74 6e 61 68 6f 74 5c 63 6e 67 78 63 73 6c 6f 64 77 2e 70 64 62 } //01 00 
		$a_01_57 = {64 68 65 77 67 6e 5c 77 65 74 6e 75 76 5c 77 69 61 61 6d 64 63 6d 5c 76 74 6b 6a 75 62 66 76 6f 5c 6b 74 62 6f 6a 2e 70 64 62 } //01 00 
		$a_01_58 = {70 67 75 7a 63 63 74 5c 68 6d 6e 79 62 69 66 67 7a 6f 72 6d 67 72 7a 66 77 63 75 5c 6b 6f 79 70 67 71 76 77 66 79 61 70 61 73 61 6d 69 2e 70 64 62 } //01 00 
		$a_01_59 = {76 63 70 79 6c 79 5c 75 7a 7a 79 5c 62 73 6e 65 70 61 5c 70 77 64 74 72 66 73 75 71 5c 61 70 63 6c 75 72 68 2e 70 64 62 } //01 00 
		$a_01_60 = {7a 6d 6c 7a 74 6e 69 6e 74 77 65 61 5c 72 6f 6c 79 70 70 64 7a 74 6e 62 71 6c 5c 63 78 64 65 6d 72 67 6c 78 72 6b 77 71 66 6d 2e 70 64 62 } //01 00 
		$a_01_61 = {78 64 79 79 5c 61 78 6b 61 78 70 77 62 5c 73 69 75 78 70 6a 68 76 64 6a 79 63 67 78 5c 69 71 77 7a 6a 67 78 73 6f 6a 65 2e 70 64 62 } //01 00 
		$a_01_62 = {6a 6d 6b 5c 67 7a 77 6e 6c 5c 6d 72 78 73 64 6d 5c 70 76 6d 61 65 73 64 5c 72 6b 71 76 74 6e 6e 5c 74 6b 63 74 69 5c 6b 77 6c 61 2e 70 64 62 } //01 00 
		$a_01_63 = {6b 65 72 67 78 75 73 69 6c 78 5c 6e 68 6c 7a 77 68 7a 5c 7a 63 79 68 69 66 5c 71 65 64 7a 71 65 6b 78 78 6f 68 66 77 2e 70 64 62 } //01 00 
		$a_01_64 = {77 63 64 5c 6f 78 6e 77 5c 72 76 61 67 68 76 61 5c 71 7a 68 63 62 5c 73 71 70 69 75 75 69 6f 5c 75 68 62 63 77 6f 2e 70 64 62 } //01 00 
		$a_01_65 = {63 77 62 5c 6e 72 6a 75 66 76 74 71 5c 73 75 78 6a 5c 7a 6a 67 76 79 61 69 76 6f 77 72 5c 7a 78 6e 79 75 79 74 74 79 76 67 6c 62 6a 2e 70 64 62 } //01 00 
		$a_01_66 = {7a 63 76 69 6c 7a 5c 6f 65 6d 5c 66 70 61 64 67 6f 6f 5c 73 66 6e 6a 6a 5c 72 64 76 75 6b 5c 61 68 7a 63 70 73 70 62 6f 77 2e 70 64 62 } //01 00 
		$a_01_67 = {64 65 6d 62 5c 7a 72 64 6c 73 5c 6e 61 78 63 6c 65 7a 65 5c 6a 6f 6b 69 6c 74 67 6e 5c 75 63 64 7a 6f 76 73 77 67 74 6a 2e 70 64 62 } //01 00 
		$a_01_68 = {6c 64 63 73 67 6d 63 65 6c 7a 5c 6a 7a 69 72 65 77 61 66 65 7a 63 78 71 5c 79 63 78 71 66 78 6d 70 68 6b 79 79 6d 6b 66 2e 70 64 62 } //01 00 
		$a_01_69 = {72 64 5c 68 72 75 6a 65 5c 6a 65 73 5c 68 65 79 63 67 72 6a 5c 76 6a 70 76 78 5c 6c 79 76 66 5c 79 6d 6d 7a 6d 2e 70 64 62 } //01 00 
		$a_01_70 = {6f 73 71 6a 69 5c 70 65 71 68 74 77 6d 6a 5c 77 6f 78 68 65 68 6e 79 69 64 5c 6d 68 61 76 6f 75 74 77 63 77 73 67 69 76 6c 71 73 64 2e 70 64 62 } //01 00 
		$a_01_71 = {65 63 7a 6b 71 77 5c 76 64 6a 5c 6e 75 7a 62 73 6e 72 5c 68 79 64 7a 5c 65 7a 6f 71 61 5c 62 73 7a 78 74 64 66 5c 70 61 7a 63 78 2e 70 64 62 } //01 00 
		$a_01_72 = {62 69 67 79 74 6f 77 5c 72 7a 67 67 61 77 71 6f 70 78 6d 5c 64 69 6f 66 66 67 67 67 69 6b 7a 71 6a 79 73 65 2e 70 64 62 } //01 00 
		$a_01_73 = {77 63 62 6f 62 7a 65 6f 7a 5c 69 72 6c 6a 73 74 72 78 5c 78 77 72 62 6f 6f 72 6f 6a 63 78 2e 70 64 62 } //01 00 
		$a_01_74 = {74 72 6f 72 5c 72 6f 5c 74 6a 6e 65 5c 6c 74 78 71 75 62 79 5c 78 71 6f 65 7a 73 5c 72 75 70 6f 61 6d 78 5c 74 7a 67 68 69 65 2e 70 64 62 } //01 00 
		$a_01_75 = {6b 76 78 76 63 70 6f 78 5c 6e 68 7a 6a 68 64 68 63 71 74 76 6f 5c 71 75 75 73 67 64 62 68 62 78 7a 73 73 62 6c 75 76 6b 78 68 2e 70 64 62 } //01 00 
		$a_01_76 = {70 67 6f 78 67 5c 64 71 6a 6a 5c 61 66 67 79 66 67 72 5c 72 6e 65 66 67 5c 76 61 76 6d 77 69 6b 5c 6a 6e 5c 64 73 62 6d 7a 64 64 2e 70 64 62 } //01 00 
		$a_01_77 = {66 74 6d 75 62 67 5c 61 76 67 75 73 66 5c 70 69 73 6d 6e 68 5c 6f 6f 79 6b 7a 5c 6f 71 71 6d 76 79 6f 6c 72 71 65 72 6c 71 2e 70 64 62 } //01 00 
		$a_01_78 = {6f 74 5c 6f 6f 76 5c 61 71 66 75 6b 5c 6b 71 62 69 62 5c 65 69 7a 77 66 5c 69 75 77 67 70 63 73 78 6a 78 5c 6f 78 6d 64 61 65 2e 70 64 62 } //01 00 
		$a_01_79 = {6d 68 76 61 63 71 69 70 71 5c 63 7a 66 72 64 63 6d 79 73 66 62 5c 73 71 7a 68 66 61 6d 64 63 76 5c 77 78 78 64 71 70 67 6a 6c 6d 2e 70 64 62 } //01 00 
		$a_01_80 = {75 61 63 75 69 5c 70 6f 6f 79 67 6e 70 64 6c 75 5c 7a 66 75 77 78 71 79 63 71 6c 75 2e 70 64 62 } //01 00 
		$a_01_81 = {77 74 6e 6e 70 67 5c 63 75 5c 71 77 74 5c 65 70 6d 72 64 76 73 5c 67 6d 6a 66 70 5c 75 73 6d 61 65 62 67 66 6a 64 71 71 61 65 62 2e 70 64 62 } //01 00 
		$a_01_82 = {67 6e 67 6b 72 5c 6a 64 77 69 72 6f 61 7a 61 5c 62 77 74 6e 6a 74 6a 6f 5c 61 6b 63 71 63 6c 71 76 5c 64 75 6f 7a 78 69 2e 70 64 62 } //01 00 
		$a_01_83 = {64 66 76 5c 62 71 66 69 5c 61 6d 6e 64 67 5c 76 64 62 72 78 5c 66 73 75 77 64 72 76 78 6f 6d 5c 75 70 75 78 6a 6e 69 65 2e 70 64 62 } //01 00 
		$a_01_84 = {61 68 77 61 63 64 75 5c 64 78 66 64 64 6b 67 5c 67 72 67 68 6a 71 65 6c 5c 6e 78 77 76 70 74 73 77 6c 61 69 67 6e 64 77 2e 70 64 62 } //01 00 
		$a_01_85 = {7a 64 69 6e 65 63 66 70 6a 75 5c 66 6a 79 6a 77 6f 5c 72 72 72 63 68 72 70 77 71 6e 61 6e 74 72 75 62 63 6d 62 70 61 77 65 2e 70 64 62 } //01 00 
		$a_01_86 = {78 63 6a 65 7a 72 70 5c 6d 63 74 7a 76 78 74 5c 63 71 65 70 61 63 5c 67 70 6c 70 61 6c 61 74 5c 78 77 73 70 61 73 75 71 76 76 7a 66 2e 70 64 62 } //01 00 
		$a_01_87 = {61 6f 6c 68 6a 6e 5c 65 65 69 73 6b 71 73 77 6b 75 5c 6f 79 75 72 65 74 70 6a 77 65 6f 5c 76 68 77 6f 79 6a 6f 79 6b 62 78 66 6f 62 2e 70 64 62 } //01 00 
		$a_01_88 = {76 6e 72 62 5c 75 70 74 67 5c 68 79 6a 62 79 6b 76 6c 71 5c 68 77 77 6b 62 6e 73 65 6e 73 74 71 64 7a 6e 67 66 74 79 6a 2e 70 64 62 } //01 00 
		$a_01_89 = {70 68 66 68 71 5c 62 70 7a 70 7a 5c 72 67 76 6f 72 75 7a 75 6b 6b 75 63 73 77 78 69 5c 72 71 73 70 62 76 69 65 2e 70 64 62 } //01 00 
		$a_01_90 = {61 70 76 79 5c 75 64 7a 67 69 6d 75 5c 79 75 6f 70 69 5c 66 63 6b 78 78 5c 65 69 61 6a 6c 79 64 77 78 5c 72 79 7a 70 7a 72 2e 70 64 62 } //01 00 
		$a_01_91 = {63 68 6c 69 6d 6c 5c 6a 76 73 6d 79 70 7a 79 71 6d 70 6d 5c 73 73 65 67 7a 78 6d 75 79 62 78 73 67 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}