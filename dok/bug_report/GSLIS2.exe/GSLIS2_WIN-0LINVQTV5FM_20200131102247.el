EurekaLog 7.5.0.0  

Exception:
--------------------------------------------------------------
  2.2 Address: 00426B51
  2.5 Type   : EConvertError
  2.6 Message: '1,000.01' is not a valid floating point value.
  2.7 ID     : 0B470000
  2.11 Sent  : 0

User:
-------------------------
  3.2 Name : Windows User
  3.3 Email: 

Steps to reproduce:
------------
  8.1 Text: 


Call Stack Information:
------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack   |Address |Module    |Offset  |Unit                |Class                  |Procedure/Method    |Line     |
------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=3356; Parent=5800; Priority=0                                                                               |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 3356] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                           |
|Comment=                                                                                                                          |
|----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00426B51|GSLIS2.exe|00026B51|System.SysUtils     |                       |ConvertErrorFmt     |5474[1]  |
|00000020|04     |0F57FA4C|0042B95C|GSLIS2.exe|0002B95C|System.SysUtils     |                       |StrToFloat          |18279[2] |
|00000020|03     |0F57FA6C|00A77B9F|GSLIS2.exe|00677B9F|uniEdit             |TUniBaseEdit           |SetText             |         |
|00000020|04     |0F57FB74|00EE60B6|GSLIS2.exe|00AE60B6|UnitFODaftar        |TfrmFODaftar           |edDiscAmountChange  |620[8]   |
|00000020|03     |0F57FBD0|0089D93D|GSLIS2.exe|0049D93D|uniGUIClasses       |TUniFormControl        |DoOnChange          |         |
|00000020|03     |0F57FBD8|0089D960|GSLIS2.exe|0049D960|uniGUIClasses       |TUniFormControl        |H_JSOnChange        |         |
|00000020|03     |0F57FBF0|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |         |
|00000020|03     |0F57FC48|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|         |
|00000020|03     |0F57FC90|0089DAAD|GSLIS2.exe|0049DAAD|uniGUIClasses       |TUniFormControl        |HandleEventIntercept|         |
|00000020|03     |0F57FCC4|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |         |
|00000020|03     |0F57FD10|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue   |         |
|00000020|03     |0F57FD1C|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents       |         |
|00000020|03     |0F57FD54|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal           |         |
|00000020|03     |0F57FD84|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal           |         |
|00000020|04     |0F57FD88|00F249A3|GSLIS2.exe|00B249A3|Main                |TMainForm              |mnFODaftarClick     |135[1]   |
|00000020|03     |0F57FD98|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick   |         |
|00000020|03     |0F57FDB4|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |         |
|00000020|03     |0F57FE0C|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|         |
|00000020|03     |0F57FE54|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |         |
|00000020|03     |0F57FEA0|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager|TUniSessionWorkerThread|Execute             |         |
|00000020|04     |0F57FEDC|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|00000020|04     |0F57FEF0|004CF631|GSLIS2.exe|000CF631|System.Classes      |                       |ThreadProc          |14161[21]|
|00000020|04     |0F57FF14|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|00000020|04     |0F57FF6C|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager|TUniSessionWorkerThread|Create              |         |
------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                |Description                                        |Version        |Size    |Modified           |Path                                                                                                          |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe          |                                                   |1.0.0.0        |48664582|2020-01-28 17:19:32|D:\GSLIS2\                                                                                                    |
|11000000|libeay32.dll        |OpenSSL Shared Library                             |1.0.2.17       |1374208 |2018-11-22 18:48:46|D:\GSLIS2\                                                                                                    |
|12000000|ssleay32.dll        |OpenSSL Shared Library                             |1.0.2.17       |337920  |2018-11-22 18:48:46|D:\GSLIS2\                                                                                                    |
|69680000|libmysql.dll        |                                                   |5.6.45.0       |4176312 |2019-06-10 05:36:06|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|74190000|msftedit.dll        |Rich Text Edit Control, v7.5                       |6.3.9600.18818 |2471424 |2017-09-08 23:50:47|C:\Windows\System32\                                                                                          |
|743F0000|hhctrl.ocx          |Microsoft® HTML Help Control                       |6.3.9600.19017 |536576  |2018-04-15 23:16:23|C:\Windows\System32\                                                                                          |
|74640000|msvcr100.dll        |Microsoft® C Runtime Library                       |10.0.40219.325 |773968  |2011-06-11 01:58:52|C:\Windows\System32\                                                                                          |
|74700000|powrprof.dll        |Power Profile Helper DLL                           |6.3.9600.17415 |255136  |2014-11-22 08:47:01|C:\Windows\System32\                                                                                          |
|74740000|uxtheme.dll         |Microsoft UxTheme Library                          |6.3.9600.18835 |949760  |2017-10-10 21:58:39|C:\Windows\System32\                                                                                          |
|74830000|winsta.dll          |Winstation Library                                 |6.3.9600.17415 |276816  |2014-11-22 08:44:35|C:\Windows\System32\                                                                                          |
|748E0000|idndl.dll           |Downlevel DLL                                      |6.3.9600.17415 |33280   |2014-11-22 08:47:02|C:\Windows\System32\                                                                                          |
|748F0000|security.dll        |Security Support Provider Interface                |6.3.9600.16384 |5120    |2013-08-22 11:14:43|C:\Windows\System32\                                                                                          |
|74900000|secur32.dll         |Security Support Provider Interface                |6.3.9600.17415 |24064   |2014-11-22 08:47:16|C:\Windows\System32\                                                                                          |
|74910000|usp10.dll           |Uniscribe Unicode script processor                 |6.3.9600.17415 |77312   |2014-11-22 08:44:41|C:\Windows\System32\                                                                                          |
|749B0000|wtsapi32.dll        |Windows Remote Desktop Session Host Server SDK APIs|6.3.9600.17415 |52664   |2014-11-22 08:44:35|C:\Windows\System32\                                                                                          |
|749C0000|version.dll         |Version Checking and File Installation Libraries   |6.3.9600.17415 |26304   |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|749D0000|rasadhlp.dll        |Remote Access AutoDial Helper                      |6.3.9600.17415 |12288   |2014-11-22 08:47:24|C:\Windows\System32\                                                                                          |
|749E0000|FWPUCLNT.DLL        |FWP/IPsec User-Mode API                            |6.3.9600.18229 |272384  |2016-02-05 22:07:46|C:\Windows\System32\                                                                                          |
|74A30000|bcrypt.dll          |Windows Cryptographic Primitives Library           |6.3.9600.18541 |111104  |2017-11-05 11:46:36|C:\Windows\System32\                                                                                          |
|74A50000|winrnr.dll          |LDAP RnR Provider DLL                              |6.3.9600.17415 |23040   |2014-11-22 08:47:16|C:\Windows\System32\                                                                                          |
|74A60000|dnsapi.dll          |DNS Client API DLL                                 |6.3.9600.19060 |499200  |2018-06-08 23:44:43|C:\Windows\System32\                                                                                          |
|74AE0000|rsaenh.dll          |Microsoft Enhanced Cryptographic Provider          |6.3.9600.17415 |192096  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|74B10000|cryptsp.dll         |Cryptographic Service Provider API                 |6.3.9600.17415 |96032   |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|74B30000|nlaapi.dll          |Network Location Awareness 2                       |6.3.9600.18895 |65536   |2018-01-02 11:11:41|C:\Windows\System32\                                                                                          |
|74B70000|NapiNSP.dll         |E-mail Naming Shim Provider                        |6.3.9600.17415 |55296   |2014-11-22 08:47:19|C:\Windows\System32\                                                                                          |
|74BB0000|winnsi.dll          |Network Store Information RPC interface            |6.3.9600.17415 |26304   |2014-11-22 08:44:11|C:\Windows\System32\                                                                                          |
|74BC0000|IPHLPAPI.DLL        |IP Helper API                                      |6.3.9600.18264 |121912  |2017-11-05 11:46:36|C:\Windows\System32\                                                                                          |
|74BE0000|mswsock.dll         |Microsoft Windows Sockets 2.0 Service Provider     |6.3.9600.18340 |286208  |2017-11-05 10:50:17|C:\Windows\System32\                                                                                          |
|74D00000|ntmarta.dll         |Windows NT MARTA provider                          |6.3.9600.17415 |154392  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|74D40000|SHCore.dll          |SHCORE                                             |6.3.9600.17415 |560392  |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|74DD0000|kernel.appcore.dll  |AppModel API Host                                  |6.3.9600.17415 |29920   |2014-11-22 08:47:06|C:\Windows\System32\                                                                                          |
|74DE0000|winspool.drv        |Windows Spooler Driver                             |6.3.9600.19293 |399360  |2019-02-09 23:16:49|C:\Windows\System32\                                                                                          |
|74EF0000|msimg32.dll         |GDIEXT Client DLL                                  |6.3.9600.17415 |6144    |2014-11-22 08:44:42|C:\Windows\System32\                                                                                          |
|75080000|comctl32.dll        |User Experience Controls Library                   |6.10.9600.19393|2107392 |2019-06-02 23:05:07|C:\Windows\WinSxS\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.9600.19394_none_a9f59c4f01325ed5\|
|75290000|devobj.dll          |Device Information Set DLL                         |6.3.9600.17415 |127552  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|752C0000|WINMMBASE.dll       |Base Multimedia Extension API DLL                  |6.3.9600.17415 |134280  |2014-11-22 08:44:58|C:\Windows\System32\                                                                                          |
|752F0000|winmm.dll           |MCI API DLL                                        |6.3.9600.17415 |136840  |2014-11-22 08:44:58|C:\Windows\System32\                                                                                          |
|75320000|bcryptPrimitives.dll|Windows Cryptographic Primitives Library           |6.3.9600.18895 |341384  |2018-01-02 13:03:25|C:\Windows\System32\                                                                                          |
|75380000|CRYPTBASE.dll       |Base cryptographic API DLL                         |6.3.9600.17415 |30984   |2014-11-22 08:47:17|C:\Windows\System32\                                                                                          |
|753A0000|msvcrt.dll          |Windows NT CRT DLL                                 |7.0.9600.17415 |800008  |2014-11-22 08:48:08|C:\Windows\System32\                                                                                          |
|755F0000|kernel32.dll        |Windows NT BASE API Client DLL                     |6.3.9600.19538 |1040384 |2019-10-15 10:08:31|C:\Windows\System32\                                                                                          |
|75770000|sechost.dll         |Host for SCM/SDDL/LSA Lookup APIs                  |6.3.9600.17734 |257216  |2017-11-05 10:49:21|C:\Windows\System32\                                                                                          |
|757C0000|combase.dll         |Microsoft COM for Windows                          |6.3.9600.19227 |1563376 |2018-12-08 12:32:22|C:\Windows\System32\                                                                                          |
|75940000|advapi32.dll        |Advanced Windows 32 Base API                       |6.3.9600.18895 |507176  |2018-01-02 12:48:48|C:\Windows\System32\                                                                                          |
|759C0000|imm32.dll           |Multi-User Windows IMM32 API Client DLL            |6.3.9600.17415 |141312  |2014-11-22 08:44:42|C:\Windows\System32\                                                                                          |
|759F0000|ws2_32.dll          |Windows Socket 2.0 32-Bit DLL                      |6.3.9600.18340 |320720  |2017-11-05 10:50:17|C:\Windows\System32\                                                                                          |
|75C00000|gdi32.dll           |GDI Client DLL                                     |6.3.9600.19574 |1085440 |2019-11-28 11:03:13|C:\Windows\System32\                                                                                          |
|75D10000|cfgmgr32.dll        |Configuration Manager DLL                          |6.3.9600.17415 |241168  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|75D50000|shlwapi.dll         |Shell Light-weight Utility Library                 |6.3.9600.17415 |278352  |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|75DA0000|normaliz.dll        |Unicode Normalization DLL                          |6.3.9600.17415 |4096    |2014-11-22 08:47:02|C:\Windows\System32\                                                                                          |
|75DB0000|nsi.dll             |NSI User-mode interface DLL                        |6.3.9600.17415 |20120   |2014-11-22 08:44:11|C:\Windows\System32\                                                                                          |
|75DC0000|rpcrt4.dll          |Remote Procedure Call Runtime                      |6.3.9600.19538 |747520  |2019-10-15 09:27:17|C:\Windows\System32\                                                                                          |
|75F10000|oleaut32.dll        |                                                   |6.3.9600.19556 |611432  |2019-11-05 07:03:54|C:\Windows\System32\                                                                                          |
|75FB0000|comdlg32.dll        |Common Dialogs DLL                                 |6.3.9600.17415 |609280  |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|76050000|sspicli.dll         |Security Support Provider Interface                |6.3.9600.18454 |104960  |2017-11-05 10:51:28|C:\Windows\System32\                                                                                          |
|76070000|imagehlp.dll        |Windows NT Image Helper                            |6.3.9600.17415 |74824   |2014-11-22 08:44:12|C:\Windows\System32\                                                                                          |
|76220000|KERNELBASE.dll      |Windows NT BASE API Client DLL                     |6.3.9600.19425 |861184  |2019-07-11 10:35:15|C:\Windows\System32\                                                                                          |
|76300000|msctf.dll           |MSCTF Server DLL                                   |6.3.9600.19464 |1125312 |2019-08-29 08:43:02|C:\Windows\System32\                                                                                          |
|76420000|ole32.dll           |Microsoft OLE for Windows                          |6.3.9600.19345 |1214720 |2019-04-07 07:57:19|C:\Windows\System32\                                                                                          |
|76550000|user32.dll          |Multi-User Windows USER API Client DLL             |6.3.9600.19598 |1377280 |2020-01-03 10:52:59|C:\Windows\System32\                                                                                          |
|766B0000|psapi.dll           |Process Status Helper                              |6.3.9600.17415 |16504   |2014-11-22 08:47:07|C:\Windows\System32\                                                                                          |
|76720000|shell32.dll         |Windows Shell Common Dll                           |6.3.9600.19377 |19790160|2019-05-25 08:59:54|C:\Windows\System32\                                                                                          |
|77BB0000|ntdll.dll           |NT Layer DLL                                       |6.3.9600.18895 |1502000 |2018-01-02 12:58:07|C:\Windows\System32\                                                                                          |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Processes Information:
----------------------


Assembler Information:
----------------------------------------------------------------------------------------------
; Base Address: $426000, Allocation Base: $400000, Region Size: 11808768
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; System.ConvertErrorFmt (Line=5473 - Offset=0)
; ---------------------------------------------
00426B38  53          PUSH EBX
00426B39  56          PUSH ESI
00426B3A  57          PUSH EDI
00426B3B  8BF9        MOV  EDI, ECX
00426B3D  8BF2        MOV  ESI, EDX
00426B3F  8BD8        MOV  EBX, EAX
;
; Line=5474 - Offset=9
; --------------------
00426B41  56          PUSH ESI
00426B42  57          PUSH EDI
00426B43  8BCB        MOV  ECX, EBX
00426B45  B201        MOV  DL, 1
00426B47  A188164200  MOV  EAX, [$00421688] ; Delphi Class "EConvertError"
00426B4C  E8EF890000  CALL +$89EF           ; ($0042F540) System.Exception.CreateResFmt
;
; Line=5474 - Offset=25
; ---------------------
00426B51  E8D642FEFF  CALL -$01BD2A         ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=5475 - Offset=30
; ---------------------
00426B56  5F          POP  EDI
00426B57  5E          POP  ESI
00426B58  5B          POP  EBX

Registers:
-----------------------------
EAX: 0F57F990   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0F57F9E8
EDX: 00000000   ESP: 0F57F990
EIP: 76254E28   FLG: 00000216
EXP: 00426B51   STK: 0F57F990

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0E263344: 0F57F9E0   00426B51: E8 D6 42 FE FF 5F 5E 5B C3 8B C0 FF 25 E0 87 09  ..B.._^[....%...
0E263340: 11C7E0F0   00426B61: 01 8B C0 50 E8 F2 FF FF FF C3 90 55 8B EC 83 C4  ...P.......U....
0E26333C: 0042F96B   00426B71: F8 8B 45 08 8B 40 FC 89 45 F8 C6 45 FC 11 8D 55  ..E..@..E..E...U
0E263338: 0F57FB70   00426B81: F8 A1 D4 BD F8 00 33 C9 E8 AA FF FF FF 59 59 5D  ......3......YY]
0E263334: 0F57FA40   00426B91: C3 8B C0 55 8B EC 8B D0 83 C2 D0 66 83 EA 0A 72  ...U.......f...r
0E263330: 0F57FB70   00426BA1: 14 83 C2 F9 66 83 EA 06 72 15 83 C2 E6 66 83 EA  ....f...r....f..
0E26332C: 00000000   00426BB1: 06 72 06 EB 10 2C 30 5D C3 2C 61 04 0A 5D C3 2C  .r...,0].,a..].,
0E263328: 0F57FA5C   00426BC1: 41 04 0A 5D C3 8B 45 08 50 E8 9D FF FF FF 59 33  A..]..E.P.....Y3
0E263324: 004172F8   00426BD1: C0 5D C3 55 8B EC 53 8B D8 8B 45 08 50 0F B7 03  .].U..S...E.P...
0E263320: 11C7E0F0   00426BE1: E8 AE FF FF FF 59 C1 E0 04 50 8B 45 08 50 0F B7  .....Y...P.E.P..
0E26331C: 00426B56   00426BF1: 43 02 E8 9C FF FF FF 59 8B D0 58 02 C2 5B 5D C3  C......Y..X..[].
0E263318: 00000007   00426C01: 8D 40 00 55 8B EC 51 53 56 57 8B DA 89 45 FC 8B  .@.U..QSVW...E..
0E263314: 76254E28   00426C11: 45 FC 85 C0 74 05 83 E8 04 8B 00 83 F8 26 74 04  E...t........&t.
0E263310: 00000000   00426C21: B0 01 EB 0A 8B 45 FC 66 83 38 7B 0F 95 C0 84 C0  .....E.f.8{.....
0E26330C: 00000001   00426C31: 74 07 55 E8 33 FF FF FF 59 8B FB 8B 45 FC E8 80  t.U.3...Y...E...
0E263308: 0EEDFADE   00426C41: 5C FE FF 8B D8 83 C3 02 33 F6 55 B8 03 00 00 00  \.......3.U.....



