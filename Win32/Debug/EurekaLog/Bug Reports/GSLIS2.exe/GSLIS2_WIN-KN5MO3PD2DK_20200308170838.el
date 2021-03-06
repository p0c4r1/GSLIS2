EurekaLog 7.5.0.0  

Exception:
-----------------------------------------------------------------------------------------------------
  2.2 Address: 00409D5E
  2.5 Type   : EAccessViolation
  2.6 Message: Access violation at address 00409D5E in module 'GSLIS2.exe'. Read of address A7A3CC00.
  2.7 ID     : 28C20000
  2.11 Sent  : 0

User:
-------------------------
  3.2 Name : Windows User
  3.3 Email: 

Steps to reproduce:
------------
  8.1 Text: 


Call Stack Information:
--------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack   |Address |Module    |Offset  |Unit               |Class              |Procedure/Method          |Line      |
--------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=8988; Parent=8000; Priority=0                                                                                 |
|Class=TIdThreadWithTask; Name=[Unnamed thread 8988] Kind: TThread. Thread function: uIdThread.TIdThread.Execute. Thread caller: uIdThread.TIdThread.Create [535] (uIdThread.TIdThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                             |
|Comment=                                                                                                                            |
|------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00409D5E|GSLIS2.exe|00009D5E|System             |TObject            |InheritsFrom              |16422[2]  |
|00000020|04     |0B45F934|00409C62|GSLIS2.exe|00009C62|System             |                   |_IsClass                  |16131[1]  |
|00000020|03     |0B45F940|008993E3|GSLIS2.exe|004993E3|uniGUIClasses      |                   |PerformBeforeLoadCompleted|          |
|00000020|03     |0B45F96C|00899615|GSLIS2.exe|00499615|uniGUIClasses      |TUniContainer      |SetComponentsBeforeLoaded |          |
|00000020|03     |0B45F984|00899832|GSLIS2.exe|00499832|uniGUIClasses      |TUniContainer      |DoBeforeLoadCompleted     |          |
|00000020|03     |0B45F98C|008693B7|GSLIS2.exe|004693B7|uniGUIJSForm       |TUniBaseJSForm     |DoHandle                  |          |
|00000020|03     |0B45F9A8|0087D582|GSLIS2.exe|0047D582|uniGUIForm         |TUniBaseForm       |DoHandle                  |          |
|00000020|03     |0B45F9AC|008B1B2B|GSLIS2.exe|004B1B2B|uniGUIApplication  |TUniGUIApplication |SignalHandled             |          |
|00000020|03     |0B45F9D0|008BAEF2|GSLIS2.exe|004BAEF2|uniGUIApplication  |TUniGUISession     |AfterHandleRequest        |          |
|00000020|03     |0B45FAA4|0083D7F3|GSLIS2.exe|0043D7F3|ExtHTTPServer      |TIdExtSession      |HandleRequest             |          |
|00000020|03     |0B45FADC|008B5CB5|GSLIS2.exe|004B5CB5|uniGUIApplication  |TUniGUISession     |HandleWebRequest          |          |
|00000020|03     |0B45FC08|008B6603|GSLIS2.exe|004B6603|uniGUIApplication  |TUniGUISession     |HandleRequest             |          |
|00000020|03     |0B45FC28|008EAA05|GSLIS2.exe|004EAA05|uniGUIServer       |TUniGUIServerModule|HandleHTTPRequest         |          |
|00000020|03     |0B45FC90|008EB03F|GSLIS2.exe|004EB03F|uniGUIServer       |TUniWebServer      |CommandGet                |          |
|00000020|04     |0B45FD10|008341DC|GSLIS2.exe|004341DC|uIdCustomHTTPServer|TIdCustomHTTPServer|DoCommandGet              |1011[2]   |
|00000020|04     |0B45FD2C|00835368|GSLIS2.exe|00435368|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                 |1463[187] |
|00000020|04     |0B45FD38|0083538D|GSLIS2.exe|0043538D|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                 |1465[189] |
|00000020|04     |0B45FD68|008355D8|GSLIS2.exe|004355D8|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                 |1515[239] |
|00000020|04     |0B45FD74|0083564D|GSLIS2.exe|0043564D|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                 |1527[251] |
|00000020|04     |0B45FE58|00804465|GSLIS2.exe|00404465|uIdContext         |TIdContext         |Run                       |185[2]    |
|00000020|04     |0B45FE5C|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock          |1320[2]   |
|00000020|04     |0B45FE6C|00802EB2|GSLIS2.exe|00402EB2|uIdTask            |TIdTask            |DoRun                     |136[1]    |
|00000020|04     |0B45FE7C|0081E519|GSLIS2.exe|0041E519|uIdThread          |TIdThreadWithTask  |Run                       |697[1]    |
|00000020|04     |0B45FE88|0081DD07|GSLIS2.exe|0041DD07|uIdThread          |TIdThread          |Execute                   |428[50]   |
|00000020|04     |0B45FEEC|00406FB4|GSLIS2.exe|00006FB4|System             |                   |_FreeMem                  |4439[20]  |
|00000020|04     |0B45FEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes     |                   |ThreadProc                |14161[21] |
|00000020|04     |0B45FF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock          |1320[2]   |
|00000020|04     |0B45FF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock          |1320[2]   |
|7FFFFFFE|04     |00000000|0081DF2E|GSLIS2.exe|0041DF2E|uIdThread          |TIdThread          |Create                    |535[37]   |
--------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48665062|2020-03-08 17:07:29|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|54910000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|55410000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|5F130000|hhctrl.ocx                              |Microsoft® HTML Help Control                       |6.1.7601.24134  |523776  |2018-04-18 22:51:41|C:\Windows\System32\                                                                                          |
|60650000|powrprof.dll                            |Power Profile Helper DLL                           |6.1.7600.16385  |145408  |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|656F0000|winsta.dll                              |Winstation Library                                 |6.1.7601.18540  |157696  |2014-07-17 08:40:03|C:\Windows\System32\                                                                                          |
|65750000|oleacc.dll                              |Active Accessibility Core Component                |7.0.0.0         |233472  |2011-08-27 11:26:27|C:\Windows\System32\                                                                                          |
|662F0000|security.dll                            |Security Support Provider Interface                |6.1.7600.16385  |4608    |2009-07-14 08:09:53|C:\Windows\System32\                                                                                          |
|66310000|schannel.dll                            |TLS / SSL Security Provider                        |6.1.7601.24545  |254464  |2020-01-03 10:38:42|C:\Windows\System32\                                                                                          |
|68B90000|bcryptprimitives.dll                    |Windows Cryptographic Primitives Library           |6.1.7601.23451  |249352  |2016-05-12 20:04:55|C:\Windows\SysWOW64\                                                                                          |
|69C60000|wtsapi32.dll                            |Windows Remote Desktop Session Host Server SDK APIs|6.1.7601.17514  |40448   |2010-11-21 10:23:54|C:\Windows\System32\                                                                                          |
|6C250000|msvcp120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |454968  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|6C2D0000|msvcr120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |971064  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|6FC30000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|6FEF0000|uxtheme.dll                             |Microsoft UxTheme Library                          |6.1.7600.16385  |245760  |2009-07-14 08:11:24|C:\Windows\System32\                                                                                          |
|70DA0000|rlls.dll                                |Relevant-Knowledge                                 |4.0.21.11       |753008  |2019-03-06 00:51:10|C:\Windows\System32\                                                                                          |
|72B60000|wship6.dll                              |Winsock2 Helper DLL (TL/IPv6)                      |6.1.7600.16385  |10752   |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|72B70000|rasadhlp.dll                            |Remote Access AutoDial Helper                      |6.1.7600.16385  |11776   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|72B80000|FWPUCLNT.DLL                            |FWP/IPsec User-Mode API                            |6.1.7601.24000  |216576  |2018-01-01 09:00:02|C:\Windows\System32\                                                                                          |
|72BD0000|wshbth.dll                              |Windows Sockets Helper DLL                         |6.1.7601.17514  |36352   |2010-11-21 10:24:50|C:\Windows\System32\                                                                                          |
|72C00000|winrnr.dll                              |LDAP RnR Provider DLL                              |6.1.7600.16385  |20992   |2009-07-14 08:16:19|C:\Windows\System32\                                                                                          |
|72C50000|dnsapi.dll                              |DNS Client API DLL                                 |6.1.7601.24168  |269824  |2018-06-08 22:54:41|C:\Windows\System32\                                                                                          |
|72CA0000|pnrpnsp.dll                             |PNRP Name Space Provider                           |6.1.7600.16385  |65024   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|72CC0000|NapiNSP.dll                             |E-mail Naming Shim Provider                        |6.1.7600.16385  |52224   |2009-07-14 08:16:02|C:\Windows\System32\                                                                                          |
|72CD0000|WSHTCPIP.DLL                            |Winsock2 Helper DLL (TL/IPv4)                      |6.1.7600.16385  |9216    |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|72CE0000|mswsock.dll                             |Microsoft Windows Sockets 2.0 Service Provider     |6.1.7601.23451  |231424  |2016-05-11 22:19:16|C:\Windows\System32\                                                                                          |
|72D30000|nlaapi.dll                              |Network Location Awareness 2                       |6.1.7601.24000  |52224   |2018-01-01 09:00:07|C:\Windows\System32\                                                                                          |
|72E40000|winspool.drv                            |Windows Spooler Driver                             |6.1.7601.24383  |321536  |2019-02-16 12:50:54|C:\Windows\System32\                                                                                          |
|73050000|comctl32.dll                            |User Experience Controls Library                   |6.10.7601.24483 |1681920 |2019-06-05 02:07:00|C:\Windows\winsxs\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.7601.24483_none_2b200f664577e14b\|
|731F0000|winmm.dll                               |MCI API DLL                                        |6.1.7601.17514  |194048  |2010-11-21 10:24:16|C:\Windows\System32\                                                                                          |
|73240000|rsaenh.dll                              |Microsoft Enhanced Cryptographic Provider          |6.1.7600.16385  |242936  |2009-07-14 08:17:54|C:\Windows\System32\                                                                                          |
|73280000|cryptsp.dll                             |Cryptographic Service Provider API                 |6.1.7601.24499  |80896   |2019-06-12 22:19:54|C:\Windows\System32\                                                                                          |
|732A0000|ntmarta.dll                             |Windows NT MARTA provider                          |6.1.7600.16385  |121856  |2009-07-14 08:16:11|C:\Windows\System32\                                                                                          |
|733B0000|version.dll                             |Version Checking and File Installation Libraries   |6.1.7600.16385  |21504   |2009-07-14 08:16:17|C:\Windows\System32\                                                                                          |
|73470000|winnsi.dll                              |Network Store Information RPC interface            |6.1.7601.23889  |16384   |2017-08-11 13:19:44|C:\Windows\System32\                                                                                          |
|73480000|IPHLPAPI.DLL                            |IP Helper API                                      |6.1.7601.17514  |103936  |2010-11-21 10:24:32|C:\Windows\System32\                                                                                          |
|737A0000|bcrypt.dll                              |Windows Cryptographic Primitives Library (Wow64)   |6.1.7601.24545  |82944   |2020-01-03 10:38:54|C:\Windows\System32\                                                                                          |
|73840000|secur32.dll                             |Security Support Provider Interface                |6.1.7601.24545  |22016   |2020-01-03 10:38:43|C:\Windows\System32\                                                                                          |
|74220000|dbghelp.dll                             |Windows Image Helper                               |6.1.7601.17514  |854016  |2010-11-21 10:24:09|C:\Windows\System32\                                                                                          |
|746D0000|msftedit.dll                            |Rich Text Edit Control, v4.1                       |5.41.21.2510    |592384  |2010-11-21 10:24:14|C:\Windows\System32\                                                                                          |
|74980000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
|74D40000|CRYPTBASE.dll                           |Base cryptographic API DLL                         |6.1.7601.24545  |36352   |2020-01-03 10:02:56|C:\Windows\SysWOW64\                                                                                          |
|74D50000|sspicli.dll                             |Security Support Provider Interface                |6.1.7601.24545  |96768   |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|74DB0000|setupapi.dll                            |Windows Setup API                                  |6.1.7601.17514  |1667584 |2010-11-21 10:23:51|C:\Windows\SysWOW64\                                                                                          |
|74F50000|lpk.dll                                 |Language Pack                                      |6.1.7601.24537  |25600   |2019-11-15 09:29:52|C:\Windows\SysWOW64\                                                                                          |
|74F60000|user32.dll                              |Multi-User Windows USER API Client DLL             |6.1.7601.24545  |834048  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|75060000|oleaut32.dll                            |                                                   |6.1.7601.24537  |583680  |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|75100000|api-ms-win-downlevel-shlwapi-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |9728    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|75110000|rpcrt4.dll                              |Remote Procedure Call Runtime                      |6.1.7601.24545  |666112  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|75200000|shlwapi.dll                             |Shell Light-weight Utility Library                 |6.1.7601.17514  |350208  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|75260000|imm32.dll                               |Multi-User Windows IMM32 API Client DLL            |6.1.7601.17514  |119808  |2010-11-21 10:24:25|C:\Windows\System32\                                                                                          |
|752C0000|api-ms-win-downlevel-advapi32-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |10752   |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|752D0000|nsi.dll                                 |NSI User-mode interface DLL                        |6.1.7601.23889  |8704    |2017-08-11 13:19:39|C:\Windows\SysWOW64\                                                                                          |
|752E0000|iertutil.dll                            |Run time utility for Internet Explorer             |11.0.9600.19597 |2304000 |2019-12-17 07:33:53|C:\Windows\SysWOW64\                                                                                          |
|75520000|ws2_32.dll                              |Windows Socket 2.0 32-Bit DLL                      |6.1.7601.23451  |206336  |2016-05-11 22:19:26|C:\Windows\SysWOW64\                                                                                          |
|75560000|msctf.dll                               |MSCTF Server DLL                                   |6.1.7601.24520  |836608  |2019-08-29 09:52:30|C:\Windows\SysWOW64\                                                                                          |
|75630000|api-ms-win-downlevel-user32-l1-1-0.dll  |ApiSet Stub DLL                                    |6.2.9200.16492  |4096    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|75640000|normaliz.dll                            |Unicode Normalization DLL                          |6.1.7600.16385  |2048    |2009-07-14 08:09:00|C:\Windows\SysWOW64\                                                                                          |
|75650000|advapi32.dll                            |Advanced Windows 32 Base API                       |6.1.7601.24545  |644096  |2020-01-03 10:37:31|C:\Windows\SysWOW64\                                                                                          |
|75700000|devobj.dll                              |Device Information Set DLL                         |6.1.7601.17621  |64512   |2011-05-24 17:40:05|C:\Windows\SysWOW64\                                                                                          |
|75720000|Wldap32.dll                             |Win32 LDAP API DLL                                 |6.1.7601.23889  |271360  |2017-08-11 13:19:44|C:\Windows\SysWOW64\                                                                                          |
|75770000|usp10.dll                               |Uniscribe Unicode script processor                 |1.626.7601.24535|628224  |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|75810000|crypt32.dll                             |Crypto API32                                       |6.1.7601.24542  |1177088 |2019-12-10 15:38:34|C:\Windows\SysWOW64\                                                                                          |
|75940000|wininet.dll                             |Internet Extensions for Win32                      |11.0.9600.19597 |4387840 |2019-12-17 06:43:02|C:\Windows\SysWOW64\                                                                                          |
|75D80000|sechost.dll                             |Host for SCM/SDDL/LSA Lookup APIs                  |6.1.7601.18869  |92160   |2015-05-26 01:01:39|C:\Windows\SysWOW64\                                                                                          |
|75DA0000|msvcrt.dll                              |Windows NT CRT DLL                                 |7.0.7601.17744  |690688  |2011-12-16 14:52:58|C:\Windows\SysWOW64\                                                                                          |
|75E50000|msasn1.dll                              |ASN.1 Runtime APIs                                 |6.1.7601.17514  |34304   |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|75FB0000|ole32.dll                               |Microsoft OLE for Windows                          |6.1.7601.24537  |1425920 |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|76110000|api-ms-win-downlevel-normaliz-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |2560    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|76120000|gdi32.dll                               |GDI Client DLL                                     |6.1.7601.24540  |313344  |2019-11-28 10:29:33|C:\Windows\SysWOW64\                                                                                          |
|76250000|cfgmgr32.dll                            |Configuration Manager DLL                          |6.1.7601.17621  |145920  |2011-05-24 17:39:38|C:\Windows\SysWOW64\                                                                                          |
|76310000|profapi.dll                             |User Profile Basic API                             |6.1.7600.16385  |31744   |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|763B0000|KERNELBASE.dll                          |Windows NT BASE API Client DLL                     |6.1.7601.24545  |275968  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|76400000|comdlg32.dll                            |Common Dialogs DLL                                 |6.1.7601.17514  |485888  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|76480000|imagehlp.dll                            |Windows NT Image Helper                            |6.1.7601.18288  |159232  |2013-10-19 08:36:59|C:\Windows\SysWOW64\                                                                                          |
|764B0000|psapi.dll                               |Process Status Helper                              |6.1.7600.16385  |6144    |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|764C0000|api-ms-win-downlevel-version-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |3072    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|764D0000|kernel32.dll                            |Windows NT BASE API Client DLL                     |6.1.7601.24545  |1114112 |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|765E0000|shell32.dll                             |Windows Shell Common Dll                           |6.1.7601.24468  |12880384|2019-05-25 06:59:03|C:\Windows\SysWOW64\                                                                                          |
|77230000|userenv.dll                             |Userenv                                            |6.1.7601.24535  |83968   |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|77630000|ntdll.dll                               |NT Layer DLL                                       |6.1.7601.24545  |1320248 |2020-01-03 10:41:21|C:\Windows\SysWOW64\                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Processes Information:
----------------------


Assembler Information:
--------------------------------------------------------------------------------------------
; Base Address: $409000, Allocation Base: $400000, Region Size: 11927552
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; System.TObject.InheritsFrom (Line=16420 - Offset=0)
; ---------------------------------------------------
00409D5C  EB02    JMP  +2             ; ($00409D60) System.TObject.InheritsFrom (Line=16424)
;
; Line=16422 - Offset=2
; ---------------------
00409D5E  8B00    MOV  EAX, [EAX]     ; <-- EXCEPTION
;
; Line=16424 - Offset=4
; ---------------------
00409D60  39D0    CMP  EAX, EDX
;
; Line=16425 - Offset=6
; ---------------------
00409D62  7408    JZ   +8             ; ($00409D6C) System.TObject.InheritsFrom (Line=16431)
;
; Line=16426 - Offset=8
; ---------------------
00409D64  8B40D0  MOV  EAX, [EAX-$30]
;
; Line=16427 - Offset=11
; ----------------------
00409D67  85C0    TEST EAX, EAX
;
; Line=16428 - Offset=13
; ----------------------
00409D69  75F3    JNZ  -$0D           ; ($00409D5E) System.TObject.InheritsFrom (Line=16422)

Registers:
-----------------------------
EAX: A7A3CC00   EDI: 00000002
EBX: 06509650   ESI: 00867DA8
ECX: 0B45F968   EBP: 0B45F968
EDX: 00867DA8   ESP: 0B45F934
EIP: 00409D5E   FLG: 00010286
EXP: 00409D5E   STK: 0B45F934

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0B0B3FB4: 0B45F980   00409D5E: 8B 00 39 D0 74 08 8B 40 D0 85 C0 75 F3 C3 B0 01  ..9.t..@...u....
0B0B3FB0: 0089961A   00409D6E: C3 90 83 C0 B8 8B 00 C3 8B C0 B8 FF FF 00 80 C3  ................
0B0B3FAC: 0B45F980   00409D7E: 8B C0 53 56 8B F2 8B D8 8B D6 8B 03 E8 9D F9 FF  ..SV............
0B0B3FA8: 00000012   00409D8E: FF 5E 5B C3 8B C0 C3 8D 40 00 C3 8D 40 00 C3 8D  .^[.....@...@...
0B0B3FA4: 06509650   00409D9E: 40 00 52 66 8B 12 66 09 D2 74 19 66 81 FA 00 C0  @.Rf..f..t.f....
0B0B3FA0: 06509614   00409DAE: 73 12 50 8B 00 E8 40 FF FF FF 89 C1 58 85 C9 74  s.P...@.....X..t
0B0B3F9C: 00000056   00409DBE: 03 5A FF E1 5A 8B 08 FF 61 F0 C3 8D 40 00 53 56  .Z..Z...a...@.SV
0B0B3F98: 05B66400   00409DCE: 81 C4 00 FC FF FF 8B DA 68 00 01 00 00 8D 54 24  ........h.....T$
0B0B3F94: 00000002   00409DDE: 04 52 0F B6 10 52 40 50 6A 00 68 E9 FD 00 00 E8  .R...R@Pj.h.....
0B0B3F90: 0B45F968   00409DEE: EE B1 FF FF 8B F0 68 00 01 00 00 8D 84 24 04 02  ......h......$..
0B0B3F8C: 00899492   00409DFE: 00 00 50 0F B6 03 50 8D 43 01 50 6A 00 68 E9 FD  ..P...P.C.Pj.h..
0B0B3F88: 0B45F990   00409E0E: 00 00 E8 CB B1 FF FF 8B D8 53 8D 84 24 04 02 00  .........S..$...
0B0B3F84: 008993E8   00409E1E: 00 50 56 8D 44 24 0C 50 6A 01 A1 08 D9 F8 00 50  .PV.D$.Pj......P
0B0B3F80: 00000056   00409E2E: E8 F5 B1 FF FF 83 F8 02 0F 94 C0 81 C4 00 04 00  ................
0B0B3F7C: 05B66400   00409E3E: 00 5E 5B C3 8B C0 53 56 57 31 C9 31 FF 8A 1A EB  .^[...SVW1.1....
0B0B3F78: 00409C67   00409E4E: 02 8B 00 8B 70 C0 85 F6 74 19 66 8B 3E 85 FF 74  ....p...t.f.>..t



