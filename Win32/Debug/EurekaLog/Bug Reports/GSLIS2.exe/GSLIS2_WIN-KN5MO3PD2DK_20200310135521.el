EurekaLog 7.5.0.0  

Exception:
-----------------------------------------------------
  2.2 Address: 0077187D
  2.5 Type   : EDatabaseError
  2.6 Message: qPending: Field 'flg_ambil' not found.
  2.7 ID     : F24A0000
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
|Methods |Details|Stack   |Address |Module    |Offset  |Unit               |Class              |Procedure/Method         |Line      |
-------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=5776; Parent=7548; Priority=0                                                                                |
|Class=TIdThreadWithTask; Name=[Unnamed thread 5776] Kind: TThread. Thread function: uIdThread.TIdThread.Execute. Thread caller: uIdThread.TIdThread.Create [535] (uIdThread.TIdThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                            |
|Comment=                                                                                                                           |
|-----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|0077187D|GSLIS2.exe|0037187D|Data.DB            |                   |DatabaseError            |3226[7]   |
|00000020|04     |0A62F838|00429EDB|GSLIS2.exe|00029EDB|System.SysUtils    |                   |Format                   |12154[1]  |
|00000020|04     |0A62F858|00771931|GSLIS2.exe|00371931|Data.DB            |                   |DatabaseErrorFmt         |3235[1]   |
|00000020|04     |0A62F87C|00787F2A|GSLIS2.exe|00387F2A|Data.DB            |TDataSet           |FieldByName              |13083[2]  |
|00000020|04     |0A62F8AC|00E334A0|GSLIS2.exe|00A334A0|UnitFOHomeService  |TfrmFOHomeService  |UniDBGrid1SelectionChange|264[1]    |
|00000020|03     |0A62F8D0|00AA61B4|GSLIS2.exe|006A61B4|uniDBGrid          |TUniBookmarkList   |OnChanged                |          |
|00000020|03     |0A62F8DC|00A99768|GSLIS2.exe|00699768|uniDBGrid          |TUniCustomDBGrid   |NotifyAjax               |          |
|00000020|03     |0A62F8FC|0089513E|GSLIS2.exe|0049513E|uniGUIClasses      |TUniControl        |AjaxHandled              |          |
|00000020|03     |0A62F900|008951FF|GSLIS2.exe|004951FF|uniGUIClasses      |TUniControl        |DoLoadCompleted          |          |
|00000020|03     |0A62F918|008996D9|GSLIS2.exe|004996D9|uniGUIClasses      |                   |PerformLoadCompleted     |          |
|00000020|03     |0A62F950|008997B8|GSLIS2.exe|004997B8|uniGUIClasses      |TUniContainer      |SetComponentsLoaded      |          |
|00000020|03     |0A62F96C|00899218|GSLIS2.exe|00499218|uniGUIClasses      |TUniContainer      |DoLoadCompleted          |          |
|00000020|03     |0A62F98C|008693E8|GSLIS2.exe|004693E8|uniGUIJSForm       |TUniBaseJSForm     |DoHandle                 |          |
|00000020|03     |0A62F9A8|0087D56A|GSLIS2.exe|0047D56A|uniGUIForm         |TUniBaseForm       |DoHandle                 |          |
|00000020|03     |0A62F9AC|008B1B13|GSLIS2.exe|004B1B13|uniGUIApplication  |TUniGUIApplication |SignalHandled            |          |
|00000020|03     |0A62F9D0|008BAEDA|GSLIS2.exe|004BAEDA|uniGUIApplication  |TUniGUISession     |AfterHandleRequest       |          |
|00000020|03     |0A62FAA4|0083D7DB|GSLIS2.exe|0043D7DB|ExtHTTPServer      |TIdExtSession      |HandleRequest            |          |
|00000020|03     |0A62FADC|008B5C9D|GSLIS2.exe|004B5C9D|uniGUIApplication  |TUniGUISession     |HandleWebRequest         |          |
|00000020|03     |0A62FC08|008B65EB|GSLIS2.exe|004B65EB|uniGUIApplication  |TUniGUISession     |HandleRequest            |          |
|00000020|03     |0A62FC28|008EA9ED|GSLIS2.exe|004EA9ED|uniGUIServer       |TUniGUIServerModule|HandleHTTPRequest        |          |
|00000020|03     |0A62FC90|008EB027|GSLIS2.exe|004EB027|uniGUIServer       |TUniWebServer      |CommandGet               |          |
|00000020|04     |0A62FD10|008341C4|GSLIS2.exe|004341C4|uIdCustomHTTPServer|TIdCustomHTTPServer|DoCommandGet             |1011[2]   |
|00000020|04     |0A62FD2C|00835350|GSLIS2.exe|00435350|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1463[187] |
|00000020|04     |0A62FD38|00835375|GSLIS2.exe|00435375|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1465[189] |
|00000020|04     |0A62FD68|008355C0|GSLIS2.exe|004355C0|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1515[239] |
|00000020|04     |0A62FD74|00835635|GSLIS2.exe|00435635|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1527[251] |
|00000020|04     |0A62FE58|0080444D|GSLIS2.exe|0040444D|uIdContext         |TIdContext         |Run                      |185[2]    |
|00000020|04     |0A62FE5C|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock         |1320[2]   |
|00000020|04     |0A62FE6C|00802E9A|GSLIS2.exe|00402E9A|uIdTask            |TIdTask            |DoRun                    |136[1]    |
|00000020|04     |0A62FE7C|0081E501|GSLIS2.exe|0041E501|uIdThread          |TIdThreadWithTask  |Run                      |697[1]    |
|00000020|04     |0A62FE88|0081DCEF|GSLIS2.exe|0041DCEF|uIdThread          |TIdThread          |Execute                  |428[50]   |
|00000020|04     |0A62FEEC|00406FB4|GSLIS2.exe|00006FB4|System             |                   |_FreeMem                 |4439[20]  |
|00000020|04     |0A62FEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes     |                   |ThreadProc               |14161[21] |
|00000020|04     |0A62FF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock         |1320[2]   |
|00000020|04     |0A62FF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock         |1320[2]   |
|7FFFFFFE|04     |00000000|0081DF16|GSLIS2.exe|0041DF16|uIdThread          |TIdThread          |Create                   |535[37]   |
-------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48690493|2020-03-10 13:54:30|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|51DB0000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|52000000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|52050000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|52920000|msftedit.dll                            |Rich Text Edit Control, v4.1                       |5.41.21.2510    |592384  |2010-11-21 10:24:14|C:\Windows\System32\                                                                                          |
|5C720000|hhctrl.ocx                              |Microsoft® HTML Help Control                       |6.1.7601.24134  |523776  |2018-04-18 22:51:41|C:\Windows\System32\                                                                                          |
|60B20000|rlls.dll                                |Relevant-Knowledge                                 |4.0.21.11       |753008  |2019-03-06 00:51:10|C:\Windows\System32\                                                                                          |
|61520000|powrprof.dll                            |Power Profile Helper DLL                           |6.1.7600.16385  |145408  |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|61580000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
|664E0000|winsta.dll                              |Winstation Library                                 |6.1.7601.18540  |157696  |2014-07-17 08:40:03|C:\Windows\System32\                                                                                          |
|665B0000|oleacc.dll                              |Active Accessibility Core Component                |7.0.0.0         |233472  |2011-08-27 11:26:27|C:\Windows\System32\                                                                                          |
|67A40000|bcryptprimitives.dll                    |Windows Cryptographic Primitives Library           |6.1.7601.23451  |249352  |2016-05-12 20:04:55|C:\Windows\SysWOW64\                                                                                          |
|68D70000|security.dll                            |Security Support Provider Interface                |6.1.7600.16385  |4608    |2009-07-14 08:09:53|C:\Windows\System32\                                                                                          |
|68E60000|schannel.dll                            |TLS / SSL Security Provider                        |6.1.7601.24545  |254464  |2020-01-03 10:38:42|C:\Windows\System32\                                                                                          |
|6BC40000|msvcp120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |454968  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|6BCC0000|msvcr120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |971064  |2016-07-07 05:39:24|C:\Windows\System32\                                                                                          |
|6BDC0000|bcrypt.dll                              |Windows Cryptographic Primitives Library (Wow64)   |6.1.7601.24545  |82944   |2020-01-03 10:38:54|C:\Windows\System32\                                                                                          |
|709B0000|dbghelp.dll                             |Windows Image Helper                               |6.1.7601.17514  |854016  |2010-11-21 10:24:09|C:\Windows\System32\                                                                                          |
|73030000|wship6.dll                              |Winsock2 Helper DLL (TL/IPv6)                      |6.1.7600.16385  |10752   |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|730E0000|rasadhlp.dll                            |Remote Access AutoDial Helper                      |6.1.7600.16385  |11776   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|730F0000|FWPUCLNT.DLL                            |FWP/IPsec User-Mode API                            |6.1.7601.24000  |216576  |2018-01-01 09:00:02|C:\Windows\System32\                                                                                          |
|73130000|wshbth.dll                              |Windows Sockets Helper DLL                         |6.1.7601.17514  |36352   |2010-11-21 10:24:50|C:\Windows\System32\                                                                                          |
|73140000|winrnr.dll                              |LDAP RnR Provider DLL                              |6.1.7600.16385  |20992   |2009-07-14 08:16:19|C:\Windows\System32\                                                                                          |
|73150000|dnsapi.dll                              |DNS Client API DLL                                 |6.1.7601.24168  |269824  |2018-06-08 22:54:41|C:\Windows\System32\                                                                                          |
|731A0000|pnrpnsp.dll                             |PNRP Name Space Provider                           |6.1.7600.16385  |65024   |2009-07-14 08:16:12|C:\Windows\System32\                                                                                          |
|73210000|NapiNSP.dll                             |E-mail Naming Shim Provider                        |6.1.7600.16385  |52224   |2009-07-14 08:16:02|C:\Windows\System32\                                                                                          |
|73220000|WSHTCPIP.DLL                            |Winsock2 Helper DLL (TL/IPv4)                      |6.1.7600.16385  |9216    |2009-07-14 08:16:20|C:\Windows\System32\                                                                                          |
|73230000|mswsock.dll                             |Microsoft Windows Sockets 2.0 Service Provider     |6.1.7601.23451  |231424  |2016-05-11 22:19:16|C:\Windows\System32\                                                                                          |
|73270000|nlaapi.dll                              |Network Location Awareness 2                       |6.1.7601.24000  |52224   |2018-01-01 09:00:07|C:\Windows\System32\                                                                                          |
|733B0000|winspool.drv                            |Windows Spooler Driver                             |6.1.7601.24383  |321536  |2019-02-16 12:50:54|C:\Windows\System32\                                                                                          |
|735C0000|comctl32.dll                            |User Experience Controls Library                   |6.10.7601.24483 |1681920 |2019-06-05 02:07:00|C:\Windows\winsxs\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.7601.24483_none_2b200f664577e14b\|
|73760000|winmm.dll                               |MCI API DLL                                        |6.1.7601.17514  |194048  |2010-11-21 10:24:16|C:\Windows\System32\                                                                                          |
|737B0000|ntmarta.dll                             |Windows NT MARTA provider                          |6.1.7600.16385  |121856  |2009-07-14 08:16:11|C:\Windows\System32\                                                                                          |
|737E0000|rsaenh.dll                              |Microsoft Enhanced Cryptographic Provider          |6.1.7600.16385  |242936  |2009-07-14 08:17:54|C:\Windows\System32\                                                                                          |
|73820000|cryptsp.dll                             |Cryptographic Service Provider API                 |6.1.7601.24499  |80896   |2019-06-12 22:19:54|C:\Windows\System32\                                                                                          |
|73920000|version.dll                             |Version Checking and File Installation Libraries   |6.1.7600.16385  |21504   |2009-07-14 08:16:17|C:\Windows\System32\                                                                                          |
|739E0000|winnsi.dll                              |Network Store Information RPC interface            |6.1.7601.23889  |16384   |2017-08-11 13:19:44|C:\Windows\System32\                                                                                          |
|739F0000|IPHLPAPI.DLL                            |IP Helper API                                      |6.1.7601.17514  |103936  |2010-11-21 10:24:32|C:\Windows\System32\                                                                                          |
|74C30000|secur32.dll                             |Security Support Provider Interface                |6.1.7601.24545  |22016   |2020-01-03 10:38:43|C:\Windows\System32\                                                                                          |
|74DD0000|wtsapi32.dll                            |Windows Remote Desktop Session Host Server SDK APIs|6.1.7601.17514  |40448   |2010-11-21 10:23:54|C:\Windows\System32\                                                                                          |
|74E00000|uxtheme.dll                             |Microsoft UxTheme Library                          |6.1.7600.16385  |245760  |2009-07-14 08:11:24|C:\Windows\System32\                                                                                          |
|752B0000|CRYPTBASE.dll                           |Base cryptographic API DLL                         |6.1.7601.24545  |36352   |2020-01-03 10:02:56|C:\Windows\SysWOW64\                                                                                          |
|752C0000|sspicli.dll                             |Security Support Provider Interface                |6.1.7601.24545  |96768   |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|753B0000|imm32.dll                               |Multi-User Windows IMM32 API Client DLL            |6.1.7601.17514  |119808  |2010-11-21 10:24:25|C:\Windows\System32\                                                                                          |
|75410000|msasn1.dll                              |ASN.1 Runtime APIs                                 |6.1.7601.17514  |34304   |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|75420000|iertutil.dll                            |Run time utility for Internet Explorer             |11.0.9600.19597 |2304000 |2019-12-17 07:33:53|C:\Windows\SysWOW64\                                                                                          |
|75660000|crypt32.dll                             |Crypto API32                                       |6.1.7601.24542  |1177088 |2019-12-10 15:38:34|C:\Windows\SysWOW64\                                                                                          |
|75790000|lpk.dll                                 |Language Pack                                      |6.1.7601.24537  |25600   |2019-11-15 09:29:52|C:\Windows\SysWOW64\                                                                                          |
|757A0000|cfgmgr32.dll                            |Configuration Manager DLL                          |6.1.7601.17621  |145920  |2011-05-24 17:39:38|C:\Windows\SysWOW64\                                                                                          |
|757D0000|shlwapi.dll                             |Shell Light-weight Utility Library                 |6.1.7601.17514  |350208  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|75830000|rpcrt4.dll                              |Remote Procedure Call Runtime                      |6.1.7601.24545  |666112  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|75920000|userenv.dll                             |Userenv                                            |6.1.7601.24535  |83968   |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|75940000|msvcrt.dll                              |Windows NT CRT DLL                                 |7.0.7601.17744  |690688  |2011-12-16 14:52:58|C:\Windows\SysWOW64\                                                                                          |
|75A20000|devobj.dll                              |Device Information Set DLL                         |6.1.7601.17621  |64512   |2011-05-24 17:40:05|C:\Windows\SysWOW64\                                                                                          |
|75A40000|ws2_32.dll                              |Windows Socket 2.0 32-Bit DLL                      |6.1.7601.23451  |206336  |2016-05-11 22:19:26|C:\Windows\SysWOW64\                                                                                          |
|75A80000|api-ms-win-downlevel-user32-l1-1-0.dll  |ApiSet Stub DLL                                    |6.2.9200.16492  |4096    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|75AF0000|nsi.dll                                 |NSI User-mode interface DLL                        |6.1.7601.23889  |8704    |2017-08-11 13:19:39|C:\Windows\SysWOW64\                                                                                          |
|75B00000|ole32.dll                               |Microsoft OLE for Windows                          |6.1.7601.24537  |1425920 |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|75C60000|msctf.dll                               |MSCTF Server DLL                                   |6.1.7601.24520  |836608  |2019-08-29 09:52:30|C:\Windows\SysWOW64\                                                                                          |
|75D30000|Wldap32.dll                             |Win32 LDAP API DLL                                 |6.1.7601.23889  |271360  |2017-08-11 13:19:44|C:\Windows\SysWOW64\                                                                                          |
|75D80000|shell32.dll                             |Windows Shell Common Dll                           |6.1.7601.24468  |12880384|2019-05-25 06:59:03|C:\Windows\SysWOW64\                                                                                          |
|769D0000|profapi.dll                             |User Profile Basic API                             |6.1.7600.16385  |31744   |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|769F0000|api-ms-win-downlevel-version-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |3072    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|76A00000|api-ms-win-downlevel-normaliz-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |2560    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|76A10000|gdi32.dll                               |GDI Client DLL                                     |6.1.7601.24540  |313344  |2019-11-28 10:29:33|C:\Windows\SysWOW64\                                                                                          |
|76AA0000|api-ms-win-downlevel-advapi32-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |10752   |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|76AB0000|api-ms-win-downlevel-shlwapi-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |9728    |2018-04-02 04:00:12|C:\Windows\SysWOW64\                                                                                          |
|76AC0000|usp10.dll                               |Uniscribe Unicode script processor                 |1.626.7601.24535|628224  |2019-11-06 04:25:42|C:\Windows\SysWOW64\                                                                                          |
|76B60000|psapi.dll                               |Process Status Helper                              |6.1.7600.16385  |6144    |2009-07-14 08:16:12|C:\Windows\SysWOW64\                                                                                          |
|76B70000|comdlg32.dll                            |Common Dialogs DLL                                 |6.1.7601.17514  |485888  |2010-11-21 10:23:48|C:\Windows\SysWOW64\                                                                                          |
|76BF0000|sechost.dll                             |Host for SCM/SDDL/LSA Lookup APIs                  |6.1.7601.18869  |92160   |2015-05-26 01:01:39|C:\Windows\SysWOW64\                                                                                          |
|76C10000|setupapi.dll                            |Windows Setup API                                  |6.1.7601.17514  |1667584 |2010-11-21 10:23:51|C:\Windows\SysWOW64\                                                                                          |
|76DB0000|KERNELBASE.dll                          |Windows NT BASE API Client DLL                     |6.1.7601.24545  |275968  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|76E00000|advapi32.dll                            |Advanced Windows 32 Base API                       |6.1.7601.24545  |644096  |2020-01-03 10:37:31|C:\Windows\SysWOW64\                                                                                          |
|77000000|normaliz.dll                            |Unicode Normalization DLL                          |6.1.7600.16385  |2048    |2009-07-14 08:09:00|C:\Windows\SysWOW64\                                                                                          |
|770A0000|imagehlp.dll                            |Windows NT Image Helper                            |6.1.7601.18288  |159232  |2013-10-19 08:36:59|C:\Windows\SysWOW64\                                                                                          |
|770D0000|user32.dll                              |Multi-User Windows USER API Client DLL             |6.1.7601.24545  |834048  |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|771D0000|oleaut32.dll                            |                                                   |6.1.7601.24537  |583680  |2019-11-15 09:29:47|C:\Windows\SysWOW64\                                                                                          |
|77270000|wininet.dll                             |Internet Extensions for Win32                      |11.0.9600.19597 |4387840 |2019-12-17 06:43:02|C:\Windows\SysWOW64\                                                                                          |
|776B0000|kernel32.dll                            |Windows NT BASE API Client DLL                     |6.1.7601.24545  |1114112 |2020-01-03 10:38:57|C:\Windows\SysWOW64\                                                                                          |
|77BA0000|ntdll.dll                               |NT Layer DLL                                       |6.1.7601.24545  |1320248 |2020-01-03 10:41:21|C:\Windows\SysWOW64\                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Processes Information:
----------------------


Assembler Information:
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $771000, Allocation Base: $400000, Region Size: 8364032
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; Data.DatabaseError (Line=3226 - Offset=147)
; -------------------------------------------
00771847  8D45E0      LEA  EAX, [EBP-$20]
0077184A  50          PUSH EAX
0077184B  8B4308      MOV  EAX, [EBX+8]
0077184E  8945D0      MOV  [EBP-$30], EAX
00771851  C645D411    MOV  BYTE PTR [EBP-$2C], $11
00771855  8975D8      MOV  [EBP-$28], ESI
00771858  C645DC11    MOV  BYTE PTR [EBP-$24], $11
0077185C  8D55D0      LEA  EDX, [EBP-$30]
0077185F  B901000000  MOV  ECX, 1
00771864  B8F0187700  MOV  EAX, $007718F0          ; ($007718F0) Data.DatabaseError (Line=3230) UNICODE: '%s: %s' Data.DatabaseError (Line=3230)
00771869  E85286CBFF  CALL -$3479AE                ; ($00429EC0) System.Format
0077186E  8B4DE0      MOV  ECX, [EBP-$20]
00771871  B201        MOV  DL, 1
00771873  A1944F7500  MOV  EAX, [$00754F94]        ; Delphi Class "EDatabaseError"
00771878  E8BFDACBFF  CALL -$342541                ; ($0042F33C) System.Exception.Create
;
; Line=3226 - Offset=201
; ----------------------
0077187D  E8AA95C9FF  CALL -$366A56                ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
00771882  EB13        JMP  +$13                    ; ($00771897) Data.DatabaseError (Line=3230)
;
; Line=3229 - Offset=208
; ----------------------
00771884  8BCE        MOV  ECX, ESI
00771886  B201        MOV  DL, 1
00771888  A1944F7500  MOV  EAX, [$00754F94]        ; Delphi Class "EDatabaseError"
0077188D  E8AADACBFF  CALL -$342556                ; ($0042F33C) System.Exception.Create
00771892  E89595C9FF  CALL -$366A6B                ; ($0040AE2C) System._RaiseExcept
;
; Line=3230 - Offset=227
; ----------------------
00771897  33C0        XOR  EAX, EAX
00771899  5A          POP  EDX
0077189A  59          POP  ECX
0077189B  59          POP  ECX
0077189C  648910      MOV  FS:[EAX], EDX
0077189F  68BC187700  PUSH $7718BC                 ; ($007718BC) Data.DatabaseError (Line=3230) Data as ANSI: '^[‹å]Ã'; Data as UNICODE: '孞썝' Data.DatabaseError (Line=3230)
007718A4  8D45E0      LEA  EAX, [EBP-$20]
007718A7  E8009FC9FF  CALL -$366100                ; ($0040B7AC) System._UStrClr
007718AC  8D45FC      LEA  EAX, [EBP-4]
007718AF  E8F89EC9FF  CALL -$366108                ; ($0040B7AC) System._UStrClr

Registers:
-----------------------------
EAX: 0A62F768   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0A62F7B8
EDX: 00000000   ESP: 0A62F768
EIP: 76DBC5AF   FLG: 00000212
EXP: 0077187D   STK: 0A62F768

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0B023B9C: 0B023ADC   0077187D: E8 AA 95 C9 FF EB 13 8B CE B2 01 A1 94 4F 75 00  .............Ou.
0B023B98: 0042FF98   0077188D: E8 AA DA CB FF E8 95 95 C9 FF 33 C0 5A 59 59 64  ..........3.ZYYd
0B023B94: 0A62F7B0   0077189D: 89 10 68 BC 18 77 00 8D 45 E0 E8 00 9F C9 FF 8D  ..h..w..E.......
0B023B90: 066796E0   007718AD: 45 FC E8 F8 9E C9 FF C3 E9 CE 93 C9 FF EB E8 5E  E..............^
0B023B8C: 0A62F810   007718BD: 5B 8B E5 5D C3 00 00 B0 04 02 00 FF FF FF FF 09  [..]............
0B023B88: 0A62F854   007718CD: 00 00 00 25 00 73 00 2E 00 25 00 73 00 3A 00 20  ...%.s...%.s.:. 
0B023B84: 00000000   007718DD: 00 25 00 73 00 00 00 B0 04 02 00 FF FF FF FF 06  .%.s............
0B023B80: 0B023ADC   007718ED: 00 00 00 25 00 73 00 3A 00 20 00 25 00 73 00 00  ...%.s.:. .%.s..
0B023B7C: 0605A6C0   007718FD: 00 00 00 55 8B EC 6A 00 53 56 57 8B F9 8B F2 8B  ...U..j.SVW.....
0B023B78: 066796E0   0077190D: D8 33 C0 55 68 4C 19 77 00 64 FF 30 64 89 20 8D  .3.UhL.w.d.0d. .
0B023B74: 00771882   0077191D: 45 FC 50 8B D6 8B CF 8B C3 E8 95 85 CB FF 8B 45  E.P............E
0B023B70: 00000007   0077192D: FC 8B 55 08 E8 7E FE FF FF 33 C0 5A 59 59 64 89  ..U..~...3.ZYYd.
0B023B6C: 76DBC5AF   0077193D: 10 68 53 19 77 00 8D 45 FC E8 61 9E C9 FF C3 E9  .hS.w..E..a.....
0B023B68: 00000000   0077194D: 37 93 C9 FF EB F0 5F 5E 5B 59 5D C2 04 00 90 55  7....._^[Y]....U
0B023B64: 00000001   0077195D: 8B EC 83 C4 F4 53 56 57 33 DB 89 5D FC 8B F1 8B  .....SVW3..]....
0B023B60: 0EEDFADE   0077196D: FA 33 D2 55 68 C3 19 77 00 64 FF 32 64 89 22 8B  .3.Uh..w.d.2d.".



