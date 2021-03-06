EurekaLog 7.5.0.0  

Exception:
-----------------------------------
  2.2 Address: 00BD111F
  2.5 Type   : EIdSocketError
  2.6 Message: Socket Error # 10061
               Connection refused.
  2.7 ID     : 15AE0000
  2.11 Sent  : 0

User:
-------------------------
  3.2 Name : Windows User
  3.3 Email: 

Steps to reproduce:
------------
  8.1 Text: 


Call Stack Information:
-------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack   |Address |Module    |Offset  |Unit                |Class                  |Procedure/Method    |Line      |
-------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=6080; Parent=4296; Priority=0                                                                                |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 6080] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                            |
|Comment=                                                                                                                           |
|-----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00BD111F|GSLIS2.exe|007D111F|IdStack             |TIdStack               |RaiseSocketError    |894[53]   |
|00000020|04     |0A3CF8A8|00BD10A6|GSLIS2.exe|007D10A6|IdStack             |TIdStack               |RaiseLastSocketError|828[1]    |
|00000020|04     |0A3CF8B4|00BD1011|GSLIS2.exe|007D1011|IdStack             |TIdStack               |CheckForSocketError |802[2]    |
|00000020|04     |0A3CF8C8|00BCD224|GSLIS2.exe|007CD224|IdStackWindows      |TIdStackWindows        |Connect             |1970[20]  |
|00000020|04     |0A3CF95C|00BFE36D|GSLIS2.exe|007FE36D|IdSocketHandle      |TIdSocketHandle        |Connect             |294[1]    |
|00000020|04     |0A3CF974|00C0034D|GSLIS2.exe|0080034D|IdIOHandlerStack    |TIdIOHandlerStack      |ConnectClient       |348[52]   |
|00000020|04     |0A3CF9A8|00C06037|GSLIS2.exe|00806037|IdIOHandlerSocket   |TIdIOHandlerSocket     |Open                |332[13]   |
|00000020|04     |0A3CF9B0|00C02719|GSLIS2.exe|00802719|IdTCPClient         |TIdTCPClientCustom     |Connect             |320[55]   |
|00000020|04     |0A3CF9B8|00C0276C|GSLIS2.exe|0080276C|IdTCPClient         |TIdTCPClientCustom     |Connect             |326[61]   |
|00000020|04     |0A3CF9D8|00C010DB|GSLIS2.exe|008010DB|IdTCPConnection     |TIdTCPConnection       |Disconnect          |541[11]   |
|00000020|04     |0A3CF9EC|00C3CACE|GSLIS2.exe|0083CACE|IdHTTP              |TIdCustomHTTP          |CheckAndConnect     |1841[42]  |
|00000020|04     |0A3CFA20|00C3CFF7|GSLIS2.exe|0083CFF7|IdHTTP              |TIdCustomHTTP          |ConnectToHost       |1987[129] |
|00000020|04     |0A3CFA58|00C3EE77|GSLIS2.exe|0083EE77|IdHTTP              |TIdCustomHTTP          |DoRequest           |2938[23]  |
|00000020|04     |0A3CFAA0|00C3A38A|GSLIS2.exe|0083A38A|IdHTTP              |TIdCustomHTTP          |Post                |807[19]   |
|00000020|04     |0A3CFAE0|00C3AB60|GSLIS2.exe|0083AB60|IdHTTP              |TIdCustomHTTP          |Post                |1046[12]  |
|00000020|04     |0A3CFB1C|00C3AC7A|GSLIS2.exe|0083AC7A|IdHTTP              |TIdCustomHTTP          |Post                |1063[3]   |
|00000020|04     |0A3CFB58|00E30F39|GSLIS2.exe|00A30F39|UnitJasper          |                       |reportExecReqParams |189[22]   |
|00000020|04     |0A3CFBC0|00E32617|GSLIS2.exe|00A32617|UnitFOHomeService   |TfrmFOHomeService      |btnCetakClick       |141[3]    |
|00000020|03     |0A3CFBF0|008908D8|GSLIS2.exe|004908D8|uniGUIClasses       |TUniControl            |DoClick             |          |
|00000020|03     |0A3CFBF8|00A7B8A7|GSLIS2.exe|0067B8A7|uniButton           |TUniCustomButton       |DoClick             |          |
|00000020|03     |0A3CFC14|00A7AEB8|GSLIS2.exe|0067AEB8|uniButton           |TUniCustomButton       |ClickHandler        |          |
|00000020|03     |0A3CFC2C|0087397F|GSLIS2.exe|0047397F|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0A3CFC84|00892299|GSLIS2.exe|00492299|uniGUIClasses       |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0A3CFCCC|008C0465|GSLIS2.exe|004C0465|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0A3CFD18|008B304F|GSLIS2.exe|004B304F|uniGUIApplication   |TUniGUISession         |ProcessEventQueue   |          |
|00000020|03     |0A3CFD24|008B3197|GSLIS2.exe|004B3197|uniGUIApplication   |TUniGUISession         |ProcessEvents       |          |
|00000020|03     |0A3CFD5C|0086AB9F|GSLIS2.exe|0046AB9F|uniGUIJSForm        |TUniBaseJSForm         |ShowModal           |          |
|00000020|03     |0A3CFD8C|0087CD83|GSLIS2.exe|0047CD83|uniGUIForm          |TUniBaseForm           |ShowModal           |          |
|00000020|04     |0A3CFD90|00F25D57|GSLIS2.exe|00B25D57|Main                |TMainForm              |mnFOHomeServiceClick|120[1]    |
|00000020|03     |0A3CFDA0|00864F0F|GSLIS2.exe|00464F0F|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick   |          |
|00000020|03     |0A3CFDBC|0087397F|GSLIS2.exe|0047397F|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0A3CFE14|00892299|GSLIS2.exe|00492299|uniGUIClasses       |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0A3CFE5C|008C0465|GSLIS2.exe|004C0465|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0A3CFEA8|008C064F|GSLIS2.exe|004C064F|uniGUISessionManager|TUniSessionWorkerThread|Execute             |          |
|00000020|04     |0A3CFEE4|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0A3CFEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes      |                       |ThreadProc          |14161[21] |
|00000020|04     |0A3CFF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0A3CFF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]   |
|7FFFFFFE|03     |00000000|008C012C|GSLIS2.exe|004C012C|uniGUISessionManager|TUniSessionWorkerThread|Create              |          |
-------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe          |                                                   |1.0.0.0         |48689229|2020-03-11 11:56:02|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll        |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll        |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|59460000|libmysql.dll        |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|59AA0000|msftedit.dll        |Rich Text Edit Control, v4.1                       |5.41.21.2510    |592384  |2010-11-21 10:24:14|C:\Windows\System32\                                                                                          |
|5D9E0000|hhctrl.ocx          |Microsoft® HTML Help Control                       |6.1.7601.24134  |523776  |2018-04-18 22:51:41|C:\Windows\System32\                                                                                          |
|61D20000|idndl.dll           |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
|61D30000|symsrv.dll          |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|61D80000|dbghelp.dll         |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|63680000|powrprof.dll        |Power Profile Helper DLL                           |6.1.7600.16385  |145408  |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|66460000|winsta.dll          |Winstation Library                                 |6.1.7601.18540  |157696  |2014-07-17 08:40:03|C:\Windows\System32\                                                                                          |
|67F20000|bcryptprimitives.dll|Windows Cryptographic Primitives Library           |6.1.7601.23451  |249352  |2016-05-12 20:04:55|C:\Windows\SysWOW64\                                                                                          |
|694F0000|security.dll        |Security Support Provider Interface                |6.1.7600.16385  |4608    |2009-07-14 08:09:53|C:\Windows\System32\                                                                                          |
|69500000|wtsapi32.dll        |Windows Remote Desktop Session Host Server SDK APIs|6.1.7601.17514  |40448   |2010-11-21 10:23:54|C:\Windows\System32\                                                                                          |
|6C780000|bcrypt.dll          |Windows Cryptographic Primitives Library (Wow64)   |6.1.7601.24545  |82944   |2020-01-03 10:38:54|C:\Windows\System32\                                                                                          |
|6C7B0000|msvcp120.dll        |Microsoft® C Runtime Library                       |12.0.40660.0    |454968  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|6C830000|msvcr120.dll        |Microsoft® C Runtime Library                       |12.0.40660.0    |971064  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|70B60000|uxtheme.dll         |Microsoft UxTheme Library                          |6.1.7600.16385  |245760  |2009-07-14 08:11:24|C:\Windows\System32\                                                                                          |
|73010000|wship6.dll          |Winsock2 Helper DLL (TL/IPv6)                      |6.1.7600.16385  |10752   |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|73020000|FWPUCLNT.DLL        |FWP/IPsec User-Mode API                            |6.1.7601.24000  |216576  |2018-01-01 09:00:02|C:\Windows\System32\                                                                                          |
|73060000|rasadhlp.dll        |Remote Access AutoDial Helper                      |6.1.7600.16385  |11776   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|73070000|wshbth.dll          |Windows Sockets Helper DLL                         |6.1.7601.17514  |36352   |2010-11-21 10:24:50|C:\Windows\System32\                                                                                          |
|73080000|winrnr.dll          |LDAP RnR Provider DLL                              |6.1.7600.16385  |20992   |2009-07-14 08:16:19|C:\Windows\System32\                                                                                          |
|73090000|dnsapi.dll          |DNS Client API DLL                                 |6.1.7601.24168  |269824  |2018-06-08 22:54:41|C:\Windows\System32\                                                                                          |
|730E0000|pnrpnsp.dll         |PNRP Name Space Provider                           |6.1.7600.16385  |65024   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|73150000|NapiNSP.dll         |E-mail Naming Shim Provider                        |6.1.7600.16385  |52224   |2009-07-14 08:16:02|C:\Windows\System32\                                                                                          |
|73160000|WSHTCPIP.DLL        |Winsock2 Helper DLL (TL/IPv4)                      |6.1.7600.16385  |9216    |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|73170000|mswsock.dll         |Microsoft Windows Sockets 2.0 Service Provider     |6.1.7601.23451  |231424  |2016-05-11 22:19:16|C:\Windows\System32\                                                                                          |
|731B0000|nlaapi.dll          |Network Location Awareness 2                       |6.1.7601.24000  |52224   |2018-01-01 09:00:07|C:\Windows\System32\                                                                                          |
|732D0000|winspool.drv        |Windows Spooler Driver                             |6.1.7601.24383  |321536  |2019-02-16 12:50:54|C:\Windows\System32\                                                                                          |
|73500000|comctl32.dll        |User Experience Controls Library                   |6.10.7601.24483 |1681920 |2019-06-05 02:07:00|C:\Windows\winsxs\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.7601.24483_none_2b200f664577e14b\|
|736A0000|winmm.dll           |MCI API DLL                                        |6.1.7601.17514  |194048  |2010-11-21 10:24:16|C:\Windows\System32\                                                                                          |
|73720000|rsaenh.dll          |Microsoft Enhanced Cryptographic Provider          |6.1.7600.16385  |242936  |2009-07-14 08:17:54|C:\Windows\System32\                                                                                          |
|73760000|cryptsp.dll         |Cryptographic Service Provider API                 |6.1.7601.24499  |80896   |2019-06-12 22:19:54|C:\Windows\System32\                                                                                          |
|73860000|version.dll         |Version Checking and File Installation Libraries   |6.1.7600.16385  |21504   |2009-07-14 08:16:17|C:\Windows\System32\                                                                                          |
|73920000|winnsi.dll          |Network Store Information RPC interface            |6.1.7601.23889  |16384   |2017-08-11 13:19:44|C:\Windows\System32\                                                                                          |
|73930000|IPHLPAPI.DLL        |IP Helper API                                      |6.1.7601.17514  |103936  |2010-11-21 10:24:32|C:\Windows\System32\                                                                                          |
|74B90000|secur32.dll         |Security Support Provider Interface                |6.1.7601.24545  |22016   |2020-01-03 10:38:43|C:\Windows\System32\                                                                                          |
|751F0000|CRYPTBASE.dll       |Base cryptographic API DLL                         |6.1.7601.24545  |36352   |2020-01-03 10:02:56|C:\Windows\SysWOW64\                                                                                          |
|75200000|sspicli.dll         |Security Support Provider Interface                |6.1.7601.24545  |96768   |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|753B0000|ole32.dll           |Microsoft OLE for Windows                          |6.1.7601.24537  |1425920 |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|75510000|comdlg32.dll        |Common Dialogs DLL                                 |6.1.7601.17514  |485888  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|75590000|imm32.dll           |Multi-User Windows IMM32 API Client DLL            |6.1.7601.17514  |119808  |2010-11-21 10:24:25|C:\Windows\System32\                                                                                          |
|755F0000|rpcrt4.dll          |Remote Procedure Call Runtime                      |6.1.7601.24545  |666112  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|756E0000|setupapi.dll        |Windows Setup API                                  |6.1.7601.17514  |1667584 |2010-11-21 10:23:51|C:\Windows\SysWOW64\                                                                                          |
|75910000|crypt32.dll         |Crypto API32                                       |6.1.7601.24542  |1177088 |2019-12-10 15:38:34|C:\Windows\SysWOW64\                                                                                          |
|75A40000|nsi.dll             |NSI User-mode interface DLL                        |6.1.7601.23889  |8704    |2017-08-11 13:19:39|C:\Windows\SysWOW64\                                                                                          |
|75A50000|sechost.dll         |Host for SCM/SDDL/LSA Lookup APIs                  |6.1.7601.18869  |92160   |2015-05-26 01:01:39|C:\Windows\SysWOW64\                                                                                          |
|75A70000|msasn1.dll          |ASN.1 Runtime APIs                                 |6.1.7601.17514  |34304   |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|75A90000|shell32.dll         |Windows Shell Common Dll                           |6.1.7601.24468  |12880384|2019-05-25 06:59:03|C:\Windows\SysWOW64\                                                                                          |
|76B20000|normaliz.dll        |Unicode Normalization DLL                          |6.1.7600.16385  |2048    |2009-07-14 08:09:00|C:\Windows\SysWOW64\                                                                                          |
|76B30000|shlwapi.dll         |Shell Light-weight Utility Library                 |6.1.7601.17514  |350208  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|76B90000|user32.dll          |Multi-User Windows USER API Client DLL             |6.1.7601.24545  |834048  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|76C90000|kernel32.dll        |Windows NT BASE API Client DLL                     |6.1.7601.24545  |1114112 |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|76DF0000|KERNELBASE.dll      |Windows NT BASE API Client DLL                     |6.1.7601.24545  |275968  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|770C0000|msvcrt.dll          |Windows NT CRT DLL                                 |7.0.7601.17744  |690688  |2011-12-16 14:52:58|C:\Windows\SysWOW64\                                                                                          |
|77180000|oleaut32.dll        |                                                   |6.1.7601.24537  |583680  |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|77220000|imagehlp.dll        |Windows NT Image Helper                            |6.1.7601.18288  |159232  |2013-10-19 08:36:59|C:\Windows\SysWOW64\                                                                                          |
|77320000|psapi.dll           |Process Status Helper                              |6.1.7600.16385  |6144    |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|77330000|gdi32.dll           |GDI Client DLL                                     |6.1.7601.24540  |313344  |2019-11-28 10:29:33|C:\Windows\SysWOW64\                                                                                          |
|773D0000|advapi32.dll        |Advanced Windows 32 Base API                       |6.1.7601.24545  |644096  |2020-01-03 10:37:31|C:\Windows\SysWOW64\                                                                                          |
|77490000|lpk.dll             |Language Pack                                      |6.1.7601.24537  |25600   |2019-11-15 09:29:52|C:\Windows\SysWOW64\                                                                                          |
|774A0000|devobj.dll          |Device Information Set DLL                         |6.1.7601.17621  |64512   |2011-05-24 17:40:05|C:\Windows\SysWOW64\                                                                                          |
|774C0000|msctf.dll           |MSCTF Server DLL                                   |6.1.7601.24520  |836608  |2019-08-29 09:52:30|C:\Windows\SysWOW64\                                                                                          |
|77590000|ws2_32.dll          |Windows Socket 2.0 32-Bit DLL                      |6.1.7601.23451  |206336  |2016-05-11 22:19:26|C:\Windows\SysWOW64\                                                                                          |
|775D0000|cfgmgr32.dll        |Configuration Manager DLL                          |6.1.7601.17621  |145920  |2011-05-24 17:39:38|C:\Windows\SysWOW64\                                                                                          |
|77660000|usp10.dll           |Uniscribe Unicode script processor                 |1.626.7601.24535|628224  |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|77AE0000|ntdll.dll           |NT Layer DLL                                       |6.1.7601.24545  |1320248 |2020-01-03 10:41:21|C:\Windows\SysWOW64\                                                                                          |
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Processes Information:
----------------------


Assembler Information:
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $BD1000, Allocation Base: $400000, Region Size: 3776512
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; IdStack.TIdStack.RaiseSocketError (Line=857 - Offset=44)
; --------------------------------------------------------
00BD10D8  8D4DF4      LEA  ECX, [EBP-$0C]
00BD10DB  8B55F8      MOV  EDX, [EBP-8]
00BD10DE  8B45FC      MOV  EAX, [EBP-4]
00BD10E1  8B18        MOV  EBX, [EAX]
00BD10E3  FF5348      CALL DWORD PTR [EBX+$48]
00BD10E6  8B45F4      MOV  EAX, [EBP-$0C]
00BD10E9  50          PUSH EAX
00BD10EA  8B4DF8      MOV  ECX, [EBP-8]
00BD10ED  B201        MOV  DL, 1
00BD10EF  A168DEBC00  MOV  EAX, [$00BCDE68]     ; Delphi Class "EIdNotASocket"
00BD10F4  E81FF4FFFF  CALL -$0BE1               ; ($00BD0518) IdStack.EIdSocketError.CreateError
00BD10F9  E82E9D83FF  CALL -$7C62D2             ; ($0040AE2C) System._RaiseExcept
;
; Line=894 - Offset=82
; --------------------
00BD10FE  8D4DF0      LEA  ECX, [EBP-$10]
00BD1101  8B55F8      MOV  EDX, [EBP-8]
00BD1104  8B45FC      MOV  EAX, [EBP-4]
00BD1107  8B18        MOV  EBX, [EAX]
00BD1109  FF5348      CALL DWORD PTR [EBX+$48]
00BD110C  8B45F0      MOV  EAX, [EBP-$10]
00BD110F  50          PUSH EAX
00BD1110  8B4DF8      MOV  ECX, [EBP-8]
00BD1113  B201        MOV  DL, 1
00BD1115  A1BCDBBC00  MOV  EAX, [$00BCDBBC]     ; Delphi Class "EIdSocketError"
00BD111A  E8F9F3FFFF  CALL -$0C07               ; ($00BD0518) IdStack.EIdSocketError.CreateError
;
; Line=894 - Offset=115
; ---------------------
00BD111F  E8089D83FF  CALL -$7C62F8             ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=895 - Offset=120
; ---------------------
00BD1124  33C0        XOR  EAX, EAX
00BD1126  5A          POP  EDX
00BD1127  59          POP  ECX
00BD1128  59          POP  ECX
00BD1129  648910      MOV  FS:[EAX], EDX
00BD112C  684611BD00  PUSH $BD1146              ; ($00BD1146) IdStack.TIdStack.RaiseSocketError (Line=895) Data as ANSI: '[‹å]ÃU‹ìƒÄÜS3Û‰]ð‰]ì‰Mô‰Uø‰Eü3À...'; Data as UNICODE: '譛工郃譕菬�㍓觛嶉觬喉觸ﱅ쀳...' IdStack.TIdStack.RaiseSocketError (Line=895)
00BD1131  8D45F0      LEA  EAX, [EBP-$10]
00BD1134  BA02000000  MOV  EDX, 2
00BD1139  E8CEA683FF  CALL -$7C5932             ; ($0040B80C) System._UStrArrayClr

Registers:
-----------------------------
EAX: 0A3CF7DC   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0A3CF82C
EDX: 00000000   ESP: 0A3CF7DC
EIP: 76DFC5AF   FLG: 00000202
EXP: 00BD111F   STK: 0A3CF7DC

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0A42D614: 00000010   00BD111F: E8 08 9D 83 FF 33 C0 5A 59 59 64 89 10 68 46 11  .....3.ZYYd..hF.
0A42D610: 0042FF98   00BD112F: BD 00 8D 45 F0 BA 02 00 00 00 E8 CE A6 83 FF C3  ...E............
0A42D60C: 0A3CF824   00BD113F: E9 44 9B 83 FF EB EB 5B 8B E5 5D C3 90 55 8B EC  .D.....[..]..U..
0A42D608: 0A3F6780   00BD114F: 83 C4 DC 53 33 DB 89 5D F0 89 5D EC 89 4D F4 89  ...S3..]..]..M..
0A42D604: 0A3CF884   00BD115F: 55 F8 89 45 FC 33 C0 55 68 7C 15 BD 00 64 FF 30  U..E.3.Uh|...d.0
0A42D600: 0A3CF8A4   00BD116F: 64 89 20 8B 45 F4 E8 32 A6 83 FF 8B 45 F8 05 EC  d. .E..2....E...
0A42D5FC: 00000438   00BD117F: D8 FF FF 83 F8 3E 0F 87 92 03 00 00 FF 24 85 92  .....>.......$..
0A42D5F8: 00000010   00BD118F: 11 BD 00 8E 12 BD 00 1D 15 BD 00 1D 15 BD 00 1D  ................
0A42D5F4: 00BCA474   00BD119F: 15 BD 00 1D 15 BD 00 A0 12 BD 00 1D 15 BD 00 1D  ................
0A42D5F0: 0A3F6780   00BD11AF: 15 BD 00 1D 15 BD 00 B2 12 BD 00 C4 12 BD 00 1D  ................
0A42D5EC: 00BD1124   00BD11BF: 15 BD 00 1D 15 BD 00 1D 15 BD 00 1D 15 BD 00 1D  ................
0A42D5E8: 00000007   00BD11CF: 15 BD 00 1D 15 BD 00 1D 15 BD 00 D6 12 BD 00 1D  ................
0A42D5E4: 76DFC5AF   00BD11DF: 15 BD 00 E8 12 BD 00 1D 15 BD 00 1D 15 BD 00 1D  ................
0A42D5E0: 00000000   00BD11EF: 15 BD 00 1D 15 BD 00 1D 15 BD 00 1D 15 BD 00 1D  ................
0A42D5DC: 00000001   00BD11FF: 15 BD 00 1D 15 BD 00 1D 15 BD 00 1D 15 BD 00 FA  ................
0A42D5D8: 0EEDFADE   00BD120F: 12 BD 00 0C 13 BD 00 1E 13 BD 00 30 13 BD 00 42  ...........0...B



