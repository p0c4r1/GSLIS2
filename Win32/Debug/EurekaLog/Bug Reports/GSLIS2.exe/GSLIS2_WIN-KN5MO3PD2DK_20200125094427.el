EurekaLog 7.5.0.0  

Exception:
-------------------------------------------
  2.2 Address: 00771879
  2.5 Type   : EDatabaseError
  2.6 Message: QSave: Field 'id' not found.
  2.7 ID     : A0700000
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
|*Exception Thread: ID=9084; Parent=8116; Priority=0                                                                                |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 9084] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                            |
|Comment=                                                                                                                           |
|-----------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|00771879|GSLIS2.exe|00371879|Data.DB             |                       |DatabaseError       |3226[7]   |
|00000020|04     |0AADF738|00429EDB|GSLIS2.exe|00029EDB|System.SysUtils     |                       |Format              |12154[1]  |
|00000020|04     |0AADF758|0077192D|GSLIS2.exe|0037192D|Data.DB             |                       |DatabaseErrorFmt    |3235[1]   |
|00000020|04     |0AADF77C|00787F26|GSLIS2.exe|00387F26|Data.DB             |TDataSet               |FieldByName         |13083[2]  |
|00000020|04     |0AADF7AC|00EE6B6A|GSLIS2.exe|00AE6B6A|UnitBayar           |TfrmBayar              |UniButton1Click     |2202[142] |
|00000020|04     |0AADF7B4|00EE6DB2|GSLIS2.exe|00AE6DB2|UnitBayar           |TfrmBayar              |UniButton1Click     |2240[180] |
|00000020|03     |0AADF9D8|008908D4|GSLIS2.exe|004908D4|uniGUIClasses       |TUniControl            |DoClick             |          |
|00000020|03     |0AADF9E0|00A7B8A3|GSLIS2.exe|0067B8A3|uniButton           |TUniCustomButton       |DoClick             |          |
|00000020|03     |0AADF9FC|00A7AEB4|GSLIS2.exe|0067AEB4|uniButton           |TUniCustomButton       |ClickHandler        |          |
|00000020|03     |0AADFA14|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0AADFA6C|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0AADFAB4|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0AADFB00|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue   |          |
|00000020|03     |0AADFB0C|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents       |          |
|00000020|03     |0AADFB44|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal           |          |
|00000020|03     |0AADFB74|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal           |          |
|00000020|04     |0AADFB78|00EED017|GSLIS2.exe|00AED017|UnitFODaftar        |TfrmFODaftar           |btnBayarClick       |941[49]   |
|00000020|04     |0AADFBF4|00EF2931|GSLIS2.exe|00AF2931|UnitFODaftar        |TfrmFODaftar           |UniFormKeyDown      |1711[16]  |
|00000020|03     |0AADFC08|0086F3ED|GSLIS2.exe|0046F3ED|uniGUIJSForm        |TUniJSForm             |ExtOnKeyDown        |          |
|00000020|03     |0AADFC2C|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0AADFC84|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0AADFCCC|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0AADFD18|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue   |          |
|00000020|03     |0AADFD24|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents       |          |
|00000020|03     |0AADFD5C|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal           |          |
|00000020|03     |0AADFD8C|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal           |          |
|00000020|04     |0AADFD90|00F29F3F|GSLIS2.exe|00B29F3F|Main                |TMainForm              |mnFODaftarClick     |135[1]    |
|00000020|03     |0AADFDA0|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick   |          |
|00000020|03     |0AADFDBC|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0AADFE14|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0AADFE5C|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0AADFEA8|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager|TUniSessionWorkerThread|Execute             |          |
|00000020|04     |0AADFEE4|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0AADFEF8|004CF631|GSLIS2.exe|000CF631|System.Classes      |                       |ThreadProc          |14161[21] |
|00000020|04     |0AADFF1C|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0AADFF74|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock    |1320[2]   |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager|TUniSessionWorkerThread|Create              |          |
-------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48690929|2020-01-25 09:43:32|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 05:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 05:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|501A0000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 00:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|53B00000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 06:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|580F0000|msftedit.dll                            |Rich Text Edit Control, v4.1                       |5.41.21.2510    |592384  |2010-11-20 21:24:14|C:\Windows\System32\                                                                                          |
|58190000|hhctrl.ocx                              |Microsoft® HTML Help Control                       |6.1.7601.24134  |523776  |2018-04-18 09:51:41|C:\Windows\System32\                                                                                          |
|5E020000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 06:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|5E140000|idndl.dll                               |Downlevel DLL                                      |6.1.7600.16385  |33792   |2009-07-13 19:15:27|C:\Windows\System32\                                                                                          |
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $771000, Allocation Base: $400000, Region Size: 8380416
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; Data.DatabaseError (Line=3226 - Offset=147)
; -------------------------------------------
00771843  8D45E0      LEA  EAX, [EBP-$20]
00771846  50          PUSH EAX
00771847  8B4308      MOV  EAX, [EBX+8]
0077184A  8945D0      MOV  [EBP-$30], EAX
0077184D  C645D411    MOV  BYTE PTR [EBP-$2C], $11
00771851  8975D8      MOV  [EBP-$28], ESI
00771854  C645DC11    MOV  BYTE PTR [EBP-$24], $11
00771858  8D55D0      LEA  EDX, [EBP-$30]
0077185B  B901000000  MOV  ECX, 1
00771860  B8EC187700  MOV  EAX, $007718EC          ; ($007718EC) Data.DatabaseError (Line=3230) UNICODE: '%s: %s' Data.DatabaseError (Line=3230)
00771865  E85686CBFF  CALL -$3479AA                ; ($00429EC0) System.Format
0077186A  8B4DE0      MOV  ECX, [EBP-$20]
0077186D  B201        MOV  DL, 1
0077186F  A1904F7500  MOV  EAX, [$00754F90]        ; Delphi Class "EDatabaseError"
00771874  E8C3DACBFF  CALL -$34253D                ; ($0042F33C) System.Exception.Create
;
; Line=3226 - Offset=201
; ----------------------
00771879  E8AE95C9FF  CALL -$366A52                ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
0077187E  EB13        JMP  +$13                    ; ($00771893) Data.DatabaseError (Line=3230)
;
; Line=3229 - Offset=208
; ----------------------
00771880  8BCE        MOV  ECX, ESI
00771882  B201        MOV  DL, 1
00771884  A1904F7500  MOV  EAX, [$00754F90]        ; Delphi Class "EDatabaseError"
00771889  E8AEDACBFF  CALL -$342552                ; ($0042F33C) System.Exception.Create
0077188E  E89995C9FF  CALL -$366A67                ; ($0040AE2C) System._RaiseExcept
;
; Line=3230 - Offset=227
; ----------------------
00771893  33C0        XOR  EAX, EAX
00771895  5A          POP  EDX
00771896  59          POP  ECX
00771897  59          POP  ECX
00771898  648910      MOV  FS:[EAX], EDX
0077189B  68B8187700  PUSH $7718B8                 ; ($007718B8) Data.DatabaseError (Line=3230) Data as ANSI: '^[‹å]Ã'; Data as UNICODE: '孞썝' Data.DatabaseError (Line=3230)
007718A0  8D45E0      LEA  EAX, [EBP-$20]
007718A3  E8049FC9FF  CALL -$3660FC                ; ($0040B7AC) System._UStrClr
007718A8  8D45FC      LEA  EAX, [EBP-4]
007718AB  E8FC9EC9FF  CALL -$366104                ; ($0040B7AC) System._UStrClr

Registers:
-----------------------------
EAX: 0AADF668   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0AADF6B8
EDX: 00000000   ESP: 0AADF668
EIP: 76B4C5AF   FLG: 00000212
EXP: 00771879   STK: 0AADF668

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
065F990C: 0B65BB8C   00771879: E8 AE 95 C9 FF EB 13 8B CE B2 01 A1 90 4F 75 00  .............Ou.
065F9908: 0042FF98   00771889: E8 AE DA CB FF E8 99 95 C9 FF 33 C0 5A 59 59 64  ..........3.ZYYd
065F9904: 0AADF6B0   00771899: 89 10 68 B8 18 77 00 8D 45 E0 E8 04 9F C9 FF 8D  ..h..w..E.......
065F9900: 04E46FC0   007718A9: 45 FC E8 FC 9E C9 FF C3 E9 D2 93 C9 FF EB E8 5E  E..............^
065F98FC: 0AADF710   007718B9: 5B 8B E5 5D C3 00 00 B0 04 02 00 FF FF FF FF 09  [..]............
065F98F8: 0AADF754   007718C9: 00 00 00 25 00 73 00 2E 00 25 00 73 00 3A 00 20  ...%.s...%.s.:. 
065F98F4: 00000000   007718D9: 00 25 00 73 00 00 00 B0 04 02 00 FF FF FF FF 06  .%.s............
065F98F0: 0B65BB8C   007718E9: 00 00 00 25 00 73 00 3A 00 20 00 25 00 73 00 00  ...%.s.:. .%.s..
065F98EC: 0AC65560   007718F9: 00 00 00 55 8B EC 6A 00 53 56 57 8B F9 8B F2 8B  ...U..j.SVW.....
065F98E8: 04E46FC0   00771909: D8 33 C0 55 68 48 19 77 00 64 FF 30 64 89 20 8D  .3.UhH.w.d.0d. .
065F98E4: 0077187E   00771919: 45 FC 50 8B D6 8B CF 8B C3 E8 99 85 CB FF 8B 45  E.P............E
065F98E0: 00000007   00771929: FC 8B 55 08 E8 7E FE FF FF 33 C0 5A 59 59 64 89  ..U..~...3.ZYYd.
065F98DC: 76B4C5AF   00771939: 10 68 4F 19 77 00 8D 45 FC E8 65 9E C9 FF C3 E9  .hO.w..E..e.....
065F98D8: 00000000   00771949: 3B 93 C9 FF EB F0 5F 5E 5B 59 5D C2 04 00 90 55  ;....._^[Y]....U
065F98D4: 00000001   00771959: 8B EC 83 C4 F4 53 56 57 33 DB 89 5D FC 8B F1 8B  .....SVW3..]....
065F98D0: 0EEDFADE   00771969: FA 33 D2 55 68 BF 19 77 00 64 FF 32 64 89 22 8B  .3.Uh..w.d.2d.".



