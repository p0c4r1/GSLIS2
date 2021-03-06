EurekaLog 7.5.0.0  

Exception:
------------------------------------------------
  2.2 Address: 00771895
  2.5 Type   : EDatabaseError
  2.6 Message: qStatus: Field 'lunas' not found.
  2.7 ID     : 36020000
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
|*Exception Thread: ID=7956; Parent=2956; Priority=0                                                                                |
|Class=TIdThreadWithTask; Name=[Unnamed thread 7956] Kind: TThread. Thread function: uIdThread.TIdThread.Execute. Thread caller: uIdThread.TIdThread.Create [535] (uIdThread.TIdThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                            |
|Comment=                                                                                                                           |
|-----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00771895|GSLIS2.exe|00371895|Data.DB            |                   |DatabaseError            |3226[7]   |
|00000020|04     |0A7DF830|00429EDB|GSLIS2.exe|00029EDB|System.SysUtils    |                   |Format                   |12154[1]  |
|00000020|04     |0A7DF850|00771949|GSLIS2.exe|00371949|Data.DB            |                   |DatabaseErrorFmt         |3235[1]   |
|00000020|04     |0A7DF874|00787F42|GSLIS2.exe|00387F42|Data.DB            |TDataSet           |FieldByName              |13083[2]  |
|00000020|04     |0A7DF8A4|00EF051D|GSLIS2.exe|00AF051D|UnitFOStatus       |TfrmFOStatus       |UniDBGrid1SelectionChange|540[3]    |
|00000020|03     |0A7DF8D0|00AA61CC|GSLIS2.exe|006A61CC|uniDBGrid          |TUniBookmarkList   |OnChanged                |          |
|00000020|03     |0A7DF8DC|00A99780|GSLIS2.exe|00699780|uniDBGrid          |TUniCustomDBGrid   |NotifyAjax               |          |
|00000020|03     |0A7DF8FC|00895156|GSLIS2.exe|00495156|uniGUIClasses      |TUniControl        |AjaxHandled              |          |
|00000020|03     |0A7DF900|00895217|GSLIS2.exe|00495217|uniGUIClasses      |TUniControl        |DoLoadCompleted          |          |
|00000020|03     |0A7DF918|008996F1|GSLIS2.exe|004996F1|uniGUIClasses      |                   |PerformLoadCompleted     |          |
|00000020|03     |0A7DF950|008997D0|GSLIS2.exe|004997D0|uniGUIClasses      |TUniContainer      |SetComponentsLoaded      |          |
|00000020|03     |0A7DF96C|00899230|GSLIS2.exe|00499230|uniGUIClasses      |TUniContainer      |DoLoadCompleted          |          |
|00000020|03     |0A7DF98C|00869400|GSLIS2.exe|00469400|uniGUIJSForm       |TUniBaseJSForm     |DoHandle                 |          |
|00000020|03     |0A7DF9A8|0087D582|GSLIS2.exe|0047D582|uniGUIForm         |TUniBaseForm       |DoHandle                 |          |
|00000020|03     |0A7DF9AC|008B1B2B|GSLIS2.exe|004B1B2B|uniGUIApplication  |TUniGUIApplication |SignalHandled            |          |
|00000020|03     |0A7DF9D0|008BAEF2|GSLIS2.exe|004BAEF2|uniGUIApplication  |TUniGUISession     |AfterHandleRequest       |          |
|00000020|03     |0A7DFAA4|0083D7F3|GSLIS2.exe|0043D7F3|ExtHTTPServer      |TIdExtSession      |HandleRequest            |          |
|00000020|03     |0A7DFADC|008B5CB5|GSLIS2.exe|004B5CB5|uniGUIApplication  |TUniGUISession     |HandleWebRequest         |          |
|00000020|03     |0A7DFC08|008B6603|GSLIS2.exe|004B6603|uniGUIApplication  |TUniGUISession     |HandleRequest            |          |
|00000020|03     |0A7DFC28|008EAA05|GSLIS2.exe|004EAA05|uniGUIServer       |TUniGUIServerModule|HandleHTTPRequest        |          |
|00000020|03     |0A7DFC90|008EB03F|GSLIS2.exe|004EB03F|uniGUIServer       |TUniWebServer      |CommandGet               |          |
|00000020|04     |0A7DFD10|008341DC|GSLIS2.exe|004341DC|uIdCustomHTTPServer|TIdCustomHTTPServer|DoCommandGet             |1011[2]   |
|00000020|04     |0A7DFD2C|00835368|GSLIS2.exe|00435368|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1463[187] |
|00000020|04     |0A7DFD38|0083538D|GSLIS2.exe|0043538D|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1465[189] |
|00000020|04     |0A7DFD68|008355D8|GSLIS2.exe|004355D8|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1515[239] |
|00000020|04     |0A7DFD74|0083564D|GSLIS2.exe|0043564D|uIdCustomHTTPServer|TIdCustomHTTPServer|DoExecute                |1527[251] |
|00000020|04     |0A7DFE58|00804465|GSLIS2.exe|00404465|uIdContext         |TIdContext         |Run                      |185[2]    |
|00000020|04     |0A7DFE5C|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock         |1320[2]   |
|00000020|04     |0A7DFE6C|00802EB2|GSLIS2.exe|00402EB2|uIdTask            |TIdTask            |DoRun                    |136[1]    |
|00000020|04     |0A7DFE7C|0081E519|GSLIS2.exe|0041E519|uIdThread          |TIdThreadWithTask  |Run                      |697[1]    |
|00000020|04     |0A7DFE88|0081DD07|GSLIS2.exe|0041DD07|uIdThread          |TIdThread          |Execute                  |428[50]   |
|00000020|04     |0A7DFEEC|00406FB4|GSLIS2.exe|00006FB4|System             |                   |_FreeMem                 |4439[20]  |
|00000020|04     |0A7DFEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes     |                   |ThreadProc               |14161[21] |
|00000020|04     |0A7DFF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock         |1320[2]   |
|00000020|04     |0A7DFF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager    |                   |ThreadDataUnlock         |1320[2]   |
|7FFFFFFE|04     |00000000|0081DF2E|GSLIS2.exe|0041DF2E|uIdThread          |TIdThread          |Create                   |535[37]   |
-------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48665286|2020-03-08 17:43:25|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|535C0000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|53B40000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|59FE0000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
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
|74970000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $771000, Allocation Base: $400000, Region Size: 8355840
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; Data.DatabaseError (Line=3226 - Offset=147)
; -------------------------------------------
0077185F  8D45E0      LEA  EAX, [EBP-$20]
00771862  50          PUSH EAX
00771863  8B4308      MOV  EAX, [EBX+8]
00771866  8945D0      MOV  [EBP-$30], EAX
00771869  C645D411    MOV  BYTE PTR [EBP-$2C], $11
0077186D  8975D8      MOV  [EBP-$28], ESI
00771870  C645DC11    MOV  BYTE PTR [EBP-$24], $11
00771874  8D55D0      LEA  EDX, [EBP-$30]
00771877  B901000000  MOV  ECX, 1
0077187C  B808197700  MOV  EAX, $00771908          ; ($00771908) Data.DatabaseError (Line=3230) UNICODE: '%s: %s' Data.DatabaseError (Line=3230)
00771881  E83A86CBFF  CALL -$3479C6                ; ($00429EC0) System.Format
00771886  8B4DE0      MOV  ECX, [EBP-$20]
00771889  B201        MOV  DL, 1
0077188B  A1AC4F7500  MOV  EAX, [$00754FAC]        ; Delphi Class "EDatabaseError"
00771890  E8A7DACBFF  CALL -$342559                ; ($0042F33C) System.Exception.Create
;
; Line=3226 - Offset=201
; ----------------------
00771895  E89295C9FF  CALL -$366A6E                ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
0077189A  EB13        JMP  +$13                    ; ($007718AF) Data.DatabaseError (Line=3230)
;
; Line=3229 - Offset=208
; ----------------------
0077189C  8BCE        MOV  ECX, ESI
0077189E  B201        MOV  DL, 1
007718A0  A1AC4F7500  MOV  EAX, [$00754FAC]        ; Delphi Class "EDatabaseError"
007718A5  E892DACBFF  CALL -$34256E                ; ($0042F33C) System.Exception.Create
007718AA  E87D95C9FF  CALL -$366A83                ; ($0040AE2C) System._RaiseExcept
;
; Line=3230 - Offset=227
; ----------------------
007718AF  33C0        XOR  EAX, EAX
007718B1  5A          POP  EDX
007718B2  59          POP  ECX
007718B3  59          POP  ECX
007718B4  648910      MOV  FS:[EAX], EDX
007718B7  68D4187700  PUSH $7718D4                 ; ($007718D4) Data.DatabaseError (Line=3230) Data as ANSI: '^[‹å]Ã'; Data as UNICODE: '孞썝' Data.DatabaseError (Line=3230)
007718BC  8D45E0      LEA  EAX, [EBP-$20]
007718BF  E8E89EC9FF  CALL -$366118                ; ($0040B7AC) System._UStrClr
007718C4  8D45FC      LEA  EAX, [EBP-4]
007718C7  E8E09EC9FF  CALL -$366120                ; ($0040B7AC) System._UStrClr

Registers:
-----------------------------
EAX: 0A7DF760   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0A7DF7B0
EDX: 00000000   ESP: 0A7DF760
EIP: 763BC5AF   FLG: 00000216
EXP: 00771895   STK: 0A7DF760

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
06597D94: 065B4D4C   00771895: E8 92 95 C9 FF EB 13 8B CE B2 01 A1 AC 4F 75 00  .............Ou.
06597D90: 0042FF98   007718A5: E8 92 DA CB FF E8 7D 95 C9 FF 33 C0 5A 59 59 64  ......}...3.ZYYd
06597D8C: 0A7DF7A8   007718B5: 89 10 68 D4 18 77 00 8D 45 E0 E8 E8 9E C9 FF 8D  ..h..w..E.......
06597D88: 064F9620   007718C5: 45 FC E8 E0 9E C9 FF C3 E9 B6 93 C9 FF EB E8 5E  E..............^
06597D84: 0A7DF808   007718D5: 5B 8B E5 5D C3 00 00 B0 04 02 00 FF FF FF FF 09  [..]............
06597D80: 0A7DF84C   007718E5: 00 00 00 25 00 73 00 2E 00 25 00 73 00 3A 00 20  ...%.s...%.s.:. 
06597D7C: 00000000   007718F5: 00 25 00 73 00 00 00 B0 04 02 00 FF FF FF FF 06  .%.s............
06597D78: 065B4D4C   00771905: 00 00 00 25 00 73 00 3A 00 20 00 25 00 73 00 00  ...%.s.:. .%.s..
06597D74: 05E6A6C0   00771915: 00 00 00 55 8B EC 6A 00 53 56 57 8B F9 8B F2 8B  ...U..j.SVW.....
06597D70: 064F9620   00771925: D8 33 C0 55 68 64 19 77 00 64 FF 30 64 89 20 8D  .3.Uhd.w.d.0d. .
06597D6C: 0077189A   00771935: 45 FC 50 8B D6 8B CF 8B C3 E8 7D 85 CB FF 8B 45  E.P.......}....E
06597D68: 00000007   00771945: FC 8B 55 08 E8 7E FE FF FF 33 C0 5A 59 59 64 89  ..U..~...3.ZYYd.
06597D64: 763BC5AF   00771955: 10 68 6B 19 77 00 8D 45 FC E8 49 9E C9 FF C3 E9  .hk.w..E..I.....
06597D60: 00000000   00771965: 1F 93 C9 FF EB F0 5F 5E 5B 59 5D C2 04 00 90 55  ......_^[Y]....U
06597D5C: 00000001   00771975: 8B EC 83 C4 F4 53 56 57 33 DB 89 5D FC 8B F1 8B  .....SVW3..]....
06597D58: 0EEDFADE   00771985: FA 33 D2 55 68 DB 19 77 00 64 FF 32 64 89 22 8B  .3.Uh..w.d.2d.".



