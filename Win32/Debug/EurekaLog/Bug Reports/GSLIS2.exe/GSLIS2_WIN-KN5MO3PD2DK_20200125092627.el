EurekaLog 7.5.0.0  

Exception:
---------------------------------------------------------------------------------------------------------
  2.2 Address: 008EDDE1
  2.5 Type   : EMySQLNativeException
  2.6 Message: [FireDAC][Phys][MySQL] Incorrect decimal value: '' for column 'nilai_normal_min' at row 1.
  2.7 ID     : 0B790000
  2.11 Sent  : 0

User:
-------------------------
  3.2 Name : Windows User
  3.3 Email: 

Steps to reproduce:
------------
  8.1 Text: 


Call Stack Information:
----------------------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack   |Address |Module    |Offset  |Unit                     |Class                     |Procedure/Method           |Line      |
----------------------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=8776; Parent=2292; Priority=0                                                                                               |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 8776] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                                           |
|Comment=                                                                                                                                          |
|--------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|008EDDE1|GSLIS2.exe|004EDDE1|FireDAC.Stan.Error       |                          |FDException                |189[27]   |
|00000020|04     |0AE2F19C|009C8A03|GSLIS2.exe|005C8A03|FireDAC.Phys.MySQLWrapper|TMySQLSession             |ProcessError               |682[77]   |
|00000020|04     |0AE2F220|009C8CAB|GSLIS2.exe|005C8CAB|FireDAC.Phys.MySQLWrapper|TMySQLSession             |Check                      |713[6]    |
|00000020|04     |0AE2F230|009C9FBA|GSLIS2.exe|005C9FBA|FireDAC.Phys.MySQLWrapper|TMySQLSession             |QuerySB                    |1090[6]   |
|00000020|04     |0AE2F258|009D9A53|GSLIS2.exe|005D9A53|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand       |InternalExecute            |1754[26]  |
|00000020|04     |0AE2F2AC|009622EA|GSLIS2.exe|005622EA|FireDAC.Phys.Meta        |TFDPhysConnectionMetadata |_Release                   |257[4]    |
|00000020|04     |0AE2F2C8|0097FEB4|GSLIS2.exe|0057FEB4|FireDAC.Phys             |                          |Process_HandleSystemFailure|7843[9]   |
|00000020|04     |0AE2F2D4|0097FEFE|GSLIS2.exe|0057FEFE|FireDAC.Phys             |                          |Process_HandleSystemFailure|7847[13]  |
|00000020|04     |0AE2F2FC|0097FFE6|GSLIS2.exe|0057FFE6|FireDAC.Phys             |                          |Process_SingleRow          |7881[4]   |
|00000020|04     |0AE2F344|00980F00|GSLIS2.exe|00580F00|FireDAC.Phys             |TFDPhysCommand            |ExecuteBase                |8164[44]  |
|00000020|04     |0AE2F35C|00980FCB|GSLIS2.exe|00580FCB|FireDAC.Phys             |TFDPhysCommand            |ExecuteBase                |8187[67]  |
|00000020|04     |0AE2F368|00981063|GSLIS2.exe|00581063|FireDAC.Phys             |TFDPhysCommand            |ExecuteBase                |8207[87]  |
|00000020|04     |0AE2F3C0|0097FAAD|GSLIS2.exe|0057FAAD|FireDAC.Phys             |TFDPhysCommandAsyncExecute|Create                     |7754[0]   |
|00000020|04     |0AE2F408|009C466E|GSLIS2.exe|005C466E|FireDAC.Stan.Async       |TFDStanAsyncExecutor      |Run                        |270[12]   |
|00000020|04     |0AE2F444|0097AB44|GSLIS2.exe|0057AB44|FireDAC.Phys             |TFDPhysCommand            |ExecuteTask                |6325[15]  |
|00000020|04     |0AE2F45C|0097AB95|GSLIS2.exe|0057AB95|FireDAC.Phys             |TFDPhysCommand            |ExecuteTask                |6333[23]  |
|00000020|04     |0AE2F48C|0098110F|GSLIS2.exe|0058110F|FireDAC.Phys             |TFDPhysCommand            |Execute                    |8219[2]   |
|00000020|04     |0AE2F4B8|009BA99F|GSLIS2.exe|005BA99F|FireDAC.Comp.Client      |TFDCustomCommand          |InternalExecute            |6474[10]  |
|00000020|04     |0AE2F538|0097ABFB|GSLIS2.exe|0057ABFB|FireDAC.Phys             |TFDPhysCommand            |Disconnect                 |6343[5]   |
|00000020|04     |0AE2F56C|009BAD2D|GSLIS2.exe|005BAD2D|FireDAC.Comp.Client      |TFDCustomCommand          |Execute                    |6497[3]   |
|00000020|04     |0AE2F588|009C0811|GSLIS2.exe|005C0811|FireDAC.Comp.Client      |TFDAdaptedDataSet         |DoExecuteSource            |9547[3]   |
|00000020|04     |0AE2F59C|0098D084|GSLIS2.exe|0058D084|FireDAC.Comp.DataSet     |TFDDataSet                |Execute                    |3083[8]   |
|00000020|04     |0AE2F5C0|009C24BF|GSLIS2.exe|005C24BF|FireDAC.Comp.Client      |TFDCustomQuery            |ExecSQL                    |10821[1]  |
|00000020|04     |0AE2F5C8|00ED8443|GSLIS2.exe|00AD8443|UnitBayar                |                          |insert_order_detail        |286[110]  |
|00000020|04     |0AE2F7C0|00EE6974|GSLIS2.exe|00AE6974|UnitBayar                |TfrmBayar                 |UniButton1Click            |2171[122] |
|00000020|04     |0AE2F7C8|00EE6C41|GSLIS2.exe|00AE6C41|UnitBayar                |TfrmBayar                 |UniButton1Click            |2219[170] |
|00000020|03     |0AE2F9D8|008908D4|GSLIS2.exe|004908D4|uniGUIClasses            |TUniControl               |DoClick                    |          |
|00000020|03     |0AE2F9E0|00A7B8A3|GSLIS2.exe|0067B8A3|uniButton                |TUniCustomButton          |DoClick                    |          |
|00000020|03     |0AE2F9FC|00A7AEB4|GSLIS2.exe|0067AEB4|uniButton                |TUniCustomButton          |ClickHandler               |          |
|00000020|03     |0AE2FA14|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface        |TUniJSHelper              |HandleEvent                |          |
|00000020|03     |0AE2FA6C|00892295|GSLIS2.exe|00492295|uniGUIClasses            |TUniControl               |HandleEventIntercept       |          |
|00000020|03     |0AE2FAB4|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager     |TUniSessionWorkerThread   |ProcessEvent               |          |
|00000020|03     |0AE2FB00|008B304B|GSLIS2.exe|004B304B|uniGUIApplication        |TUniGUISession            |ProcessEventQueue          |          |
|00000020|03     |0AE2FB0C|008B3193|GSLIS2.exe|004B3193|uniGUIApplication        |TUniGUISession            |ProcessEvents              |          |
|00000020|03     |0AE2FB44|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm             |TUniBaseJSForm            |ShowModal                  |          |
|00000020|03     |0AE2FB74|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm               |TUniBaseForm              |ShowModal                  |          |
|00000020|04     |0AE2FB78|00EECDAB|GSLIS2.exe|00AECDAB|UnitFODaftar             |TfrmFODaftar              |btnBayarClick              |941[49]   |
|00000020|04     |0AE2FB80|00EECE1F|GSLIS2.exe|00AECE1F|UnitFODaftar             |TfrmFODaftar              |btnBayarClick              |953[61]   |
|00000020|04     |0AE2FBF4|00EF26C5|GSLIS2.exe|00AF26C5|UnitFODaftar             |TfrmFODaftar              |UniFormKeyDown             |1711[16]  |
|00000020|03     |0AE2FC08|0086F3ED|GSLIS2.exe|0046F3ED|uniGUIJSForm             |TUniJSForm                |ExtOnKeyDown               |          |
|00000020|03     |0AE2FC2C|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface        |TUniJSHelper              |HandleEvent                |          |
|00000020|03     |0AE2FC84|00892295|GSLIS2.exe|00492295|uniGUIClasses            |TUniControl               |HandleEventIntercept       |          |
|00000020|03     |0AE2FCCC|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager     |TUniSessionWorkerThread   |ProcessEvent               |          |
|00000020|03     |0AE2FD18|008B304B|GSLIS2.exe|004B304B|uniGUIApplication        |TUniGUISession            |ProcessEventQueue          |          |
|00000020|03     |0AE2FD24|008B3193|GSLIS2.exe|004B3193|uniGUIApplication        |TUniGUISession            |ProcessEvents              |          |
|00000020|03     |0AE2FD5C|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm             |TUniBaseJSForm            |ShowModal                  |          |
|00000020|03     |0AE2FD8C|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm               |TUniBaseForm              |ShowModal                  |          |
|00000020|04     |0AE2FD90|00F29CD3|GSLIS2.exe|00B29CD3|Main                     |TMainForm                 |mnFODaftarClick            |135[1]    |
|00000020|03     |0AE2FDA0|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu              |TUniMenuControl           |H_OnMenuItemClick          |          |
|00000020|03     |0AE2FDBC|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface        |TUniJSHelper              |HandleEvent                |          |
|00000020|03     |0AE2FE14|00892295|GSLIS2.exe|00492295|uniGUIClasses            |TUniControl               |HandleEventIntercept       |          |
|00000020|03     |0AE2FE5C|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager     |TUniSessionWorkerThread   |ProcessEvent               |          |
|00000020|03     |0AE2FEA8|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager     |TUniSessionWorkerThread   |Execute                    |          |
|00000020|04     |0AE2FEE4|006E5835|GSLIS2.exe|002E5835|EThreadsManager          |                          |ThreadDataUnlock           |1320[2]   |
|00000020|04     |0AE2FEF8|004CF631|GSLIS2.exe|000CF631|System.Classes           |                          |ThreadProc                 |14161[21] |
|00000020|04     |0AE2FF1C|006E5835|GSLIS2.exe|002E5835|EThreadsManager          |                          |ThreadDataUnlock           |1320[2]   |
|00000020|04     |0AE2FF74|006E5835|GSLIS2.exe|002E5835|EThreadsManager          |                          |ThreadDataUnlock           |1320[2]   |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager     |TUniSessionWorkerThread   |Create                     |          |
----------------------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                                    |Description                                        |Version         |Size    |Modified           |Path                                                                                                          |
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe                              |                                                   |1.0.0.0         |48689795|2020-01-25 09:24:47|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|11000000|libeay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |1374208 |2018-11-22 05:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|12000000|ssleay32.dll                            |OpenSSL Shared Library                             |1.0.2.17        |337920  |2018-11-22 05:48:46|D:\Dev\GSLIS2\Win32\Debug\                                                                                    |
|50110000|libmysql.dll                            |                                                   |5.7.28.0        |5394432 |2019-09-27 00:59:56|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|53AB0000|symsrv.dll                              |Symbol Server                                      |6.12.2.633      |131856  |2016-07-14 06:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
|53B00000|dbghelp.dll                             |Windows Image Helper                               |6.12.2.633      |1213200 |2016-07-14 06:30:50|C:\Program Files (x86)\Neos Eureka S.r.l\EurekaLog 7\Bin\                                                     |
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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $8ED000, Allocation Base: $400000, Region Size: 6823936
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; FireDAC.Stan.FDException (Line=175 - Offset=232)
; ------------------------------------------------
008EDDB0  3B45F0      CMP  EAX, [EBP-$10]
008EDDB3  740E        JZ   +$0E                   ; ($008EDDC3) FireDAC.Stan.FDException (Line=177)
008EDDB5  837DF000    CMP  DWORD PTR [EBP-$10], 0
008EDDB9  7408        JZ   +8                     ; ($008EDDC3) FireDAC.Stan.FDException (Line=177)
;
; Line=176 - Offset=243
; ---------------------
008EDDBB  8B45F0      MOV  EAX, [EBP-$10]
008EDDBE  E8C18A0000  CALL +$8AC1                 ; ($008F6884) FireDAC.Stan.FDFree
;
; Line=177 - Offset=251
; ---------------------
008EDDC3  E8D4D0B1FF  CALL -$4E2F2C               ; ($0040AE9C) System._RaiseAgain
008EDDC8  E823D1B1FF  CALL -$4E2EDD               ; ($0040AEF0) System._DoneExcept
;
; Line=181 - Offset=261
; ---------------------
008EDDCD  837DF000    CMP  DWORD PTR [EBP-$10], 0
008EDDD1  7413        JZ   +$13                   ; ($008EDDE6) FireDAC.Stan.FDException (Line=191)
;
; Line=186 - Offset=267
; ---------------------
008EDDD3  84DB        TEST BL, BL
008EDDD5  7407        JZ   +7                     ; ($008EDDDE) FireDAC.Stan.FDException (Line=189)
;
; Line=187 - Offset=271
; ---------------------
008EDDD7  6A32        PUSH $32
008EDDD9  E8A236B4FF  CALL -$4BC95E               ; ($00431480)
;
; Line=189 - Offset=278
; ---------------------
008EDDDE  8B45F0      MOV  EAX, [EBP-$10]
;
; Line=189 - Offset=281
; ---------------------
008EDDE1  E846D0B1FF  CALL -$4E2FBA               ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=191 - Offset=286
; ---------------------
008EDDE6  33C0        XOR  EAX, EAX
008EDDE8  5A          POP  EDX
008EDDE9  59          POP  ECX
008EDDEA  59          POP  ECX
008EDDEB  648910      MOV  FS:[EAX], EDX
008EDDEE  6813DE8E00  PUSH $8EDE13                ; ($008EDE13) FireDAC.Stan.FDException (Line=191) Data as ANSI: '_^[‹å]Ã'; Data as UNICODE: '幟譛工Ã嬀鬱嘾痴ꡁ뉤㱗⁊̆' FireDAC.Stan.FDException (Line=191)
008EDDF3  8D45F4      LEA  EAX, [EBP-$0C]
008EDDF6  E88D1DB2FF  CALL -$4DE273               ; ($0040FB88) System._IntfClear
008EDDFB  8D45F8      LEA  EAX, [EBP-8]
008EDDFE  E8851DB2FF  CALL -$4DE27B               ; ($0040FB88) System._IntfClear
008EDE03  8D45FC      LEA  EAX, [EBP-4]
008EDE06  E87D1DB2FF  CALL -$4DE283               ; ($0040FB88) System._IntfClear

Registers:
-----------------------------
EAX: 0AE2F0C8   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0AE2F118
EDX: 00000000   ESP: 0AE2F0C8
EIP: 76B4C5AF   FLG: 00000212
EXP: 008EDDE1   STK: 0AE2F0C8

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0F29452C: 0096C210   008EDDE1: E8 46 D0 B1 FF 33 C0 5A 59 59 64 89 10 68 13 DE  .F...3.ZYYd..h..
0F294528: 0042FF98   008EDDF1: 8E 00 8D 45 F4 E8 8D 1D B2 FF 8D 45 F8 E8 85 1D  ...E.......E....
0F294524: 0AE2F110   008EDE01: B2 FF 8D 45 FC E8 7D 1D B2 FF C3 E9 77 CE B1 FF  ...E..}.....w...
0F294520: 065E4E20   008EDE11: EB E0 5F 5E 5B 8B E5 5D C3 00 00 5B 31 9B 3E 56  .._^[..]...[1.>V
0F29451C: 0AE2F170   008EDE21: F4 75 41 A8 64 B2 57 3C 4A 20 06 03 00 00 00 5B  .uA.d.W<J .....[
0F294518: 0AE2F198   008EDE31: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 01 5B  1.>V.uA.d.W<J .[
0F294514: 065E4E20   008EDE41: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 07 53  1.>V.uA.d.W<J .S
0F294510: 0096C210   008EDE51: 56 57 8B F9 8B F2 8B D8 8B C7 BA 9C DE 8E 00 E8  VW..............
0F29450C: 00000000   008EDE61: 27 DD B1 FF 85 F6 7C 21 46 FF 37 68 BC DE 8E 00  '.....|!F.7h....
0F294508: 065E4E20   008EDE71: FF 33 68 CC DE 8E 00 8B C7 BA 04 00 00 00 E8 34  .3h............4
0F294504: 008EDDE6   008EDE81: ED B1 FF 83 C3 04 4E 75 E0 5F 5E 5B C3 00 00 B0  ......Nu._^[....
0F294500: 00000007   008EDE91: 04 02 00 FF FF FF FF 09 00 00 00 5B 00 46 00 69  ...........[.F.i
0F2944FC: 76B4C5AF   008EDEA1: 00 72 00 65 00 44 00 41 00 43 00 5D 00 00 00 B0  .r.e.D.A.C.]....
0F2944F8: 00000000   008EDEB1: 04 02 00 FF FF FF FF 01 00 00 00 5B 00 00 00 B0  ...........[....
0F2944F4: 00000001   008EDEC1: 04 02 00 FF FF FF FF 01 00 00 00 5D 00 00 00 55  ...........]...U
0F2944F0: 0EEDFADE   008EDED1: 8B EC 53 56 8B DA 8B F0 8B 45 08 8B 40 FC 83 78  ..SV.....E..@..x



