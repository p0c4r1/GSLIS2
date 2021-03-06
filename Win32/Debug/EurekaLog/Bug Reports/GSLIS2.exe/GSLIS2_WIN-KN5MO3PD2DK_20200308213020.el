EurekaLog 7.5.0.0  

Exception:
-----------------------------------
  2.2 Address: 00BCFCF7
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
----------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack   |Address |Module    |Offset  |Unit                |Class                  |Procedure/Method       |Line      |
----------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=1384; Parent=9676; Priority=0                                                                                   |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 1384] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                               |
|Comment=                                                                                                                              |
|--------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00BCFCF7|GSLIS2.exe|007CFCF7|IdStack             |TIdStack               |RaiseSocketError       |894[53]   |
|00000020|04     |0AABF864|00BCFC7E|GSLIS2.exe|007CFC7E|IdStack             |TIdStack               |RaiseLastSocketError   |828[1]    |
|00000020|04     |0AABF870|00BCFBE9|GSLIS2.exe|007CFBE9|IdStack             |TIdStack               |CheckForSocketError    |802[2]    |
|00000020|04     |0AABF884|00BCBDFC|GSLIS2.exe|007CBDFC|IdStackWindows      |TIdStackWindows        |Connect                |1970[20]  |
|00000020|04     |0AABF918|00BFCF45|GSLIS2.exe|007FCF45|IdSocketHandle      |TIdSocketHandle        |Connect                |294[1]    |
|00000020|04     |0AABF930|00BFEF25|GSLIS2.exe|007FEF25|IdIOHandlerStack    |TIdIOHandlerStack      |ConnectClient          |348[52]   |
|00000020|04     |0AABF964|00C04C0F|GSLIS2.exe|00804C0F|IdIOHandlerSocket   |TIdIOHandlerSocket     |Open                   |332[13]   |
|00000020|04     |0AABF96C|00C012F1|GSLIS2.exe|008012F1|IdTCPClient         |TIdTCPClientCustom     |Connect                |320[55]   |
|00000020|04     |0AABF974|00C01344|GSLIS2.exe|00801344|IdTCPClient         |TIdTCPClientCustom     |Connect                |326[61]   |
|00000020|04     |0AABF994|00BFFCB3|GSLIS2.exe|007FFCB3|IdTCPConnection     |TIdTCPConnection       |Disconnect             |541[11]   |
|00000020|04     |0AABF9A8|00C3B6A6|GSLIS2.exe|0083B6A6|IdHTTP              |TIdCustomHTTP          |CheckAndConnect        |1841[42]  |
|00000020|04     |0AABF9DC|00C3BBCF|GSLIS2.exe|0083BBCF|IdHTTP              |TIdCustomHTTP          |ConnectToHost          |1987[129] |
|00000020|04     |0AABFA14|00C3DA4F|GSLIS2.exe|0083DA4F|IdHTTP              |TIdCustomHTTP          |DoRequest              |2938[23]  |
|00000020|04     |0AABFA5C|00C38F62|GSLIS2.exe|00838F62|IdHTTP              |TIdCustomHTTP          |Post                   |807[19]   |
|00000020|04     |0AABFA9C|00C39738|GSLIS2.exe|00839738|IdHTTP              |TIdCustomHTTP          |Post                   |1046[12]  |
|00000020|04     |0AABFAD8|00C39852|GSLIS2.exe|00839852|IdHTTP              |TIdCustomHTTP          |Post                   |1063[3]   |
|00000020|04     |0AABFB14|00E300F6|GSLIS2.exe|00A300F6|UnitJasper          |                       |reportExecReqFileParams|243[18]   |
|00000020|04     |0AABFB94|00E30DAA|GSLIS2.exe|00A30DAA|UnitFOHomeService   |TfrmFOHomeService      |btnCetakClick          |121[4]    |
|00000020|04     |0AABFBAC|00E30DED|GSLIS2.exe|00A30DED|UnitFOHomeService   |TfrmFOHomeService      |btnCetakClick          |130[13]   |
|00000020|03     |0AABFBF0|008908F0|GSLIS2.exe|004908F0|uniGUIClasses       |TUniControl            |DoClick                |          |
|00000020|03     |0AABFBF8|00A7B8BF|GSLIS2.exe|0067B8BF|uniButton           |TUniCustomButton       |DoClick                |          |
|00000020|03     |0AABFC14|00A7AED0|GSLIS2.exe|0067AED0|uniButton           |TUniCustomButton       |ClickHandler           |          |
|00000020|03     |0AABFC2C|00873997|GSLIS2.exe|00473997|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |0AABFC84|008922B1|GSLIS2.exe|004922B1|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |0AABFCCC|008C047D|GSLIS2.exe|004C047D|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |0AABFD18|008B3067|GSLIS2.exe|004B3067|uniGUIApplication   |TUniGUISession         |ProcessEventQueue      |          |
|00000020|03     |0AABFD24|008B31AF|GSLIS2.exe|004B31AF|uniGUIApplication   |TUniGUISession         |ProcessEvents          |          |
|00000020|03     |0AABFD5C|0086ABB7|GSLIS2.exe|0046ABB7|uniGUIJSForm        |TUniBaseJSForm         |ShowModal              |          |
|00000020|03     |0AABFD8C|0087CD9B|GSLIS2.exe|0047CD9B|uniGUIForm          |TUniBaseForm           |ShowModal              |          |
|00000020|04     |0AABFD90|00F244F7|GSLIS2.exe|00B244F7|Main                |TMainForm              |mnFOHomeServiceClick   |120[1]    |
|00000020|03     |0AABFDA0|00864F27|GSLIS2.exe|00464F27|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick      |          |
|00000020|03     |0AABFDBC|00873997|GSLIS2.exe|00473997|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |0AABFE14|008922B1|GSLIS2.exe|004922B1|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |0AABFE5C|008C047D|GSLIS2.exe|004C047D|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |0AABFEA8|008C0667|GSLIS2.exe|004C0667|uniGUISessionManager|TUniSessionWorkerThread|Execute                |          |
|00000020|04     |0AABFEE4|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|00000020|04     |0AABFEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes      |                       |ThreadProc             |14161[21] |
|00000020|04     |0AABFF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|00000020|04     |0AABFF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|7FFFFFFE|03     |00000000|008C0144|GSLIS2.exe|004C0144|uniGUISessionManager|TUniSessionWorkerThread|Create                 |          |
----------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48664414|2020-03-08 21:29:43|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 18:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|507C0000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|50A10000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 19:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|54FE0000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 13:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
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
|6FC30000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-14 08:15:27|C:\Windows\System32\                                                                                          |
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
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $BCF000, Allocation Base: $400000, Region Size: 3776512
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; IdStack.TIdStack.RaiseSocketError (Line=857 - Offset=44)
; --------------------------------------------------------
00BCFCB0  8D4DF4      LEA  ECX, [EBP-$0C]
00BCFCB3  8B55F8      MOV  EDX, [EBP-8]
00BCFCB6  8B45FC      MOV  EAX, [EBP-4]
00BCFCB9  8B18        MOV  EBX, [EAX]
00BCFCBB  FF5348      CALL DWORD PTR [EBX+$48]
00BCFCBE  8B45F4      MOV  EAX, [EBP-$0C]
00BCFCC1  50          PUSH EAX
00BCFCC2  8B4DF8      MOV  ECX, [EBP-8]
00BCFCC5  B201        MOV  DL, 1
00BCFCC7  A140CABC00  MOV  EAX, [$00BCCA40]     ; Delphi Class "EIdNotASocket"
00BCFCCC  E81FF4FFFF  CALL -$0BE1               ; ($00BCF0F0) IdStack.EIdSocketError.CreateError
00BCFCD1  E856B183FF  CALL -$7C4EAA             ; ($0040AE2C) System._RaiseExcept
;
; Line=894 - Offset=82
; --------------------
00BCFCD6  8D4DF0      LEA  ECX, [EBP-$10]
00BCFCD9  8B55F8      MOV  EDX, [EBP-8]
00BCFCDC  8B45FC      MOV  EAX, [EBP-4]
00BCFCDF  8B18        MOV  EBX, [EAX]
00BCFCE1  FF5348      CALL DWORD PTR [EBX+$48]
00BCFCE4  8B45F0      MOV  EAX, [EBP-$10]
00BCFCE7  50          PUSH EAX
00BCFCE8  8B4DF8      MOV  ECX, [EBP-8]
00BCFCEB  B201        MOV  DL, 1
00BCFCED  A194C7BC00  MOV  EAX, [$00BCC794]     ; Delphi Class "EIdSocketError"
00BCFCF2  E8F9F3FFFF  CALL -$0C07               ; ($00BCF0F0) IdStack.EIdSocketError.CreateError
;
; Line=894 - Offset=115
; ---------------------
00BCFCF7  E830B183FF  CALL -$7C4ED0             ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=895 - Offset=120
; ---------------------
00BCFCFC  33C0        XOR  EAX, EAX
00BCFCFE  5A          POP  EDX
00BCFCFF  59          POP  ECX
00BCFD00  59          POP  ECX
00BCFD01  648910      MOV  FS:[EAX], EDX
00BCFD04  681EFDBC00  PUSH $BCFD1E              ; ($00BCFD1E) IdStack.TIdStack.RaiseSocketError (Line=895) Data as ANSI: '[‹å]ÃU‹ìƒÄÜS3Û‰]ð‰]ì‰Mô‰Uø‰Eü3À...'; Data as UNICODE: '譛工郃譕菬�㍓觛嶉觬喉觸ﱅ쀳...' IdStack.TIdStack.RaiseSocketError (Line=895)
00BCFD09  8D45F0      LEA  EAX, [EBP-$10]
00BCFD0C  BA02000000  MOV  EDX, 2
00BCFD11  E8F6BA83FF  CALL -$7C450A             ; ($0040B80C) System._UStrArrayClr

Registers:
-----------------------------
EAX: 0AABF798   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0AABF7E8
EDX: 00000000   ESP: 0AABF798
EIP: 763BC5AF   FLG: 00000212
EXP: 00BCFCF7   STK: 0AABF798

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0647E65C: 00000010   00BCFCF7: E8 30 B1 83 FF 33 C0 5A 59 59 64 89 10 68 1E FD  .0...3.ZYYd..h..
0647E658: 0042FF98   00BCFD07: BC 00 8D 45 F0 BA 02 00 00 00 E8 F6 BA 83 FF C3  ...E............
0647E654: 0AABF7E0   00BCFD17: E9 6C AF 83 FF EB EB 5B 8B E5 5D C3 90 55 8B EC  .l.....[..]..U..
0647E650: 06633788   00BCFD27: 83 C4 DC 53 33 DB 89 5D F0 89 5D EC 89 4D F4 89  ...S3..]..]..M..
0647E64C: 0AABF840   00BCFD37: 55 F8 89 45 FC 33 C0 55 68 54 01 BD 00 64 FF 30  U..E.3.UhT...d.0
0647E648: 0AABF860   00BCFD47: 64 89 20 8B 45 F4 E8 5A BA 83 FF 8B 45 F8 05 EC  d. .E..Z....E...
0647E644: 0000049C   00BCFD57: D8 FF FF 83 F8 3E 0F 87 92 03 00 00 FF 24 85 6A  .....>.......$.j
0647E640: 00000010   00BCFD67: FD BC 00 66 FE BC 00 F5 00 BD 00 F5 00 BD 00 F5  ...f............
0647E63C: 00BC904C   00BCFD77: 00 BD 00 F5 00 BD 00 78 FE BC 00 F5 00 BD 00 F5  .......x........
0647E638: 06633788   00BCFD87: 00 BD 00 F5 00 BD 00 8A FE BC 00 9C FE BC 00 F5  ................
0647E634: 00BCFCFC   00BCFD97: 00 BD 00 F5 00 BD 00 F5 00 BD 00 F5 00 BD 00 F5  ................
0647E630: 00000007   00BCFDA7: 00 BD 00 F5 00 BD 00 F5 00 BD 00 AE FE BC 00 F5  ................
0647E62C: 763BC5AF   00BCFDB7: 00 BD 00 C0 FE BC 00 F5 00 BD 00 F5 00 BD 00 F5  ................
0647E628: 00000000   00BCFDC7: 00 BD 00 F5 00 BD 00 F5 00 BD 00 F5 00 BD 00 F5  ................
0647E624: 00000001   00BCFDD7: 00 BD 00 F5 00 BD 00 F5 00 BD 00 F5 00 BD 00 D2  ................
0647E620: 0EEDFADE   00BCFDE7: FE BC 00 E4 FE BC 00 F6 FE BC 00 08 FF BC 00 1A  ................



