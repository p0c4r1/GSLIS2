EurekaLog 7.5.0.0  

Exception:
-----------------------------------
  2.2 Address: 00C775EB
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
|*Exception Thread: ID=5032; Parent=2120; Priority=0                                                                                   |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 5032] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                               |
|Comment=                                                                                                                              |
|--------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00C775EB|GSLIS2.exe|008775EB|IdStack             |TIdStack               |RaiseSocketError       |894[53]   |
|00000020|04     |0AA9F648|00C77572|GSLIS2.exe|00877572|IdStack             |TIdStack               |RaiseLastSocketError   |828[1]    |
|00000020|04     |0AA9F654|00C774DD|GSLIS2.exe|008774DD|IdStack             |TIdStack               |CheckForSocketError    |802[2]    |
|00000020|04     |0AA9F668|00C736F0|GSLIS2.exe|008736F0|IdStackWindows      |TIdStackWindows        |Connect                |1970[20]  |
|00000020|04     |0AA9F6FC|00CA4839|GSLIS2.exe|008A4839|IdSocketHandle      |TIdSocketHandle        |Connect                |294[1]    |
|00000020|04     |0AA9F714|00CA6819|GSLIS2.exe|008A6819|IdIOHandlerStack    |TIdIOHandlerStack      |ConnectClient          |348[52]   |
|00000020|04     |0AA9F748|00CAC503|GSLIS2.exe|008AC503|IdIOHandlerSocket   |TIdIOHandlerSocket     |Open                   |332[13]   |
|00000020|04     |0AA9F750|00CA8BE5|GSLIS2.exe|008A8BE5|IdTCPClient         |TIdTCPClientCustom     |Connect                |320[55]   |
|00000020|04     |0AA9F758|00CA8C38|GSLIS2.exe|008A8C38|IdTCPClient         |TIdTCPClientCustom     |Connect                |326[61]   |
|00000020|04     |0AA9F778|00CA75A7|GSLIS2.exe|008A75A7|IdTCPConnection     |TIdTCPConnection       |Disconnect             |541[11]   |
|00000020|04     |0AA9F78C|00CE2F9A|GSLIS2.exe|008E2F9A|IdHTTP              |TIdCustomHTTP          |CheckAndConnect        |1841[42]  |
|00000020|04     |0AA9F7C0|00CE34C3|GSLIS2.exe|008E34C3|IdHTTP              |TIdCustomHTTP          |ConnectToHost          |1987[129] |
|00000020|04     |0AA9F7F8|00CE5343|GSLIS2.exe|008E5343|IdHTTP              |TIdCustomHTTP          |DoRequest              |2938[23]  |
|00000020|04     |0AA9F840|00CE0856|GSLIS2.exe|008E0856|IdHTTP              |TIdCustomHTTP          |Post                   |807[19]   |
|00000020|04     |0AA9F880|00CE102C|GSLIS2.exe|008E102C|IdHTTP              |TIdCustomHTTP          |Post                   |1046[12]  |
|00000020|04     |0AA9F8BC|00CE1146|GSLIS2.exe|008E1146|IdHTTP              |TIdCustomHTTP          |Post                   |1063[3]   |
|00000020|04     |0AA9F8F8|00ED6872|GSLIS2.exe|00AD6872|UnitJasper          |                       |reportExecReqFileParams|243[18]   |
|00000020|04     |0AA9F978|00EDC75F|GSLIS2.exe|00ADC75F|UnitBayar           |TfrmBayar              |edPrintClick           |797[4]    |
|00000020|04     |0AA9F990|00EDC79C|GSLIS2.exe|00ADC79C|UnitBayar           |TfrmBayar              |edPrintClick           |805[12]   |
|00000020|03     |0AA9F9D8|008908D4|GSLIS2.exe|004908D4|uniGUIClasses       |TUniControl            |DoClick                |          |
|00000020|03     |0AA9F9E0|00A7B8A3|GSLIS2.exe|0067B8A3|uniButton           |TUniCustomButton       |DoClick                |          |
|00000020|03     |0AA9F9FC|00A7AEB4|GSLIS2.exe|0067AEB4|uniButton           |TUniCustomButton       |ClickHandler           |          |
|00000020|03     |0AA9FA14|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |0AA9FA6C|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |0AA9FAB4|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |0AA9FB00|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue      |          |
|00000020|03     |0AA9FB0C|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents          |          |
|00000020|03     |0AA9FB44|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal              |          |
|00000020|03     |0AA9FB74|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal              |          |
|00000020|04     |0AA9FB78|00EF140F|GSLIS2.exe|00AF140F|UnitFODaftar        |TfrmFODaftar           |btnBayarClick          |941[49]   |
|00000020|04     |0AA9FBF4|00EF6D29|GSLIS2.exe|00AF6D29|UnitFODaftar        |TfrmFODaftar           |UniFormKeyDown         |1711[16]  |
|00000020|03     |0AA9FC08|0086F3ED|GSLIS2.exe|0046F3ED|uniGUIJSForm        |TUniJSForm             |ExtOnKeyDown           |          |
|00000020|03     |0AA9FC2C|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |0AA9FC84|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |0AA9FCCC|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |0AA9FD18|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue      |          |
|00000020|03     |0AA9FD24|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents          |          |
|00000020|03     |0AA9FD5C|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal              |          |
|00000020|03     |0AA9FD8C|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal              |          |
|00000020|04     |0AA9FD90|00F2E337|GSLIS2.exe|00B2E337|Main                |TMainForm              |mnFODaftarClick        |135[1]    |
|00000020|03     |0AA9FDA0|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick      |          |
|00000020|03     |0AA9FDBC|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |0AA9FE14|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |0AA9FE5C|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |0AA9FEA8|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager|TUniSessionWorkerThread|Execute                |          |
|00000020|04     |0AA9FEE4|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|00000020|04     |0AA9FEF8|004CF631|GSLIS2.exe|000CF631|System.Classes      |                       |ThreadProc             |14161[21] |
|00000020|04     |0AA9FF1C|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|00000020|04     |0AA9FF74|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager|TUniSessionWorkerThread|Create                 |          |
----------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48714076|2020-01-25 11:28:27|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 05:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 05:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|50050000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 00:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|505D0000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 06:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|53B70000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 06:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|580F0000|msftedit.dll                            |Rich Text Edit Control, v4.1                       |5.41.21.2510    |592384  |2010-11-20 21:24:14|C:\Windows\System32\                                                                                          |
|58190000|hhctrl.ocx                              |Microsoft® HTML Help Control                       |6.1.7601.24134  |523776  |2018-04-18 09:51:41|C:\Windows\System32\                                                                                          |
|5E0D0000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-13 19:15:27|C:\Windows\System32\                                                                                          |
|63BA0000|winsta.dll                              |Winstation Library                                 |6.1.7601.18540  |157696  |2014-07-16 19:40:03|C:\Windows\System32\                                                                                          |
|67500000|bcryptprimitives.dll                    |Windows Cryptographic Primitives Library           |6.1.7601.23451  |249352  |2016-05-12 07:04:55|C:\Windows\SysWOW64\                                                                                          |
|67540000|uxtheme.dll                             |Microsoft UxTheme Library                          |6.1.7600.16385  |245760  |2009-07-13 19:11:24|C:\Windows\System32\                                                                                          |
|6A1F0000|rlls.dll                                |Relevant-Knowledge                                 |4.0.20.119      |750832  |2019-07-14 06:27:57|C:\Windows\System32\                                                                                          |
|6AB30000|schannel.dll                            |TLS / SSL Security Provider                        |6.1.7601.24545  |254464  |2020-01-02 21:38:42|C:\Windows\System32\                                                                                          |
|709F0000|bcrypt.dll                              |Windows Cryptographic Primitives Library (Wow64)   |6.1.7601.24545  |82944   |2020-01-02 21:38:54|C:\Windows\System32\                                                                                          |
|70A90000|oleacc.dll                              |Active Accessibility Core Component                |7.0.0.0         |233472  |2011-08-26 22:26:27|C:\Windows\System32\                                                                                          |
|70C20000|secur32.dll                             |Security Support Provider Interface                |6.1.7601.24545  |22016   |2020-01-02 21:38:43|C:\Windows\System32\                                                                                          |
|714B0000|powrprof.dll                            |Power Profile Helper DLL                           |6.1.7600.16385  |145408  |2009-07-13 19:16:12|C:\Windows\System32\                                                                                          |
|73060000|wship6.dll                              |Winsock2 Helper DLL (TL/IPv6)                      |6.1.7600.16385  |10752   |2009-07-13 19:16:20|C:\Windows\System32\                                                                                          |
|73110000|rasadhlp.dll                            |Remote Access AutoDial Helper                      |6.1.7600.16385  |11776   |2009-07-13 19:16:12|C:\Windows\System32\                                                                                          |
|73120000|FWPUCLNT.DLL                            |FWP/IPsec User-Mode API                            |6.1.7601.24000  |216576  |2017-12-31 20:00:02|C:\Windows\System32\                                                                                          |
|73160000|wshbth.dll                              |Windows Sockets Helper DLL                         |6.1.7601.17514  |36352   |2010-11-20 21:24:50|C:\Windows\System32\                                                                                          |
|73170000|winrnr.dll                              |LDAP RnR Provider DLL                              |6.1.7600.16385  |20992   |2009-07-13 19:16:19|C:\Windows\System32\                                                                                          |
|73180000|dnsapi.dll                              |DNS Client API DLL                                 |6.1.7601.24168  |269824  |2018-06-08 09:54:41|C:\Windows\System32\                                                                                          |
|731E0000|pnrpnsp.dll                             |PNRP Name Space Provider                           |6.1.7600.16385  |65024   |2009-07-13 19:16:12|C:\Windows\System32\                                                                                          |
|73240000|NapiNSP.dll                             |E-mail Naming Shim Provider                        |6.1.7600.16385  |52224   |2009-07-13 19:16:02|C:\Windows\System32\                                                                                          |
|73250000|WSHTCPIP.DLL                            |Winsock2 Helper DLL (TL/IPv4)                      |6.1.7600.16385  |9216    |2009-07-13 19:16:20|C:\Windows\System32\                                                                                          |
|73260000|mswsock.dll                             |Microsoft Windows Sockets 2.0 Service Provider     |6.1.7601.23451  |231424  |2016-05-11 09:19:16|C:\Windows\System32\                                                                                          |
|732A0000|nlaapi.dll                              |Network Location Awareness 2                       |6.1.7601.24000  |52224   |2017-12-31 20:00:07|C:\Windows\System32\                                                                                          |
|733C0000|winspool.drv                            |Windows Spooler Driver                             |6.1.7601.24383  |321536  |2019-02-15 23:50:54|C:\Windows\System32\                                                                                          |
|735D0000|comctl32.dll                            |User Experience Controls Library                   |6.10.7601.24483 |1681920 |2019-06-04 13:07:00|C:\Windows\winsxs\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.7601.24483_none_2b200f664577e14b\|
|73770000|winmm.dll                               |MCI API DLL                                        |6.1.7601.17514  |194048  |2010-11-20 21:24:16|C:\Windows\System32\                                                                                          |
|737B0000|ntmarta.dll                             |Windows NT MARTA provider                          |6.1.7600.16385  |121856  |2009-07-13 19:16:11|C:\Windows\System32\                                                                                          |
|737F0000|rsaenh.dll                              |Microsoft Enhanced Cryptographic Provider          |6.1.7600.16385  |242936  |2009-07-13 19:17:54|C:\Windows\System32\                                                                                          |
|73830000|cryptsp.dll                             |Cryptographic Service Provider API                 |6.1.7601.24499  |80896   |2019-06-12 09:19:54|C:\Windows\System32\                                                                                          |
|73930000|version.dll                             |Version Checking and File Installation Libraries   |6.1.7600.16385  |21504   |2009-07-13 19:16:17|C:\Windows\System32\                                                                                          |
|739F0000|winnsi.dll                              |Network Store Information RPC interface            |6.1.7601.23889  |16384   |2017-08-11 00:19:44|C:\Windows\System32\                                                                                          |
|73A00000|IPHLPAPI.DLL                            |IP Helper API                                      |6.1.7601.17514  |103936  |2010-11-20 21:24:32|C:\Windows\System32\                                                                                          |
|73D20000|security.dll                            |Security Support Provider Interface                |6.1.7600.16385  |4608    |2009-07-13 19:09:53|C:\Windows\System32\                                                                                          |
|73E70000|wtsapi32.dll                            |Windows Remote Desktop Session Host Server SDK APIs|6.1.7601.17514  |40448   |2010-11-20 21:23:54|C:\Windows\System32\                                                                                          |
|742E0000|dbghelp.dll                             |Windows Image Helper                               |6.1.7601.17514  |854016  |2010-11-20 21:24:09|C:\Windows\System32\                                                                                          |
|743E0000|msvcp120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |454968  |2016-07-06 16:39:24|C:\Windows\System32\                                                                                          |
|74670000|msvcr120.dll                            |Microsoft® C Runtime Library                       |12.0.40660.0    |971064  |2016-07-06 16:39:24|C:\Windows\System32\                                                                                          |
|752E0000|CRYPTBASE.dll                           |Base cryptographic API DLL                         |6.1.7601.24545  |36352   |2020-01-02 21:02:56|C:\Windows\SysWOW64\                                                                                          |
|752F0000|sspicli.dll                             |Security Support Provider Interface                |6.1.7601.24545  |96768   |2020-01-02 21:38:57|C:\Windows\SysWOW64\                                                                                          |
|75350000|ole32.dll                               |Microsoft OLE for Windows                          |6.1.7601.24537  |1425920 |2019-11-14 20:29:47|C:\Windows\SysWOW64\                                                                                          |
|754B0000|rpcrt4.dll                              |Remote Procedure Call Runtime                      |6.1.7601.24545  |666112  |2020-01-02 21:38:57|C:\Windows\SysWOW64\                                                                                          |
|755A0000|gdi32.dll                               |GDI Client DLL                                     |6.1.7601.24540  |313344  |2019-11-27 21:29:33|C:\Windows\SysWOW64\                                                                                          |
|75630000|nsi.dll                                 |NSI User-mode interface DLL                        |6.1.7601.23889  |8704    |2017-08-11 00:19:39|C:\Windows\SysWOW64\                                                                                          |
|75640000|iertutil.dll                            |Run time utility for Internet Explorer             |11.0.9600.19597 |2304000 |2019-12-16 18:33:53|C:\Windows\SysWOW64\                                                                                          |
|75880000|shell32.dll                             |Windows Shell Common Dll                           |6.1.7601.24468  |12880384|2019-05-24 17:59:03|C:\Windows\SysWOW64\                                                                                          |
|764D0000|advapi32.dll                            |Advanced Windows 32 Base API                       |6.1.7601.24545  |644096  |2020-01-02 21:37:31|C:\Windows\SysWOW64\                                                                                          |
|765B0000|msvcrt.dll                              |Windows NT CRT DLL                                 |7.0.7601.17744  |690688  |2011-12-16 01:52:58|C:\Windows\SysWOW64\                                                                                          |
|766C0000|crypt32.dll                             |Crypto API32                                       |6.1.7601.24542  |1177088 |2019-12-10 02:38:34|C:\Windows\SysWOW64\                                                                                          |
|767F0000|oleaut32.dll                            |                                                   |6.1.7601.24537  |583680  |2019-11-14 20:29:47|C:\Windows\SysWOW64\                                                                                          |
|76890000|msasn1.dll                              |ASN.1 Runtime APIs                                 |6.1.7601.17514  |34304   |2010-11-20 21:23:48|C:\Windows\SysWOW64\                                                                                          |
|768A0000|ws2_32.dll                              |Windows Socket 2.0 32-Bit DLL                      |6.1.7601.23451  |206336  |2016-05-11 09:19:26|C:\Windows\SysWOW64\                                                                                          |
|768E0000|profapi.dll                             |User Profile Basic API                             |6.1.7600.16385  |31744   |2009-07-13 19:16:12|C:\Windows\SysWOW64\                                                                                          |
|768F0000|kernel32.dll                            |Windows NT BASE API Client DLL                     |6.1.7601.24545  |1114112 |2020-01-02 21:38:57|C:\Windows\SysWOW64\                                                                                          |
|76A00000|normaliz.dll                            |Unicode Normalization DLL                          |6.1.7600.16385  |2048    |2009-07-13 19:09:00|C:\Windows\SysWOW64\                                                                                          |
|76A10000|api-ms-win-downlevel-normaliz-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |2560    |2018-04-01 15:00:12|C:\Windows\SysWOW64\                                                                                          |
|76A20000|shlwapi.dll                             |Shell Light-weight Utility Library                 |6.1.7601.17514  |350208  |2010-11-20 21:23:48|C:\Windows\SysWOW64\                                                                                          |
|76A80000|imagehlp.dll                            |Windows NT Image Helper                            |6.1.7601.18288  |159232  |2013-10-18 19:36:59|C:\Windows\SysWOW64\                                                                                          |
|76B40000|KERNELBASE.dll                          |Windows NT BASE API Client DLL                     |6.1.7601.24545  |275968  |2020-01-02 21:38:57|C:\Windows\SysWOW64\                                                                                          |
|76B90000|devobj.dll                              |Device Information Set DLL                         |6.1.7601.17621  |64512   |2011-05-24 04:40:05|C:\Windows\SysWOW64\                                                                                          |
|76BB0000|comdlg32.dll                            |Common Dialogs DLL                                 |6.1.7601.17514  |485888  |2010-11-20 21:23:48|C:\Windows\SysWOW64\                                                                                          |
|76C30000|msctf.dll                               |MSCTF Server DLL                                   |6.1.7601.24520  |836608  |2019-08-28 20:52:30|C:\Windows\SysWOW64\                                                                                          |
|76D00000|setupapi.dll                            |Windows Setup API                                  |6.1.7601.17514  |1667584 |2010-11-20 21:23:51|C:\Windows\SysWOW64\                                                                                          |
|76EA0000|api-ms-win-downlevel-user32-l1-1-0.dll  |ApiSet Stub DLL                                    |6.2.9200.16492  |4096    |2018-04-01 15:00:12|C:\Windows\SysWOW64\                                                                                          |
|76F40000|cfgmgr32.dll                            |Configuration Manager DLL                          |6.1.7601.17621  |145920  |2011-05-24 04:39:38|C:\Windows\SysWOW64\                                                                                          |
|76F70000|usp10.dll                               |Uniscribe Unicode script processor                 |1.626.7601.24535|628224  |2019-11-05 15:25:42|C:\Windows\SysWOW64\                                                                                          |
|77010000|sechost.dll                             |Host for SCM/SDDL/LSA Lookup APIs                  |6.1.7601.18869  |92160   |2015-05-25 12:01:39|C:\Windows\SysWOW64\                                                                                          |
|77030000|user32.dll                              |Multi-User Windows USER API Client DLL             |6.1.7601.24545  |834048  |2020-01-02 21:38:57|C:\Windows\SysWOW64\                                                                                          |
|77140000|wininet.dll                             |Internet Extensions for Win32                      |11.0.9600.19597 |4387840 |2019-12-16 17:43:02|C:\Windows\SysWOW64\                                                                                          |
|77580000|lpk.dll                                 |Language Pack                                      |6.1.7601.24537  |25600   |2019-11-14 20:29:52|C:\Windows\SysWOW64\                                                                                          |
|77590000|api-ms-win-downlevel-advapi32-l1-1-0.dll|ApiSet Stub DLL                                    |6.2.9200.16492  |10752   |2018-04-01 15:00:12|C:\Windows\SysWOW64\                                                                                          |
|775A0000|psapi.dll                               |Process Status Helper                              |6.1.7600.16385  |6144    |2009-07-13 19:16:12|C:\Windows\SysWOW64\                                                                                          |
|775B0000|api-ms-win-downlevel-shlwapi-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |9728    |2018-04-01 15:00:12|C:\Windows\SysWOW64\                                                                                          |
|775C0000|Wldap32.dll                             |Win32 LDAP API DLL                                 |6.1.7601.23889  |271360  |2017-08-11 00:19:44|C:\Windows\SysWOW64\                                                                                          |
|77610000|userenv.dll                             |Userenv                                            |6.1.7601.24535  |83968   |2019-11-05 15:25:42|C:\Windows\SysWOW64\                                                                                          |
|77630000|api-ms-win-downlevel-version-l1-1-0.dll |ApiSet Stub DLL                                    |6.2.9200.16492  |3072    |2018-04-01 15:00:12|C:\Windows\SysWOW64\                                                                                          |
|77790000|imm32.dll                               |Multi-User Windows IMM32 API Client DLL            |6.1.7601.17514  |119808  |2010-11-20 21:24:25|C:\Windows\System32\                                                                                          |
|77BD0000|ntdll.dll                               |NT Layer DLL                                       |6.1.7601.24545  |1320248 |2020-01-02 21:41:21|C:\Windows\SysWOW64\                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Processes Information:
----------------------


Assembler Information:
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $C77000, Allocation Base: $400000, Region Size: 3129344
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; IdStack.TIdStack.RaiseSocketError (Line=857 - Offset=44)
; --------------------------------------------------------
00C775A4  8D4DF4      LEA  ECX, [EBP-$0C]
00C775A7  8B55F8      MOV  EDX, [EBP-8]
00C775AA  8B45FC      MOV  EAX, [EBP-4]
00C775AD  8B18        MOV  EBX, [EAX]
00C775AF  FF5348      CALL DWORD PTR [EBX+$48]
00C775B2  8B45F4      MOV  EAX, [EBP-$0C]
00C775B5  50          PUSH EAX
00C775B6  8B4DF8      MOV  ECX, [EBP-8]
00C775B9  B201        MOV  DL, 1
00C775BB  A13443C700  MOV  EAX, [$00C74334]     ; Delphi Class "EIdNotASocket"
00C775C0  E81FF4FFFF  CALL -$0BE1               ; ($00C769E4) IdStack.EIdSocketError.CreateError
00C775C5  E8623879FF  CALL -$86C79E             ; ($0040AE2C) System._RaiseExcept
;
; Line=894 - Offset=82
; --------------------
00C775CA  8D4DF0      LEA  ECX, [EBP-$10]
00C775CD  8B55F8      MOV  EDX, [EBP-8]
00C775D0  8B45FC      MOV  EAX, [EBP-4]
00C775D3  8B18        MOV  EBX, [EAX]
00C775D5  FF5348      CALL DWORD PTR [EBX+$48]
00C775D8  8B45F0      MOV  EAX, [EBP-$10]
00C775DB  50          PUSH EAX
00C775DC  8B4DF8      MOV  ECX, [EBP-8]
00C775DF  B201        MOV  DL, 1
00C775E1  A18840C700  MOV  EAX, [$00C74088]     ; Delphi Class "EIdSocketError"
00C775E6  E8F9F3FFFF  CALL -$0C07               ; ($00C769E4) IdStack.EIdSocketError.CreateError
;
; Line=894 - Offset=115
; ---------------------
00C775EB  E83C3879FF  CALL -$86C7C4             ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=895 - Offset=120
; ---------------------
00C775F0  33C0        XOR  EAX, EAX
00C775F2  5A          POP  EDX
00C775F3  59          POP  ECX
00C775F4  59          POP  ECX
00C775F5  648910      MOV  FS:[EAX], EDX
00C775F8  681276C700  PUSH $C77612              ; ($00C77612) IdStack.TIdStack.RaiseSocketError (Line=895) Data as ANSI: '[‹å]ÃU‹ìƒÄÜS3Û‰]ð‰]ì‰Mô‰Uø‰Eü3À...'; Data as UNICODE: '譛工郃譕菬�㍓觛嶉觬喉觸ﱅ쀳...' IdStack.TIdStack.RaiseSocketError (Line=895)
00C775FD  8D45F0      LEA  EAX, [EBP-$10]
00C77600  BA02000000  MOV  EDX, 2
00C77605  E8024279FF  CALL -$86BDFE             ; ($0040B80C) System._UStrArrayClr

Registers:
-----------------------------
EAX: 0AA9F57C   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0AA9F5CC
EDX: 00000000   ESP: 0AA9F57C
EIP: 76B4C5AF   FLG: 00000202
EXP: 00C775EB   STK: 0AA9F57C

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0A8C8B3C: 00000010   00C775EB: E8 3C 38 79 FF 33 C0 5A 59 59 64 89 10 68 12 76  .<8y.3.ZYYd..h.v
0A8C8B38: 0042FF98   00C775FB: C7 00 8D 45 F0 BA 02 00 00 00 E8 02 42 79 FF C3  ...E........By..
0A8C8B34: 0AA9F5C4   00C7760B: E9 78 36 79 FF EB EB 5B 8B E5 5D C3 90 55 8B EC  .x6y...[..]..U..
0A8C8B30: 0B3CA270   00C7761B: 83 C4 DC 53 33 DB 89 5D F0 89 5D EC 89 4D F4 89  ...S3..]..]..M..
0A8C8B2C: 0AA9F624   00C7762B: 55 F8 89 45 FC 33 C0 55 68 48 7A C7 00 64 FF 30  U..E.3.UhHz..d.0
0A8C8B28: 0AA9F644   00C7763B: 64 89 20 8B 45 F4 E8 66 41 79 FF 8B 45 F8 05 EC  d. .E..fAy..E...
0A8C8B24: 000003AC   00C7764B: D8 FF FF 83 F8 3E 0F 87 92 03 00 00 FF 24 85 5E  .....>.......$.^
0A8C8B20: 00000010   00C7765B: 76 C7 00 5A 77 C7 00 E9 79 C7 00 E9 79 C7 00 E9  v..Zw...y...y...
0A8C8B1C: 00C70940   00C7766B: 79 C7 00 E9 79 C7 00 6C 77 C7 00 E9 79 C7 00 E9  y...y..lw...y...
0A8C8B18: 0B3CA270   00C7767B: 79 C7 00 E9 79 C7 00 7E 77 C7 00 90 77 C7 00 E9  y...y..~w...w...
0A8C8B14: 00C775F0   00C7768B: 79 C7 00 E9 79 C7 00 E9 79 C7 00 E9 79 C7 00 E9  y...y...y...y...
0A8C8B10: 00000007   00C7769B: 79 C7 00 E9 79 C7 00 E9 79 C7 00 A2 77 C7 00 E9  y...y...y...w...
0A8C8B0C: 76B4C5AF   00C776AB: 79 C7 00 B4 77 C7 00 E9 79 C7 00 E9 79 C7 00 E9  y...w...y...y...
0A8C8B08: 00000000   00C776BB: 79 C7 00 E9 79 C7 00 E9 79 C7 00 E9 79 C7 00 E9  y...y...y...y...
0A8C8B04: 00000001   00C776CB: 79 C7 00 E9 79 C7 00 E9 79 C7 00 E9 79 C7 00 C6  y...y...y...y...
0A8C8B00: 0EEDFADE   00C776DB: 77 C7 00 D8 77 C7 00 EA 77 C7 00 FC 77 C7 00 0E  w...w...w...w...



