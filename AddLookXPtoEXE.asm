	TITLE	D:\Projets anciens\AddLookXPtoEXE_20200501_080944\AddLookXPtoEXE.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?jours@@3PAPADA					; jours
PUBLIC	??_C@_08KPMLOFAI@dimanche@			
PUBLIC	??_C@_05CACBMNOA@lundi@				
PUBLIC	??_C@_05GENCMHCA@mardi@				
PUBLIC	??_C@_08KNENJIAH@mercredi@			
PUBLIC	??_C@_05BBIAGJOB@jeudi@				
PUBLIC	??_C@_08DOKDICKJ@vendredi@			
PUBLIC	??_C@_06OKAADBBH@samedi@			
PUBLIC	?mois@@3PAPADA					; mois
PUBLIC	??_C@_07KHGAAKMH@janvier@			
PUBLIC	??_C@_07FBDDJNCL@f?ivrier@			
PUBLIC	??_C@_04IIICLNHD@mars@				
PUBLIC	??_C@_05LEHPCLNP@avril@				
PUBLIC	??_C@_03OKNNHOME@mai@				
PUBLIC	??_C@_04KMGIBCG@juin@				
PUBLIC	??_C@_07GCCAFKDF@juillet@			
PUBLIC	??_C@_04OHKDKHAD@aout@				
PUBLIC	??_C@_09EEMDDJBA@septembre@			
PUBLIC	??_C@_07HMEJHHOG@octobre@			
PUBLIC	??_C@_08OMGPNHCA@novembre@			
PUBLIC	??_C@_08NJPDGCIK@d?icembre@			
PUBLIC	?oldProcSplit@@3P6GJPAUHWND__@@IIJ@ZA		; oldProcSplit
PUBLIC	?hInst@@3PAUHINSTANCE__@@A			; hInst
PUBLIC	?hInstance@@3PAUHINSTANCE__@@A			; hInstance
PUBLIC	?ofn@@3UtagOFNA@@A				; ofn
PUBLIC	?iccex@@3UtagINITCOMMONCONTROLSEX@@A		; iccex
PUBLIC	?Temporaire@@3PADA				
PUBLIC	?tmpXP@@3PADA					
PUBLIC	?cxcli@@3JA					; cxcli
PUBLIC	?cycli@@3JA					; cycli
_BSS	SEGMENT
?oldProcSplit@@3P6GJPAUHWND__@@IIJ@ZA DD 01H DUP (?)	; oldProcSplit
?hInst@@3PAUHINSTANCE__@@A DD 01H DUP (?)		; hInst
?hInstance@@3PAUHINSTANCE__@@A DD 01H DUP (?)		; hInstance
?ofn@@3UtagOFNA@@A DB 058H DUP (?)			; ofn
	ALIGN	8

?iccex@@3UtagINITCOMMONCONTROLSEX@@A DQ 01H DUP (?)	; iccex
?Temporaire@@3PADA DB 0100H DUP (?)			
?tmpXP@@3PADA DB 0100H DUP (?)				
?cxcli@@3JA DD	01H DUP (?)				; cxcli
?cycli@@3JA DD	01H DUP (?)				; cycli
_BSS	ENDS
;	COMDAT ??_C@_08NJPDGCIK@d?icembre@
CONST	SEGMENT
??_C@_08NJPDGCIK@d?icembre@ DB 'd', 0e9H, 'cembre', 00H	
CONST	ENDS
;	COMDAT ??_C@_08OMGPNHCA@novembre@
CONST	SEGMENT
??_C@_08OMGPNHCA@novembre@ DB 'novembre', 00H		
CONST	ENDS
;	COMDAT ??_C@_07HMEJHHOG@octobre@
CONST	SEGMENT
??_C@_07HMEJHHOG@octobre@ DB 'octobre', 00H		
CONST	ENDS
;	COMDAT ??_C@_09EEMDDJBA@septembre@
CONST	SEGMENT
??_C@_09EEMDDJBA@septembre@ DB 'septembre', 00H		
CONST	ENDS
;	COMDAT ??_C@_04OHKDKHAD@aout@
CONST	SEGMENT
??_C@_04OHKDKHAD@aout@ DB 'aout', 00H			
CONST	ENDS
;	COMDAT ??_C@_07GCCAFKDF@juillet@
CONST	SEGMENT
??_C@_07GCCAFKDF@juillet@ DB 'juillet', 00H		
CONST	ENDS
;	COMDAT ??_C@_04KMGIBCG@juin@
CONST	SEGMENT
??_C@_04KMGIBCG@juin@ DB 'juin', 00H			
CONST	ENDS
;	COMDAT ??_C@_03OKNNHOME@mai@
CONST	SEGMENT
??_C@_03OKNNHOME@mai@ DB 'mai', 00H			
CONST	ENDS
;	COMDAT ??_C@_05LEHPCLNP@avril@
CONST	SEGMENT
??_C@_05LEHPCLNP@avril@ DB 'avril', 00H			
CONST	ENDS
;	COMDAT ??_C@_04IIICLNHD@mars@
CONST	SEGMENT
??_C@_04IIICLNHD@mars@ DB 'mars', 00H			
CONST	ENDS
;	COMDAT ??_C@_07FBDDJNCL@f?ivrier@
CONST	SEGMENT
??_C@_07FBDDJNCL@f?ivrier@ DB 'f', 0e9H, 'vrier', 00H	
CONST	ENDS
;	COMDAT ??_C@_07KHGAAKMH@janvier@
CONST	SEGMENT
??_C@_07KHGAAKMH@janvier@ DB 'janvier', 00H		
CONST	ENDS
;	COMDAT ??_C@_06OKAADBBH@samedi@
CONST	SEGMENT
??_C@_06OKAADBBH@samedi@ DB 'samedi', 00H		
CONST	ENDS
;	COMDAT ??_C@_08DOKDICKJ@vendredi@
CONST	SEGMENT
??_C@_08DOKDICKJ@vendredi@ DB 'vendredi', 00H		
CONST	ENDS
;	COMDAT ??_C@_05BBIAGJOB@jeudi@
CONST	SEGMENT
??_C@_05BBIAGJOB@jeudi@ DB 'jeudi', 00H			
CONST	ENDS
;	COMDAT ??_C@_08KNENJIAH@mercredi@
CONST	SEGMENT
??_C@_08KNENJIAH@mercredi@ DB 'mercredi', 00H		
CONST	ENDS
;	COMDAT ??_C@_05GENCMHCA@mardi@
CONST	SEGMENT
??_C@_05GENCMHCA@mardi@ DB 'mardi', 00H			
CONST	ENDS
;	COMDAT ??_C@_05CACBMNOA@lundi@
CONST	SEGMENT
??_C@_05CACBMNOA@lundi@ DB 'lundi', 00H			
CONST	ENDS
;	COMDAT ??_C@_08KPMLOFAI@dimanche@
CONST	SEGMENT
??_C@_08KPMLOFAI@dimanche@ DB 'dimanche', 00H		
CONST	ENDS
_DATA	SEGMENT
?jours@@3PAPADA DD FLAT:??_C@_08KPMLOFAI@dimanche@	; jours
	DD	FLAT:??_C@_05CACBMNOA@lundi@
	DD	FLAT:??_C@_05GENCMHCA@mardi@
	DD	FLAT:??_C@_08KNENJIAH@mercredi@
	DD	FLAT:??_C@_05BBIAGJOB@jeudi@
	DD	FLAT:??_C@_08DOKDICKJ@vendredi@
	DD	FLAT:??_C@_06OKAADBBH@samedi@
?mois@@3PAPADA DD FLAT:??_C@_07KHGAAKMH@janvier@	; mois
	DD	FLAT:??_C@_07FBDDJNCL@f?ivrier@
	DD	FLAT:??_C@_04IIICLNHD@mars@
	DD	FLAT:??_C@_05LEHPCLNP@avril@
	DD	FLAT:??_C@_03OKNNHOME@mai@
	DD	FLAT:??_C@_04KMGIBCG@juin@
	DD	FLAT:??_C@_07GCCAFKDF@juillet@
	DD	FLAT:??_C@_04OHKDKHAD@aout@
	DD	FLAT:??_C@_09EEMDDJBA@septembre@
	DD	FLAT:??_C@_07HMEJHHOG@octobre@
	DD	FLAT:??_C@_08OMGPNHCA@novembre@
	DD	FLAT:??_C@_08NJPDGCIK@d?icembre@
_DATA	ENDS
PUBLIC	_WinMain@16
PUBLIC	___local_stdio_printf_options
PUBLIC	_fprintf
PUBLIC	?DlgMainProc@@YGJPAUHWND__@@IIJ@Z		; DlgMainProc
PUBLIC	?@@YIXXZ					; 
PUBLIC	?CreateResource@@YIHXZ				
PUBLIC	?@@YIXPAUHWND__@@_N@Z		; 
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
PUBLIC	??_C@_0DJ@JOIEECFE@AddLookXP2EXE?5a?5d?imar?i?5?$CFs?5le?5?$CFd@ 
PUBLIC	??_C@_0DG@DOABNEFF@Nous?5sommes?5?$CFs?0?5le?5?$CF2d?5?$CFs?5?$CF4d?5?0@ 
PUBLIC	??_C@_0CD@BIEAGHIH@Fichier?5Executable?5?$CI?$CK?4exe?$CJ?$AA?$CK?4ex@ 
PUBLIC	??_C@_03JACLIBNI@exe@				
PUBLIC	??_C@_0CB@JKHJBCAH@Ajouter?5un?5fichier?5Executable?4?4@ 
PUBLIC	??_C@_09PJAOEDB@?4manifest@			
PUBLIC	??_C@_04PMOCAHAA@open@				
PUBLIC	??_C@_0BE@POPFGFGJ@SeShutdownPrivilege@		
PUBLIC	??_C@_02CHHAKFFB@w?$CL@				
PUBLIC	??_C@_0DJ@MOGOKPBF@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCU@ 
PUBLIC	??_C@_0EL@BKCMHCOD@?$DMassembly?5xmlns?$DN?$CCurn?3schemas?9mi@ 
PUBLIC	??_C@_0HE@MDJEOHAB@?$DMassemblyIdentity?5version?$DN?$CC1?40?4@ 
PUBLIC	??_C@_0EL@EOHDALDH@?$DMdescription?$DOTapez?5ici?5une?5desc@ 
PUBLIC	??_C@_0CC@GNHAFGOC@?$DMdependency?$DO?5?$DMdependentAssembly@ 
PUBLIC	??_C@_0KJ@DFDFOHMN@?$DMassemblyIdentity?5type?$DN?$CCwin32?$CC?5@ 
PUBLIC	??_C@_0DA@JIIGEANJ@?$DM?1dependentAssembly?$DO?6?$DM?1dependen@ 
EXTRN	__imp__CreateFileA@28:PROC
EXTRN	__imp__GetCurrentProcess@0:PROC
EXTRN	__imp__OpenProcessToken@12:PROC
EXTRN	__imp__GetLocalTime@4:PROC
EXTRN	__imp__AdjustTokenPrivileges@24:PROC
EXTRN	__imp__LookupPrivilegeValueA@12:PROC
EXTRN	__imp__GetComputerNameA@8:PROC
EXTRN	__imp__CreateSolidBrush@4:PROC
EXTRN	__imp__SetBkMode@8:PROC
EXTRN	__imp__SetTextColor@8:PROC
EXTRN	__imp__wsprintfA:PROC
EXTRN	__imp__PostQuitMessage@4:PROC
EXTRN	__imp__DialogBoxParamA@20:PROC
EXTRN	__imp__EndDialog@8:PROC
EXTRN	__imp__GetDlgItem@8:PROC
EXTRN	__imp__SetDlgItemTextA@12:PROC
EXTRN	__imp__SetTimer@16:PROC
EXTRN	__imp__EnableWindow@8:PROC
EXTRN	__imp__SetWindowTextA@8:PROC
EXTRN	__imp__SetClassLongA@12:PROC
EXTRN	__imp__LoadIconA@8:PROC
EXTRN	__imp__ShellExecuteA@24:PROC
EXTRN	__imp__GetOpenFileNameA@4:PROC
EXTRN	__imp__InitCommonControls@0:PROC
EXTRN	_fclose:PROC
EXTRN	_fopen:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	_memset:PROC
EXTRN	___security_cookie:DWORD
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
CONST	SEGMENT
??_C@_0DA@JIIGEANJ@?$DM?1dependentAssembly?$DO?6?$DM?1dependen@ DB '</dep'
	DB	'endentAssembly>', 0aH, '</dependency>', 0aH, '</assembly>', 0aH
	DB	00H						
CONST	ENDS
CONST	SEGMENT
??_C@_0KJ@DFDFOHMN@?$DMassemblyIdentity?5type?$DN?$CCwin32?$CC?5@ DB '<as'
	DB	'semblyIdentity type="win32" name="Microsoft.Windows.Common-Co'
	DB	'ntrols" version="6.0.0.0" processorArchitecture="X86" publicK'
	DB	'eyToken="6595b64144ccf1df" language="*" />', 0aH, 00H 
CONST	ENDS
CONST	SEGMENT
??_C@_0CC@GNHAFGOC@?$DMdependency?$DO?5?$DMdependentAssembly@ DB '<depend'
	DB	'ency> <dependentAssembly>', 0aH, 00H	
CONST	ENDS
CONST	SEGMENT
??_C@_0EL@EOHDALDH@?$DMdescription?$DOTapez?5ici?5une?5desc@ DB '<descrip'
	DB	'tion>Tapez ici une description de votre application</descript'
	DB	'ion>', 0aH, 00H				
CONST	ENDS
CONST	SEGMENT
??_C@_0HE@MDJEOHAB@?$DMassemblyIdentity?5version?$DN?$CC1?40?4@ DB '<asse'
	DB	'mblyIdentity version="1.0.0.0" processorArchitecture="X86" na'
	DB	'me="Microsoft.Windows.AddLookXP" type="win32" />', 0aH, 00H 
CONST	ENDS
CONST	SEGMENT
??_C@_0EL@BKCMHCOD@?$DMassembly?5xmlns?$DN?$CCurn?3schemas?9mi@ DB '<asse'
	DB	'mbly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion'
	DB	'="1.0">', 0aH, 00H				
CONST	ENDS
CONST	SEGMENT
??_C@_0DJ@MOGOKPBF@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCU@ DB '<'
	DB	'?xml version="1.0" encoding="UTF-8" standalone="yes"?>', 0aH, 00H 
CONST	ENDS
CONST	SEGMENT
??_C@_02CHHAKFFB@w?$CL@ DB 'w+', 00H			
CONST	ENDS
CONST	SEGMENT
??_C@_0BE@POPFGFGJ@SeShutdownPrivilege@ DB 'SeShutdownPrivilege', 00H 
CONST	ENDS
CONST	SEGMENT
??_C@_04PMOCAHAA@open@ DB 'open', 00H			
CONST	ENDS
CONST	SEGMENT
??_C@_09PJAOEDB@?4manifest@ DB '.manifest', 00H		
CONST	ENDS
CONST	SEGMENT
??_C@_0CB@JKHJBCAH@Ajouter?5un?5fichier?5Executable?4?4@ DB 'Ajouter un f'
	DB	'ichier Executable...', 00H			
CONST	ENDS
CONST	SEGMENT
??_C@_03JACLIBNI@exe@ DB 'exe', 00H			
CONST	ENDS
CONST	SEGMENT
??_C@_0CD@BIEAGHIH@Fichier?5Executable?5?$CI?$CK?4exe?$CJ?$AA?$CK?4ex@ DB 'F'
	DB	'ichier Executable (*.exe)', 00H, '*.exe', 00H, 00H, 00H 
CONST	ENDS
CONST	SEGMENT
??_C@_0DG@DOABNEFF@Nous?5sommes?5?$CFs?0?5le?5?$CF2d?5?$CFs?5?$CF4d?5?0@ DB 'N'
	DB	'ous sommes %s, le %2d %s %4d , il est %.2d:%.2d:%.2d', 00H 
CONST	ENDS
CONST	SEGMENT
??_C@_0DJ@JOIEECFE@AddLookXP2EXE?5a?5d?imar?i?5?$CFs?5le?5?$CFd@ DB 'AddL'
	DB	'ookXP2EXE a d', 0e9H, 'mar', 0e9H, ' %s le %d %s %.4d ', 0e0H
	DB	' %.2d:%.2d:%.2d', 00H			
CONST	ENDS
_TEXT	SEGMENT
_hDlg$1$ = -4						; taille:: 4
?@@YIXPAUHWND__@@_N@Z PROC	
	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx
	movzx	ebx, dl
	mov	eax, ecx
	push	ebx
	push	1
	push	eax
	mov	DWORD PTR _hDlg$1$[ebp], eax
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__EnableWindow@8
	push	ebx
	push	3
	push	DWORD PTR _hDlg$1$[ebp]
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__EnableWindow@8
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?@@YIXPAUHWND__@@_N@Z ENDP
_TEXT	ENDS
_TEXT	SEGMENT
?CreateResource@@YIHXZ PROC	
	push	esi
	push	OFFSET ??_C@_02CHHAKFFB@w?$CL@
	push	OFFSET ?tmpXP@@3PADA
	call	_fopen
	mov	esi, eax
	push	OFFSET ??_C@_0DJ@MOGOKPBF@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCU@
	push	esi
	call	_fprintf
	push	OFFSET ??_C@_0EL@BKCMHCOD@?$DMassembly?5xmlns?$DN?$CCurn?3schemas?9mi@
	push	esi
	call	_fprintf
	push	OFFSET ??_C@_0HE@MDJEOHAB@?$DMassemblyIdentity?5version?$DN?$CC1?40?4@
	push	esi
	call	_fprintf
	push	OFFSET ??_C@_0EL@EOHDALDH@?$DMdescription?$DOTapez?5ici?5une?5desc@
	push	esi
	call	_fprintf
	push	OFFSET ??_C@_0CC@GNHAFGOC@?$DMdependency?$DO?5?$DMdependentAssembly@
	push	esi
	call	_fprintf
	push	OFFSET ??_C@_0KJ@DFDFOHMN@?$DMassemblyIdentity?5type?$DN?$CCwin32?$CC?5@
	push	esi
	call	_fprintf
	push	OFFSET ??_C@_0DA@JIIGEANJ@?$DM?1dependentAssembly?$DO?6?$DM?1dependen@
	push	esi
	call	_fprintf
	add	esp, 64		
	push	esi
	call	_fclose
	add	esp, 4
	pop	esi
	ret	0
?CreateResource@@YIHXZ ENDP
_TEXT	ENDS
_TEXT	SEGMENT
_hToken$ = -24						; taille:: 4
_tkp$ = -20						; taille:: 16
__$ArrayPad$ = -4					; taille:: 4
?@@YIXXZ PROC					; , COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	lea	eax, DWORD PTR _hToken$[ebp]
	push	eax
	push	40					; 00000028H
	call	DWORD PTR __imp__GetCurrentProcess@0
	push	eax
	call	DWORD PTR __imp__OpenProcessToken@12
	lea	eax, DWORD PTR _tkp$[ebp+4]
	push	eax
	push	OFFSET ??_C@_0BE@POPFGFGJ@SeShutdownPrivilege@
	push	0
	call	DWORD PTR __imp__LookupPrivilegeValueA@12
	push	0
	push	0
	push	0
	lea	eax, DWORD PTR _tkp$[ebp]
	mov	DWORD PTR _tkp$[ebp], 1
	push	eax
	push	0
	push	DWORD PTR _hToken$[ebp]
	mov	DWORD PTR _tkp$[ebp+12], 2
	call	DWORD PTR __imp__AdjustTokenPrivileges@24
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
?@@YIXXZ ENDP					; 
_TEXT	ENDS
_TEXT	SEGMENT
_ofn$1 = -112						; taille:: 88
_cmp$2 = -24						; taille:: 4
_st$3 = -20						; taille:: 16
_st$4 = -20						; taille:: 16
__$ArrayPad$ = -4					; taille:: 4
_hDlg$ = 8						; taille:: 4
_msg$ = 12						; taille:: 4
_wParam$ = 16						; taille:: 4
_lParam$ = 20						; taille:: 4
?DlgMainProc@@YGJPAUHWND__@@IIJ@Z PROC	
	push	ebp
	mov	ebp, esp
	sub	esp, 112				; 00000070H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	ebx
	push	esi
	mov	esi, DWORD PTR _wParam$[ebp]
	push	edi
	mov	edi, DWORD PTR _hDlg$[ebp]
	push	14803425				; 00e1e1e1H
	call	DWORD PTR __imp__CreateSolidBrush@4
	mov	ecx, DWORD PTR _msg$[ebp]
	mov	ebx, eax
	cmp	ecx, 306				; 00000132H
	ja	$LN32@DlgMainPro
	je	$LN26@DlgMainPro
	cmp	ecx, 273				; 00000111H
	ja	$LN33@DlgMainPro
	je	$LN13@DlgMainPro
	cmp	ecx, 5
	je	$LN10@DlgMainPro
	cmp	ecx, 272				; 00000110H
	jne	$LN27@DlgMainPro
	push	106					; 0000006aH
	push	DWORD PTR ?hInst@@3PAUHINSTANCE__@@A
	call	DWORD PTR __imp__LoadIconA@8
	push	eax
	push	-14					; fffffff2H
	push	edi
	call	DWORD PTR __imp__SetClassLongA@12
	call	DWORD PTR __imp__InitCommonControls@0
	xor	dl, dl
	mov	ecx, edi
	call	?@@YIXPAUHWND__@@_N@Z	; 
	lea	eax, DWORD PTR _st$4[ebp]
	push	eax
	call	DWORD PTR __imp__GetLocalTime@4
	movzx	eax, WORD PTR _st$4[ebp+12]
	push	eax
	movzx	eax, WORD PTR _st$4[ebp+10]
	push	eax
	movzx	eax, WORD PTR _st$4[ebp+8]
	push	eax
	movzx	eax, WORD PTR _st$4[ebp]
	push	eax
	movzx	eax, WORD PTR _st$4[ebp+2]
	push	DWORD PTR ?mois@@3PAPADA[eax*4-4]
	movzx	eax, WORD PTR _st$4[ebp+6]
	push	eax
	movzx	eax, WORD PTR _st$4[ebp+4]
	push	DWORD PTR ?jours@@3PAPADA[eax*4]
	push	OFFSET ??_C@_0DJ@JOIEECFE@AddLookXP2EXE?5a?5d?imar?i?5?$CFs?5le?5?$CFd@
	push	OFFSET ?Temporaire@@3PADA		
	call	DWORD PTR __imp__wsprintfA
	add	esp, 36					; 00000024H
	push	OFFSET ?Temporaire@@3PADA		
	push	edi
	call	DWORD PTR __imp__SetWindowTextA@8
	push	0
	push	1000					; 000003e8H
	push	1000					; 000003e8H
	push	edi
	call	DWORD PTR __imp__SetTimer@16
	lea	eax, DWORD PTR _cmp$2[ebp]
	mov	DWORD PTR _cmp$2[ebp], 80		; 00000050H
	push	eax
	push	OFFSET ?Temporaire@@3PADA		
	call	DWORD PTR __imp__GetComputerNameA@8
	push	OFFSET ?Temporaire@@3PADA		
	push	1001					; 000003e9H
	push	edi
	call	DWORD PTR __imp__SetDlgItemTextA@12
	pop	edi
	pop	esi
	mov	eax, 1
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN10@DlgMainPro:
	test	esi, esi
	je	SHORT $LN12@DlgMainPro
	cmp	esi, 2
	jne	SHORT $LN27@DlgMainPro
$LN12@DlgMainPro:
	mov	ecx, DWORD PTR _lParam$[ebp]
	movzx	eax, cx
	shr	ecx, 16					; 00000010H
	mov	DWORD PTR ?cxcli@@3JA, eax		; cxcli
	mov	DWORD PTR ?cycli@@3JA, ecx		; cycli
$LN27@DlgMainPro:
	xor	eax, eax
$LN1@DlgMainPro:
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN13@DlgMainPro:
	movzx	eax, si
	cmp	eax, 3
	ja	$LN31@DlgMainPro
	je	SHORT $LN17@DlgMainPro
	sub	eax, 1
	je	SHORT $LN16@DlgMainPro
	sub	eax, 1
	jne	$LN2@DlgMainPro
	push	eax
	call	DWORD PTR __imp__PostQuitMessage@4
	push	0
	push	edi
	call	DWORD PTR __imp__EndDialog@8
	pop	edi
	pop	esi
	mov	eax, 1
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN16@DlgMainPro:
	call	?@@YIXXZ				; 
	call	?CreateResource@@YIHXZ			
	pop	edi
	pop	esi
	mov	eax, 1
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN17@DlgMainPro:
	call	?@@YIXXZ				; 
	call	?CreateResource@@YIHXZ			
	push	1
	push	0
	push	0
	push	DWORD PTR ?ofn@@3UtagOFNA@@A+28
	push	OFFSET ??_C@_04PMOCAHAA@open@
	push	edi
	call	DWORD PTR __imp__ShellExecuteA@24
	pop	edi
	pop	esi
	mov	eax, 1
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN31@DlgMainPro:
	cmp	eax, 1004				; 000003ecH
	jne	$LN2@DlgMainPro
	xor	dl, dl
	mov	ecx, edi
	call	?@@YIXPAUHWND__@@_N@Z	; 
	push	88					; 00000058H
	lea	eax, DWORD PTR _ofn$1[ebp]
	mov	BYTE PTR ?tmpXP@@3PADA, 0
	push	0
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _ofn$1[ebp], 88		; 00000058H
	lea	eax, DWORD PTR _ofn$1[ebp]
	mov	DWORD PTR _ofn$1[ebp+4], edi
	mov	DWORD PTR _ofn$1[ebp+12], OFFSET ??_C@_0CD@BIEAGHIH@Fichier?5Executable?5?$CI?$CK?4exe?$CJ?$AA?$CK?4ex@
	mov	DWORD PTR _ofn$1[ebp+28], OFFSET ?tmpXP@@3PADA 
	push	eax
	mov	DWORD PTR _ofn$1[ebp+32], 260		; 00000104H
	mov	DWORD PTR _ofn$1[ebp+60], OFFSET ??_C@_03JACLIBNI@exe@
	mov	DWORD PTR _ofn$1[ebp+48], OFFSET ??_C@_0CB@JKHJBCAH@Ajouter?5un?5fichier?5Executable?4?4@
	mov	DWORD PTR _ofn$1[ebp+52], 528388	; 00081004H
	call	DWORD PTR __imp__GetOpenFileNameA@4
	cmp	eax, 1
	jne	$LN2@DlgMainPro
	push	0
	push	128					; 00000080H
	push	3
	push	0
	push	0
	push	-2147483648				; 80000000H
	push	DWORD PTR _ofn$1[ebp+28]
	call	DWORD PTR __imp__CreateFileA@28
	push	DWORD PTR _ofn$1[ebp+28]
	mov	esi, DWORD PTR __imp__SetDlgItemTextA@12
	push	1003					; 000003ebH
	push	edi
	call	esi
	mov	edx, OFFSET ?tmpXP@@3PADA		
	dec	edx
	npad	7
$LL34@DlgMainPro:
	mov	al, BYTE PTR [edx+1]
	lea	edx, DWORD PTR [edx+1]
	test	al, al
	jne	SHORT $LL34@DlgMainPro
	mov	eax, DWORD PTR ??_C@_09PJAOEDB@?4manifest@
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR ??_C@_09PJAOEDB@?4manifest@+4
	push	OFFSET ?tmpXP@@3PADA			
	mov	DWORD PTR [edx+4], eax
	mov	ax, WORD PTR ??_C@_09PJAOEDB@?4manifest@+8
	push	1005					; 000003edH
	push	edi
	mov	WORD PTR [edx+8], ax
	call	esi
	mov	dl, 1
	mov	ecx, edi
	call	?@@YIXPAUHWND__@@_N@Z	; 
	pop	edi
	pop	esi
	mov	eax, 1
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN33@DlgMainPro:
	cmp	ecx, 275				; 00000113H
	jne	$LN27@DlgMainPro
	lea	eax, DWORD PTR _st$3[ebp]
	push	eax
	call	DWORD PTR __imp__GetLocalTime@4
	movzx	eax, WORD PTR _st$3[ebp+12]
	push	eax
	movzx	eax, WORD PTR _st$3[ebp+10]
	push	eax
	movzx	eax, WORD PTR _st$3[ebp+8]
	push	eax
	movzx	eax, WORD PTR _st$3[ebp]
	push	eax
	movzx	eax, WORD PTR _st$3[ebp+2]
	push	DWORD PTR ?mois@@3PAPADA[eax*4-4]
	movzx	eax, WORD PTR _st$3[ebp+6]
	push	eax
	movzx	eax, WORD PTR _st$3[ebp+4]
	push	DWORD PTR ?jours@@3PAPADA[eax*4]
	push	OFFSET ??_C@_0DG@DOABNEFF@Nous?5sommes?5?$CFs?0?5le?5?$CF2d?5?$CFs?5?$CF4d?5?0@
	push	OFFSET ?Temporaire@@3PADA		
	call	DWORD PTR __imp__wsprintfA
	add	esp, 36					; 00000024H
	push	OFFSET ?Temporaire@@3PADA		
	push	1002					; 000003eaH
	push	edi
	call	DWORD PTR __imp__SetDlgItemTextA@12
$LN2@DlgMainPro:
	pop	edi
	pop	esi
	mov	eax, 1
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN26@DlgMainPro:
	push	8421504					; 00808080H
	call	DWORD PTR __imp__CreateSolidBrush@4
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN32@DlgMainPro:
	add	ecx, -307				; fffffecdH
	cmp	ecx, 5
	ja	$LN27@DlgMainPro
	jmp	DWORD PTR $LN35@DlgMainPro[ecx*4]
$LN20@DlgMainPro:
	push	16711808				; 00ff0080H
$LN37@DlgMainPro:
	push	esi
	call	DWORD PTR __imp__SetTextColor@8
	push	1
	push	esi
	call	DWORD PTR __imp__SetBkMode@8
	pop	edi
	pop	esi
	mov	eax, ebx
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN21@DlgMainPro:
	mov	edi, DWORD PTR __imp__SetTextColor@8
	movzx	eax, si
	sub	eax, 1003				; 000003ebH
	je	SHORT $LN22@DlgMainPro
	sub	eax, 2
	je	SHORT $LN23@DlgMainPro
	push	1
	push	esi
	call	DWORD PTR __imp__SetBkMode@8
	pop	edi
	pop	esi
	mov	eax, ebx
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN22@DlgMainPro:
	push	65280					; 0000ff00H
	push	esi
	call	edi
$LN23@DlgMainPro:
	push	16711680				; 00ff0000H
	push	esi
	call	edi
	push	1
	push	esi
	call	DWORD PTR __imp__SetBkMode@8
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	mov	eax, ebx
	pop	edi
	pop	esi
	xor	ecx, ebp
	pop	ebx
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$LN24@DlgMainPro:
	push	16711935				; 00ff00ffH
	jmp	$LN37@DlgMainPro
$LN25@DlgMainPro:
	push	16776960				; 00ffff00H
	jmp	$LN37@DlgMainPro
	npad	3
$LN35@DlgMainPro:
	DD	$LN21@DlgMainPro
	DD	$LN24@DlgMainPro
	DD	$LN25@DlgMainPro
	DD	$LN1@DlgMainPro
	DD	$LN27@DlgMainPro
	DD	$LN20@DlgMainPro
?DlgMainProc@@YGJPAUHWND__@@IIJ@Z ENDP			; DlgMainProc
_TEXT	ENDS
_TEXT	SEGMENT
__Stream$ = 8						; taille:: 4
__Format$ = 12						; taille:: 4
_fprintf PROC						
	push	ebp
	mov	ebp, esp
	lea	eax, DWORD PTR __Format$[ebp+4]
	push	eax
	push	0
	push	DWORD PTR __Format$[ebp]
	push	DWORD PTR __Stream$[ebp]
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	___stdio_common_vfprintf
	add	esp, 24					; 00000018H
	pop	ebp
	ret	0
_fprintf ENDP
_TEXT	ENDS
_TEXT	SEGMENT
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
;	COMDAT _WinMain@16
_TEXT	SEGMENT
_hInstance$ = 8						; taille:: 4
_hPrevInstance$ = 12					; taille:: 4
_lpCmdLine$ = 16					; taille:: 4
_nCmdShow$ = 20						; taille:: 4
_WinMain@16 PROC					
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR _hInstance$[ebp]
	push	0
	push	OFFSET ?DlgMainProc@@YGJPAUHWND__@@IIJ@Z ; DlgMainProc
	push	0
	push	102					; 00000066H
	push	eax
	mov	DWORD PTR ?hInst@@3PAUHINSTANCE__@@A, eax ; hInst
	call	DWORD PTR __imp__DialogBoxParamA@20
	pop	ebp
	ret	16					; 00000010H
_WinMain@16 ENDP
_TEXT	ENDS
END
