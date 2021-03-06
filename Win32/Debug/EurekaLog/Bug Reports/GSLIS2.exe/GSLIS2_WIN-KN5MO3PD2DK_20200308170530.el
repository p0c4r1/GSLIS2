EurekaLog 7.5.0.0  

Exception:
-----------------------------------------------------------------------------------------------------
  2.2 Address: 009C1C3B
  2.5 Type   : EAccessViolation
  2.6 Message: Access violation at address 009C1C3B in module 'GSLIS2.exe'. Read of address 0AA60018.
  2.7 ID     : 46D10000
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
|*Exception Thread: ID=4236; Parent=6324; Priority=0                                                                               |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 4236] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                           |
|Comment=                                                                                                                          |
|----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|009C1C3B|GSLIS2.exe|005C1C3B|FireDAC.Comp.Client |TFDRdbmsDataSet        |SetConnection       |10307[2] |
|00000020|04     |0AA5FAC4|00C57FAD|GSLIS2.exe|00857FAD|UnitQz              |                       |loadZpl             |24[1]    |
|00000020|04     |0AA5FAE8|00C587E7|GSLIS2.exe|008587E7|UnitQz              |                       |printLabel          |111[26]  |
|00000020|04     |0AA5FB84|00EEFE3C|GSLIS2.exe|00AEFE3C|UnitFOStatus        |TfrmFOStatus           |edLblClick          |450[26]  |
|00000020|03     |0AA5FBF0|008908F0|GSLIS2.exe|004908F0|uniGUIClasses       |TUniControl            |DoClick             |         |
|00000020|03     |0AA5FBF8|00A7B8BF|GSLIS2.exe|0067B8BF|uniButton           |TUniCustomButton       |DoClick             |         |
|00000020|03     |0AA5FC08|00A5FC3A|GSLIS2.exe|0065FC3A|uniTimer            |TUniTimer              |Prepare             |         |
|00000020|03     |0AA5FC14|00A7AED0|GSLIS2.exe|0067AED0|uniButton           |TUniCustomButton       |ClickHandler        |         |
|00000020|03     |0AA5FC2C|00873997|GSLIS2.exe|00473997|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |         |
|00000020|03     |0AA5FC84|008922B1|GSLIS2.exe|004922B1|uniGUIClasses       |TUniControl            |HandleEventIntercept|         |
|00000020|03     |0AA5FCCC|008C047D|GSLIS2.exe|004C047D|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |         |
|00000020|03     |0AA5FD18|008B3067|GSLIS2.exe|004B3067|uniGUIApplication   |TUniGUISession         |ProcessEventQueue   |         |
|00000020|03     |0AA5FD24|008B31AF|GSLIS2.exe|004B31AF|uniGUIApplication   |TUniGUISession         |ProcessEvents       |         |
|00000020|03     |0AA5FD5C|0086ABB7|GSLIS2.exe|0046ABB7|uniGUIJSForm        |TUniBaseJSForm         |ShowModal           |         |
|00000020|03     |0AA5FD8C|0087CD9B|GSLIS2.exe|0047CD9B|uniGUIForm          |TUniBaseForm           |ShowModal           |         |
|00000020|04     |0AA5FD90|00F246EF|GSLIS2.exe|00B246EF|Main                |TMainForm              |mnFOStatusClick     |146[1]   |
|00000020|03     |0AA5FDA0|00864F27|GSLIS2.exe|00464F27|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick   |         |
|00000020|03     |0AA5FDBC|00873997|GSLIS2.exe|00473997|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |         |
|00000020|03     |0AA5FE14|008922B1|GSLIS2.exe|004922B1|uniGUIClasses       |TUniControl            |HandleEventIntercept|         |
|00000020|03     |0AA5FE5C|008C047D|GSLIS2.exe|004C047D|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |         |
|00000020|03     |0AA5FEA8|008C0667|GSLIS2.exe|004C0667|uniGUISessionManager|TUniSessionWorkerThread|Execute             |         |
|00000020|04     |0AA5FEE4|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|00000020|04     |0AA5FEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes      |                       |ThreadProc          |14161[21]|
|00000020|04     |0AA5FF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|00000020|04     |0AA5FF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|7FFFFFFE|03     |00000000|008C0144|GSLIS2.exe|004C0144|uniGUISessionManager|TUniSessionWorkerThread|Create              |         |
------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48664426|2020-03-08 17:02:11|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|54E90000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
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
|74990000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
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
-----------------------------------------------------------------------------------------------------------------------------
; Base Address: $9C1000, Allocation Base: $400000, Region Size: 5931008
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; FireDAC.Comp.TFDRdbmsDataSet.SetConnection (Line=10305 - Offset=0)
; ------------------------------------------------------------------
009C1C24  53            PUSH EBX
009C1C25  56            PUSH ESI
009C1C26  8BF2          MOV  ESI, EDX
009C1C28  8BD8          MOV  EBX, EAX
;
; Line=10306 - Offset=6
; ---------------------
009C1C2A  8BC3          MOV  EAX, EBX
009C1C2C  E8D3FFFFFF    CALL -$2D                       ; ($009C1C04) FireDAC.Comp.TFDRdbmsDataSet.GetConnection
009C1C31  3BF0          CMP  ESI, EAX
009C1C33  741A          JZ   +$1A                       ; ($009C1C4F) FireDAC.Comp.TFDRdbmsDataSet.SetConnection (Line=10310)
;
; Line=10307 - Offset=17
; ----------------------
009C1C35  B201          MOV  DL, 1
009C1C37  8BC3          MOV  EAX, EBX
009C1C39  8B08          MOV  ECX, [EAX]
;
; Line=10307 - Offset=23
; ----------------------
009C1C3B  FF912C040000  CALL DWORD PTR [ECX+$0000042C]  ; <-- EXCEPTION
;
; Line=10308 - Offset=29
; ----------------------
009C1C41  8BC3          MOV  EAX, EBX
009C1C43  E8B8D6FFFF    CALL -$2948                     ; ($009BF300) FireDAC.Comp.TFDAdaptedDataSet.GetCommand
009C1C48  8BD6          MOV  EDX, ESI
009C1C4A  E8D16FFFFF    CALL -$902F                     ; ($009B8C20) FireDAC.Comp.TFDCustomCommand.SetConnection
;
; Line=10310 - Offset=43
; ----------------------
009C1C4F  5E            POP  ESI
009C1C50  5B            POP  EBX

Registers:
-----------------------------
EAX: 0AA5FB80   EDI: 0B18550C
EBX: 0AA5FB80   ESI: 0648F930
ECX: 0AA5FBEC   EBP: 0AA5FAE4
EDX: 0AA5FE01   ESP: 0AA5FABC
EIP: 009C1C3B   FLG: 00010283
EXP: 009C1C3B   STK: 0AA5FABC

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0AEE279C: 0663A450   009C1C3B: FF 91 2C 04 00 00 8B C3 E8 B8 D6 FF FF 8B D6 E8  ..,.............
0AEE2798: 0AA5FB80   009C1C4B: D1 6F FF FF 5E 5B C3 8B C0 53 56 8B F2 8B D8 8B  .o..^[...SV.....
0AEE2794: 00C5899E   009C1C5B: C3 E8 9F D6 FF FF 85 C0 75 0A 8B C6 E8 40 9B A4  ........u....@..
0AEE2790: 0AA5FBA4   009C1C6B: FF 5E 5B C3 8B C3 E8 8A D6 FF FF 8B 50 48 8B C6  .^[.........PH..
0AEE278C: 00C587EC   009C1C7B: E8 0C 9F A4 FF 5E 5B C3 90 55 8B EC 6A 00 53 56  .....^[..U..j.SV
0AEE2788: 0AA5FB80   009C1C8B: 8B F2 8B D8 33 C0 55 68 D7 1C 9C 00 64 FF 30 64  ....3.Uh....d.0d
0AEE2784: 0AA5FB6C   009C1C9B: 89 20 8D 55 FC 8B C3 E8 AD FF FF FF 8B 45 FC 8B  . .U.........E..
0AEE2780: 0AA5FB80   009C1CAB: D6 E8 17 B0 A4 FF 74 0E 8B C3 E8 46 D6 FF FF 8B  ......t....F....
0AEE277C: 00000000   009C1CBB: D6 E8 B3 6F FF FF 33 C0 5A 59 59 64 89 10 68 DE  ...o..3.ZYYd..h.
0AEE2778: 00000000   009C1CCB: 1C 9C 00 8D 45 FC E8 D6 9A A4 FF C3 E9 AC 8F A4  ....E...........
0AEE2774: 0AA5FAE4   009C1CDB: FF EB F0 5E 5B 59 5D C3 90 53 8B D8 8B C3 E8 06  ...^[Y]..S......
0AEE2770: 00C5803A   009C1CEB: 00 00 00 34 01 5B C3 8B C0 55 8B EC 6A 00 53 8B  ...4.[...U..j.S.
0AEE276C: 0AA5FAEC   009C1CFB: D8 33 C0 55 68 70 1D 9C 00 64 FF 30 64 89 20 8B  .3.Uhp...d.0d. .
0AEE2768: 00C57FB2   009C1D0B: C3 E8 F3 FE FF FF 85 C0 74 3D 8B C3 E8 E8 FE FF  ........t=......
0AEE2764: 0663A450   009C1D1B: FF 83 78 08 00 74 30 8B C3 E8 DB FE FF FF 83 78  ..x..t0........x
0AEE2760: 0663A450   009C1D2B: 04 00 74 23 8B C3 E8 CE FE FF FF 8B 80 80 00 00  ..t#............



