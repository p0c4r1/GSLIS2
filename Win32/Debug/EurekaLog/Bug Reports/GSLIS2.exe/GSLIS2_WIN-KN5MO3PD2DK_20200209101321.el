EurekaLog 7.5.0.0  

Exception:
-----------------------------------------------
  2.2 Address: 00426B51
  2.5 Type   : EConvertError
  2.6 Message: '' is not a valid integer value.
  2.7 ID     : 3E0A0000
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
|*Exception Thread: ID=4700; Parent=6336; Priority=0                                                                               |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 4700] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                           |
|Comment=                                                                                                                          |
|----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00426B51|GSLIS2.exe|00026B51|System.SysUtils     |                       |ConvertErrorFmt     |5474[1]  |
|00000020|04     |0A99FB24|00428238|GSLIS2.exe|00028238|System.SysUtils     |                       |StrToInt            |8268[2]  |
|00000020|03     |0A99FB3C|00BB09AD|GSLIS2.exe|007B09AD|uniSpinEdit         |TUniCustomSpinEdit     |SetText             |         |
|00000020|04     |0A99FB58|00EE82C7|GSLIS2.exe|00AE82C7|UnitFODaftar        |TfrmFODaftar           |btnEditPasienClick  |1024[33] |
|00000020|03     |0A99FBF0|008908D4|GSLIS2.exe|004908D4|uniGUIClasses       |TUniControl            |DoClick             |         |
|00000020|03     |0A99FBF8|00A7B8A3|GSLIS2.exe|0067B8A3|uniButton           |TUniCustomButton       |DoClick             |         |
|00000020|03     |0A99FC14|00A7AEB4|GSLIS2.exe|0067AEB4|uniButton           |TUniCustomButton       |ClickHandler        |         |
|00000020|03     |0A99FC2C|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |         |
|00000020|03     |0A99FC84|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|         |
|00000020|03     |0A99FCCC|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |         |
|00000020|03     |0A99FD18|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue   |         |
|00000020|03     |0A99FD24|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents       |         |
|00000020|03     |0A99FD5C|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal           |         |
|00000020|03     |0A99FD8C|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal           |         |
|00000020|04     |0A99FD90|00F249A3|GSLIS2.exe|00B249A3|Main                |TMainForm              |mnFODaftarClick     |135[1]   |
|00000020|03     |0A99FDA0|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick   |         |
|00000020|03     |0A99FDBC|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |         |
|00000020|03     |0A99FE14|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|         |
|00000020|03     |0A99FE5C|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |         |
|00000020|03     |0A99FEA8|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager|TUniSessionWorkerThread|Execute             |         |
|00000020|04     |0A99FEE4|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|00000020|04     |0A99FEF8|004CF631|GSLIS2.exe|000CF631|System.Classes      |                       |ThreadProc          |14161[21]|
|00000020|04     |0A99FF1C|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|00000020|04     |0A99FF74|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]  |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager|TUniSessionWorkerThread|Create              |         |
------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48665117|2020-02-09 10:07:17|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|06780000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|06930000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|0F4A0000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
|0F950000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|14B60000|hhctrl.ocx                              |Microsoft® HTML Help Control                       |6.1.7601.24134  |523776  |2018-04-18 22:51:41|C:\Windows\System32\                                                                                          |
|60090000|rlls.dll                                |Relevant-Knowledge                                 |4.0.21.11       |753008  |2019-03-06 00:51:10|C:\Windows\System32\                                                                                          |
|60330000|powrprof.dll                            |Power Profile Helper DLL                           |6.1.7600.16385  |145408  |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|603A0000|oleacc.dll                              |Active Accessibility Core Component                |7.0.0.0         |233472  |2011-08-27 11:26:27|C:\Windows\System32\                                                                                          |
|659A0000|winsta.dll                              |Winstation Library                                 |6.1.7601.18540  |157696  |2014-07-17 08:40:03|C:\Windows\System32\                                                                                          |
|67620000|bcryptprimitives.dll                    |Windows Cryptographic Primitives Library           |6.1.7601.23451  |249352  |2016-05-12 20:04:55|C:\Windows\SysWOW64\                                                                                          |
|67660000|wtsapi32.dll                            |Windows Remote Desktop Session Host Server SDK APIs|6.1.7601.17514  |40448   |2010-11-21 10:23:54|C:\Windows\System32\                                                                                          |
|69110000|uxtheme.dll                             |Microsoft UxTheme Library                          |6.1.7600.16385  |245760  |2009-07-14 08:11:24|C:\Windows\System32\                                                                                          |
|6CFB0000|secur32.dll                             |Security Support Provider Interface                |6.1.7601.24545  |22016   |2020-01-03 10:38:43|C:\Windows\System32\                                                                                          |
|6FC90000|msftedit.dll                            |Rich Text Edit Control, v4.1                       |5.41.21.2510    |592384  |2010-11-21 10:24:14|C:\Windows\System32\                                                                                          |
|724B0000|wship6.dll                              |Winsock2 Helper DLL (TL/IPv6)                      |6.1.7600.16385  |10752   |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|72560000|rasadhlp.dll                            |Remote Access AutoDial Helper                      |6.1.7600.16385  |11776   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|72570000|FWPUCLNT.DLL                            |FWP/IPsec User-Mode API                            |6.1.7601.24000  |216576  |2018-01-01 09:00:02|C:\Windows\System32\                                                                                          |
|725B0000|wshbth.dll                              |Windows Sockets Helper DLL                         |6.1.7601.17514  |36352   |2010-11-21 10:24:50|C:\Windows\System32\                                                                                          |
|725C0000|winrnr.dll                              |LDAP RnR Provider DLL                              |6.1.7600.16385  |20992   |2009-07-14 08:16:19|C:\Windows\System32\                                                                                          |
|725E0000|dnsapi.dll                              |DNS Client API DLL                                 |6.1.7601.24168  |269824  |2018-06-08 22:54:41|C:\Windows\System32\                                                                                          |
|72630000|pnrpnsp.dll                             |PNRP Name Space Provider                           |6.1.7600.16385  |65024   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|72690000|NapiNSP.dll                             |E-mail Naming Shim Provider                        |6.1.7600.16385  |52224   |2009-07-14 08:16:02|C:\Windows\System32\                                                                                          |
|726A0000|WSHTCPIP.DLL                            |Winsock2 Helper DLL (TL/IPv4)                      |6.1.7600.16385  |9216    |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|726B0000|mswsock.dll                             |Microsoft Windows Sockets 2.0 Service Provider     |6.1.7601.23451  |231424  |2016-05-11 22:19:16|C:\Windows\System32\                                                                                          |
|726F0000|nlaapi.dll                              |Network Location Awareness 2                       |6.1.7601.24000  |52224   |2018-01-01 09:00:07|C:\Windows\System32\                                                                                          |
|72810000|winspool.drv                            |Windows Spooler Driver                             |6.1.7601.24383  |321536  |2019-02-16 12:50:54|C:\Windows\System32\                                                                                          |
|72A20000|comctl32.dll                            |User Experience Controls Library                   |6.10.7601.24483 |1681920 |2019-06-05 02:07:00|C:\Windows\winsxs\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.7601.24483_none_2b200f664577e14b\|
|72BC0000|winmm.dll                               |MCI API DLL                                        |6.1.7601.17514  |194048  |2010-11-21 10:24:16|C:\Windows\System32\                                                                                          |
|72C10000|rsaenh.dll                              |Microsoft Enhanced Cryptographic Provider          |6.1.7600.16385  |242936  |2009-07-14 08:17:54|C:\Windows\System32\                                                                                          |
|72C50000|ntmarta.dll                             |Windows NT MARTA provider                          |6.1.7600.16385  |121856  |2009-07-14 08:16:11|C:\Windows\System32\                                                                                          |
|72C80000|cryptsp.dll                             |Cryptographic Service Provider API                 |6.1.7601.24499  |80896   |2019-06-12 22:19:54|C:\Windows\System32\                                                                                          |
|72D80000|version.dll                             |Version Checking and File Installation Libraries   |6.1.7600.16385  |21504   |2009-07-14 08:16:17|C:\Windows\System32\                                                                                          |
|72E40000|winnsi.dll                              |Network Store Information RPC interface            |6.1.7601.23889  |16384   |2017-08-11 13:19:44|C:\Windows\System32\                                                                                          |
|72E50000|IPHLPAPI.DLL                            |IP Helper API                                      |6.1.7601.17514  |103936  |2010-11-21 10:24:32|C:\Windows\System32\                                                                                          |
|73180000|security.dll                            |Security Support Provider Interface                |6.1.7600.16385  |4608    |2009-07-14 08:09:53|C:\Windows\System32\                                                                                          |
|733B0000|schannel.dll                            |TLS / SSL Security Provider                        |6.1.7601.24545  |254464  |2020-01-03 10:38:42|C:\Windows\System32\                                                                                          |
|73FC0000|dbghelp.dll                             |Windows Image Helper                               |6.1.7601.17514  |854016  |2010-11-21 10:24:09|C:\Windows\System32\                                                                                          |
|740B0000|msvcp120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |454968  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|74130000|msvcr120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |971064  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|74220000|bcrypt.dll                              |Windows Cryptographic Primitives Library (Wow64)   |6.1.7601.24545  |82944   |2020-01-03 10:38:54|C:\Windows\System32\                                                                                          |
|74730000|CRYPTBASE.dll                           |Base cryptographic API DLL                         |6.1.7601.24545  |36352   |2020-01-03 10:02:56|C:\Windows\SysWOW64\                                                                                          |
|74740000|sspicli.dll                             |Security Support Provider Interface                |6.1.7601.24545  |96768   |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|747A0000|shell32.dll                             |Windows Shell Common Dll                           |6.1.7601.24468  |12880384|2019-05-25 06:59:03|C:\Windows\SysWOW64\                                                                                          |
|753F0000|kernel32.dll                            |Windows NT BASE API Client DLL                     |6.1.7601.24545  |1114112 |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|75500000|api-ms-win-downlevel-user32-l1-1-0.dll  |ApiSet Stub DLL                                    |6.2.9200.16492  |4096    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|75570000|nsi.dll                                 |NSI User-mode interface DLL                        |6.1.7601.23889  |8704    |2017-08-11 13:19:39|C:\Windows\SysWOW64\                                                                                          |
|75580000|setupapi.dll                            |Windows Setup API                                  |6.1.7601.17514  |1667584 |2010-11-21 10:23:51|C:\Windows\SysWOW64\                                                                                          |
|75870000|api-ms-win-downlevel-advapi32-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |10752   |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|75880000|ole32.dll                               |Microsoft OLE for Windows                          |6.1.7601.24537  |1425920 |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|759E0000|crypt32.dll                             |Crypto API32                                       |6.1.7601.24542  |1177088 |2019-12-10 15:38:34|C:\Windows\SysWOW64\                                                                                          |
|75B10000|gdi32.dll                               |GDI Client DLL                                     |6.1.7601.24540  |313344  |2019-11-28 10:29:33|C:\Windows\SysWOW64\                                                                                          |
|75BA0000|api-ms-win-downlevel-normaliz-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |2560    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|75BB0000|imm32.dll                               |Multi-User Windows IMM32 API Client DLL            |6.1.7601.17514  |119808  |2010-11-21 10:24:25|C:\Windows\System32\                                                                                          |
|75C10000|cfgmgr32.dll                            |Configuration Manager DLL                          |6.1.7601.17621  |145920  |2011-05-24 17:39:38|C:\Windows\SysWOW64\                                                                                          |
|75C40000|userenv.dll                             |Userenv                                            |6.1.7601.24535  |83968   |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|75C60000|iertutil.dll                            |Run time utility for Internet Explorer             |11.0.9600.19597 |2304000 |2019-12-17 07:33:53|C:\Windows\SysWOW64\                                                                                          |
|75EA0000|normaliz.dll                            |Unicode Normalization DLL                          |6.1.7600.16385  |2048    |2009-07-14 08:09:00|C:\Windows\SysWOW64\                                                                                          |
|75EB0000|KERNELBASE.dll                          |Windows NT BASE API Client DLL                     |6.1.7601.24545  |275968  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|75F90000|wininet.dll                             |Internet Extensions for Win32                      |11.0.9600.19597 |4387840 |2019-12-17 06:43:02|C:\Windows\SysWOW64\                                                                                          |
|763D0000|Wldap32.dll                             |Win32 LDAP API DLL                                 |6.1.7601.23889  |271360  |2017-08-11 13:19:44|C:\Windows\SysWOW64\                                                                                          |
|76420000|sechost.dll                             |Host for SCM/SDDL/LSA Lookup APIs                  |6.1.7601.18869  |92160   |2015-05-26 01:01:39|C:\Windows\SysWOW64\                                                                                          |
|76440000|imagehlp.dll                            |Windows NT Image Helper                            |6.1.7601.18288  |159232  |2013-10-19 08:36:59|C:\Windows\SysWOW64\                                                                                          |
|76470000|shlwapi.dll                             |Shell Light-weight Utility Library                 |6.1.7601.17514  |350208  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|764D0000|user32.dll                              |Multi-User Windows USER API Client DLL             |6.1.7601.24545  |834048  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|765E0000|api-ms-win-downlevel-version-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |3072    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|765F0000|comdlg32.dll                            |Common Dialogs DLL                                 |6.1.7601.17514  |485888  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|76670000|advapi32.dll                            |Advanced Windows 32 Base API                       |6.1.7601.24545  |644096  |2020-01-03 10:37:31|C:\Windows\SysWOW64\                                                                                          |
|76720000|msasn1.dll                              |ASN.1 Runtime APIs                                 |6.1.7601.17514  |34304   |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|76730000|lpk.dll                                 |Language Pack                                      |6.1.7601.24537  |25600   |2019-11-15 09:29:52|C:\Windows\SysWOW64\                                                                                          |
|76740000|profapi.dll                             |User Profile Basic API                             |6.1.7600.16385  |31744   |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|76780000|msvcrt.dll                              |Windows NT CRT DLL                                 |7.0.7601.17744  |690688  |2011-12-16 14:52:58|C:\Windows\SysWOW64\                                                                                          |
|768C0000|devobj.dll                              |Device Information Set DLL                         |6.1.7601.17621  |64512   |2011-05-24 17:40:05|C:\Windows\SysWOW64\                                                                                          |
|768E0000|ws2_32.dll                              |Windows Socket 2.0 32-Bit DLL                      |6.1.7601.23451  |206336  |2016-05-11 22:19:26|C:\Windows\SysWOW64\                                                                                          |
|76920000|api-ms-win-downlevel-shlwapi-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |9728    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|76930000|oleaut32.dll                            |                                                   |6.1.7601.24537  |583680  |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|769D0000|msctf.dll                               |MSCTF Server DLL                                   |6.1.7601.24520  |836608  |2019-08-29 09:52:30|C:\Windows\SysWOW64\                                                                                          |
|76AA0000|usp10.dll                               |Uniscribe Unicode script processor                 |1.626.7601.24535|628224  |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|76B40000|psapi.dll                               |Process Status Helper                              |6.1.7600.16385  |6144    |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|76B50000|rpcrt4.dll                              |Remote Procedure Call Runtime                      |6.1.7601.24545  |666112  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|77020000|ntdll.dll                               |NT Layer DLL                                       |6.1.7601.24545  |1320248 |2020-01-03 10:41:21|C:\Windows\SysWOW64\                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
EAX: 0A99FA70   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0A99FAC0
EDX: 00000000   ESP: 0A99FA70
EIP: 75EBC5AF   FLG: 00000212
EXP: 00426B51   STK: 0A99FA70

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
06632614: 0A99FB2C   00426B51: E8 D6 42 FE FF 5F 5E 5B C3 8B C0 FF 25 E0 87 09  ..B.._^[....%...
06632610: 0042FF98   00426B61: 01 8B C0 50 E8 F2 FF FF FF C3 90 55 8B EC 83 C4  ...P.......U....
0663260C: 0A99FAB8   00426B71: F8 8B 45 08 8B 40 FC 89 45 F8 C6 45 FC 11 8D 55  ..E..@..E..E...U
06632608: 0B20D560   00426B81: F8 A1 D4 BD F8 00 33 C9 E8 AA FF FF FF 59 59 5D  ......3......YY]
06632604: 0A99FB18   00426B91: C3 8B C0 55 8B EC 8B D0 83 C2 D0 66 83 EA 0A 72  ...U.......f...r
06632600: 0A99FB54   00426BA1: 14 83 C2 F9 66 83 EA 06 72 15 83 C2 E6 66 83 EA  ....f...r....f..
066325FC: 00000000   00426BB1: 06 72 06 EB 10 2C 30 5D C3 2C 61 04 0A 5D C3 2C  .r...,0].,a..].,
066325F8: 0A99FB2C   00426BC1: 41 04 0A 5D C3 8B 45 08 50 E8 9D FF FF FF 59 33  A..]..E.P.....Y3
066325F4: 004172F0   00426BD1: C0 5D C3 55 8B EC 53 8B D8 8B 45 08 50 0F B7 03  .].U..S...E.P...
066325F0: 0B20D560   00426BE1: E8 AE FF FF FF 59 C1 E0 04 50 8B 45 08 50 0F B7  .....Y...P.E.P..
066325EC: 00426B56   00426BF1: 43 02 E8 9C FF FF FF 59 8B D0 58 02 C2 5B 5D C3  C......Y..X..[].
066325E8: 00000007   00426C01: 8D 40 00 55 8B EC 51 53 56 57 8B DA 89 45 FC 8B  .@.U..QSVW...E..
066325E4: 75EBC5AF   00426C11: 45 FC 85 C0 74 05 83 E8 04 8B 00 83 F8 26 74 04  E...t........&t.
066325E0: 00000000   00426C21: B0 01 EB 0A 8B 45 FC 66 83 38 7B 0F 95 C0 84 C0  .....E.f.8{.....
066325DC: 00000001   00426C31: 74 07 55 E8 33 FF FF FF 59 8B FB 8B 45 FC E8 80  t.U.3...Y...E...
066325D8: 0EEDFADE   00426C41: 5C FE FF 8B D8 83 C3 02 33 F6 55 B8 03 00 00 00  \.......3.U.....



