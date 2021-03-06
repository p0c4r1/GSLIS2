EurekaLog 7.5.0.0  

Exception:
-----------------------------------------------------------------------------------
  2.2 Address: 008EDDFD
  2.5 Type   : EMySQLNativeException
  2.6 Message: [FireDAC][Phys][MySQL] Lost connection to MySQL server during query.
  2.7 ID     : 76840000
  2.11 Sent  : 0

User:
-------------------------
  3.2 Name : Windows User
  3.3 Email: 

Steps to reproduce:
------------
  8.1 Text: 


Call Stack Information:
------------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack   |Address |Module    |Offset  |Unit                     |Class                  |Procedure/Method    |Line      |
------------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=11372; Parent=7856; Priority=0                                                                                    |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 11372] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                                 |
|Comment=                                                                                                                                |
|----------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|008EDDFD|GSLIS2.exe|004EDDFD|FireDAC.Stan.Error       |                       |FDException         |189[27]   |
|00000020|04     |0AA5F608|009C8A1F|GSLIS2.exe|005C8A1F|FireDAC.Phys.MySQLWrapper|TMySQLSession          |ProcessError        |682[77]   |
|00000020|04     |0AA5F68C|009C8CC7|GSLIS2.exe|005C8CC7|FireDAC.Phys.MySQLWrapper|TMySQLSession          |Check               |713[6]    |
|00000020|04     |0AA5F69C|009C9FD6|GSLIS2.exe|005C9FD6|FireDAC.Phys.MySQLWrapper|TMySQLSession          |QuerySB             |1090[6]   |
|00000020|04     |0AA5F6C4|009D9C8E|GSLIS2.exe|005D9C8E|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand    |InternalOpen        |1809[15]  |
|00000020|04     |0AA5F6CC|009D9CD6|GSLIS2.exe|005D9CD6|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand    |InternalOpen        |1815[21]  |
|00000020|04     |0AA5F718|0097CC13|GSLIS2.exe|0057CC13|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6930[33]  |
|00000020|04     |0AA5F720|0097CC32|GSLIS2.exe|0057CC32|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6933[36]  |
|00000020|04     |0AA5F738|0097CD23|GSLIS2.exe|0057CD23|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6964[67]  |
|00000020|04     |0AA5F744|0097CDA5|GSLIS2.exe|0057CDA5|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6978[81]  |
|00000020|04     |0AA5F780|0097C6B3|GSLIS2.exe|0057C6B3|FireDAC.Phys             |TFDPhysCommandAsyncOpen|Execute             |6818[0]   |
|00000020|04     |0AA5F7C8|009C468A|GSLIS2.exe|005C468A|FireDAC.Stan.Async       |TFDStanAsyncExecutor   |Run                 |270[12]   |
|00000020|04     |0AA5F804|0097AB60|GSLIS2.exe|0057AB60|FireDAC.Phys             |TFDPhysCommand         |ExecuteTask         |6325[15]  |
|00000020|04     |0AA5F81C|0097ABB1|GSLIS2.exe|0057ABB1|FireDAC.Phys             |TFDPhysCommand         |ExecuteTask         |6333[23]  |
|00000020|04     |0AA5F84C|0097CE4E|GSLIS2.exe|0057CE4E|FireDAC.Phys             |TFDPhysCommand         |Open                |6997[2]   |
|00000020|04     |0AA5F874|0097CDE7|GSLIS2.exe|0057CDE7|FireDAC.Phys             |TFDPhysCommand         |OpenBlocked         |6987[2]   |
|00000020|04     |0AA5F87C|009D72A0|GSLIS2.exe|005D72A0|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand    |InternalColInfoStart|846[2]    |
|00000020|04     |0AA5F8A0|0097DF9E|GSLIS2.exe|0057DF9E|FireDAC.Phys             |TFDPhysCommand         |DoDefineDataTable   |7309[60]  |
|00000020|04     |0AA5F8A8|0097EEAA|GSLIS2.exe|0057EEAA|FireDAC.Phys             |TFDPhysCommand         |DoDefineDataTable   |7609[360] |
|00000020|04     |0AA5FA48|0097F5B7|GSLIS2.exe|0057F5B7|FireDAC.Phys             |TFDPhysCommand         |Define              |7679[15]  |
|00000020|04     |0AA5FA5C|0097F5E6|GSLIS2.exe|0057F5E6|FireDAC.Phys             |TFDPhysCommand         |Define              |7682[18]  |
|00000020|04     |0AA5FA80|00A82332|GSLIS2.exe|00682332|FireDAC.DApt             |TFDDAptTableAdapter    |Define              |2295[5]   |
|00000020|04     |0AA5FABC|009BCC1D|GSLIS2.exe|005BCC1D|FireDAC.Comp.Client      |TFDCustomTableAdapter  |Define              |7483[2]   |
|00000020|04     |0AA5FAC8|009C02E0|GSLIS2.exe|005C02E0|FireDAC.Comp.Client      |TFDAdaptedDataSet      |DoDefineDatSManager |9386[3]   |
|00000020|04     |0AA5FAF0|009894A7|GSLIS2.exe|005894A7|FireDAC.Comp.DataSet     |TFDDataSet             |CheckTable          |1464[3]   |
|00000020|04     |0AA5FB0C|0098C6C0|GSLIS2.exe|0058C6C0|FireDAC.Comp.DataSet     |TFDDataSet             |OpenCursor          |2860[37]  |
|00000020|04     |0AA5FB40|009C20A2|GSLIS2.exe|005C20A2|FireDAC.Comp.Client      |TFDRdbmsDataSet        |OpenCursor          |10474[5]  |
|00000020|04     |0AA5FB74|0078689D|GSLIS2.exe|0038689D|Data.DB                  |TDataSet               |SetActive           |12474[12] |
|00000020|04     |0AA5FB90|009898DD|GSLIS2.exe|005898DD|FireDAC.Comp.DataSet     |TFDDataSet             |SetActive           |1571[7]   |
|00000020|04     |0AA5FB98|00EEFABC|GSLIS2.exe|00AEFABC|UnitFOStatus             |TfrmFOStatus           |edLblClick          |432[7]    |
|00000020|03     |0AA5FBF0|008908F0|GSLIS2.exe|004908F0|uniGUIClasses            |TUniControl            |DoClick             |          |
|00000020|03     |0AA5FBF8|00A7B8BF|GSLIS2.exe|0067B8BF|uniButton                |TUniCustomButton       |DoClick             |          |
|00000020|03     |0AA5FC08|00A5FC3A|GSLIS2.exe|0065FC3A|uniTimer                 |TUniTimer              |Prepare             |          |
|00000020|03     |0AA5FC14|00A7AED0|GSLIS2.exe|0067AED0|uniButton                |TUniCustomButton       |ClickHandler        |          |
|00000020|03     |0AA5FC2C|00873997|GSLIS2.exe|00473997|uniGUIJSInterface        |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0AA5FC84|008922B1|GSLIS2.exe|004922B1|uniGUIClasses            |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0AA5FCCC|008C047D|GSLIS2.exe|004C047D|uniGUISessionManager     |TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0AA5FD18|008B3067|GSLIS2.exe|004B3067|uniGUIApplication        |TUniGUISession         |ProcessEventQueue   |          |
|00000020|03     |0AA5FD24|008B31AF|GSLIS2.exe|004B31AF|uniGUIApplication        |TUniGUISession         |ProcessEvents       |          |
|00000020|03     |0AA5FD5C|0086ABB7|GSLIS2.exe|0046ABB7|uniGUIJSForm             |TUniBaseJSForm         |ShowModal           |          |
|00000020|03     |0AA5FD8C|0087CD9B|GSLIS2.exe|0047CD9B|uniGUIForm               |TUniBaseForm           |ShowModal           |          |
|00000020|04     |0AA5FD90|00F2460F|GSLIS2.exe|00B2460F|Main                     |TMainForm              |mnFOStatusClick     |146[1]    |
|00000020|03     |0AA5FDA0|00864F27|GSLIS2.exe|00464F27|uniMainMenu              |TUniMenuControl        |H_OnMenuItemClick   |          |
|00000020|03     |0AA5FDBC|00873997|GSLIS2.exe|00473997|uniGUIJSInterface        |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0AA5FE14|008922B1|GSLIS2.exe|004922B1|uniGUIClasses            |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0AA5FE5C|008C047D|GSLIS2.exe|004C047D|uniGUISessionManager     |TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0AA5FEA8|008C0667|GSLIS2.exe|004C0667|uniGUISessionManager     |TUniSessionWorkerThread|Execute             |          |
|00000020|04     |0AA5FEE4|006E5851|GSLIS2.exe|002E5851|EThreadsManager          |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0AA5FEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes           |                       |ThreadProc          |14161[21] |
|00000020|04     |0AA5FF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager          |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0AA5FF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager          |                       |ThreadDataUnlock    |1320[2]   |
|7FFFFFFE|03     |00000000|008C0144|GSLIS2.exe|004C0144|uniGUISessionManager     |TUniSessionWorkerThread|Create              |          |
------------------------------------------------------------------------------------------------------------------------------------------

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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $8ED000, Allocation Base: $400000, Region Size: 6799360
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; FireDAC.Stan.FDException (Line=175 - Offset=232)
; ------------------------------------------------
008EDDCC  3B45F0      CMP  EAX, [EBP-$10]
008EDDCF  740E        JZ   +$0E                   ; ($008EDDDF) FireDAC.Stan.FDException (Line=177)
008EDDD1  837DF000    CMP  DWORD PTR [EBP-$10], 0
008EDDD5  7408        JZ   +8                     ; ($008EDDDF) FireDAC.Stan.FDException (Line=177)
;
; Line=176 - Offset=243
; ---------------------
008EDDD7  8B45F0      MOV  EAX, [EBP-$10]
008EDDDA  E8C18A0000  CALL +$8AC1                 ; ($008F68A0) FireDAC.Stan.FDFree
;
; Line=177 - Offset=251
; ---------------------
008EDDDF  E8B8D0B1FF  CALL -$4E2F48               ; ($0040AE9C) System._RaiseAgain
008EDDE4  E807D1B1FF  CALL -$4E2EF9               ; ($0040AEF0) System._DoneExcept
;
; Line=181 - Offset=261
; ---------------------
008EDDE9  837DF000    CMP  DWORD PTR [EBP-$10], 0
008EDDED  7413        JZ   +$13                   ; ($008EDE02) FireDAC.Stan.FDException (Line=191)
;
; Line=186 - Offset=267
; ---------------------
008EDDEF  84DB        TEST BL, BL
008EDDF1  7407        JZ   +7                     ; ($008EDDFA) FireDAC.Stan.FDException (Line=189)
;
; Line=187 - Offset=271
; ---------------------
008EDDF3  6A32        PUSH $32
008EDDF5  E88636B4FF  CALL -$4BC97A               ; ($00431480)
;
; Line=189 - Offset=278
; ---------------------
008EDDFA  8B45F0      MOV  EAX, [EBP-$10]
;
; Line=189 - Offset=281
; ---------------------
008EDDFD  E82AD0B1FF  CALL -$4E2FD6               ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=191 - Offset=286
; ---------------------
008EDE02  33C0        XOR  EAX, EAX
008EDE04  5A          POP  EDX
008EDE05  59          POP  ECX
008EDE06  59          POP  ECX
008EDE07  648910      MOV  FS:[EAX], EDX
008EDE0A  682FDE8E00  PUSH $8EDE2F                ; ($008EDE2F) FireDAC.Stan.FDException (Line=191) Data as ANSI: '_^[‹å]Ã'; Data as UNICODE: '幟譛工Ã嬀鬱嘾痴ꡁ뉤㱗⁊̆' FireDAC.Stan.FDException (Line=191)
008EDE0F  8D45F4      LEA  EAX, [EBP-$0C]
008EDE12  E8711DB2FF  CALL -$4DE28F               ; ($0040FB88) System._IntfClear
008EDE17  8D45F8      LEA  EAX, [EBP-8]
008EDE1A  E8691DB2FF  CALL -$4DE297               ; ($0040FB88) System._IntfClear
008EDE1F  8D45FC      LEA  EAX, [EBP-4]
008EDE22  E8611DB2FF  CALL -$4DE29F               ; ($0040FB88) System._IntfClear

Registers:
-----------------------------
EAX: 0AA5F534   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0AA5F584
EDX: 00000000   ESP: 0AA5F534
EIP: 763BC5AF   FLG: 00000212
EXP: 008EDDFD   STK: 0AA5F534

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0ABD98BC: 0096C22C   008EDDFD: E8 2A D0 B1 FF 33 C0 5A 59 59 64 89 10 68 2F DE  .*...3.ZYYd..h/.
0ABD98B8: 0042FF98   008EDE0D: 8E 00 8D 45 F4 E8 71 1D B2 FF 8D 45 F8 E8 69 1D  ...E..q....E..i.
0ABD98B4: 0AA5F57C   008EDE1D: B2 FF 8D 45 FC E8 61 1D B2 FF C3 E9 5B CE B1 FF  ...E..a.....[...
0ABD98B0: 0ACF2A10   008EDE2D: EB E0 5F 5E 5B 8B E5 5D C3 00 00 5B 31 9B 3E 56  .._^[..]...[1.>V
0ABD98AC: 0AA5F5DC   008EDE3D: F4 75 41 A8 64 B2 57 3C 4A 20 06 03 00 00 00 5B  .uA.d.W<J .....[
0ABD98A8: 0AA5F604   008EDE4D: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 01 5B  1.>V.uA.d.W<J .[
0ABD98A4: 0ACF2A10   008EDE5D: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 07 53  1.>V.uA.d.W<J .S
0ABD98A0: 0096C22C   008EDE6D: 56 57 8B F9 8B F2 8B D8 8B C7 BA B8 DE 8E 00 E8  VW..............
0ABD989C: 00000000   008EDE7D: 0B DD B1 FF 85 F6 7C 21 46 FF 37 68 D8 DE 8E 00  ......|!F.7h....
0ABD9898: 0ACF2A10   008EDE8D: FF 33 68 E8 DE 8E 00 8B C7 BA 04 00 00 00 E8 18  .3h.............
0ABD9894: 008EDE02   008EDE9D: ED B1 FF 83 C3 04 4E 75 E0 5F 5E 5B C3 00 00 B0  ......Nu._^[....
0ABD9890: 00000007   008EDEAD: 04 02 00 FF FF FF FF 09 00 00 00 5B 00 46 00 69  ...........[.F.i
0ABD988C: 763BC5AF   008EDEBD: 00 72 00 65 00 44 00 41 00 43 00 5D 00 00 00 B0  .r.e.D.A.C.]....
0ABD9888: 00000000   008EDECD: 04 02 00 FF FF FF FF 01 00 00 00 5B 00 00 00 B0  ...........[....
0ABD9884: 00000001   008EDEDD: 04 02 00 FF FF FF FF 01 00 00 00 5D 00 00 00 55  ...........]...U
0ABD9880: 0EEDFADE   008EDEED: 8B EC 53 56 8B DA 8B F0 8B 45 08 8B 40 FC 83 78  ..SV.....E..@..x



