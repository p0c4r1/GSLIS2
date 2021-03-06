EurekaLog 7.5.0.0  

Exception:
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  2.2 Address: 008EDDE5
  2.5 Type   : EMySQLNativeException
  2.6 Message: [FireDAC][Phys][MySQL] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'left join aguser u on h.ambil_user_id = u.id  order by h.tanggal' at line 1.
  2.7 ID     : CF120000
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
|*Exception Thread: ID=8188; Parent=6340; Priority=0                                                                                     |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 8188] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                                 |
|Comment=                                                                                                                                |
|----------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|008EDDE5|GSLIS2.exe|004EDDE5|FireDAC.Stan.Error       |                       |FDException         |189[27]   |
|00000020|04     |0A9AF480|009C8A07|GSLIS2.exe|005C8A07|FireDAC.Phys.MySQLWrapper|TMySQLSession          |ProcessError        |682[77]   |
|00000020|04     |0A9AF504|009C8CAF|GSLIS2.exe|005C8CAF|FireDAC.Phys.MySQLWrapper|TMySQLSession          |Check               |713[6]    |
|00000020|04     |0A9AF514|009C9FBE|GSLIS2.exe|005C9FBE|FireDAC.Phys.MySQLWrapper|TMySQLSession          |QuerySB             |1090[6]   |
|00000020|04     |0A9AF53C|009D9C76|GSLIS2.exe|005D9C76|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand    |InternalOpen        |1809[15]  |
|00000020|04     |0A9AF544|009D9CBE|GSLIS2.exe|005D9CBE|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand    |InternalOpen        |1815[21]  |
|00000020|04     |0A9AF590|0097CBFB|GSLIS2.exe|0057CBFB|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6930[33]  |
|00000020|04     |0A9AF598|0097CC1A|GSLIS2.exe|0057CC1A|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6933[36]  |
|00000020|04     |0A9AF5B0|0097CD0B|GSLIS2.exe|0057CD0B|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6964[67]  |
|00000020|04     |0A9AF5BC|0097CD8D|GSLIS2.exe|0057CD8D|FireDAC.Phys             |TFDPhysCommand         |OpenBase            |6978[81]  |
|00000020|04     |0A9AF5F8|0097C69B|GSLIS2.exe|0057C69B|FireDAC.Phys             |TFDPhysCommandAsyncOpen|Execute             |6818[0]   |
|00000020|04     |0A9AF640|009C4672|GSLIS2.exe|005C4672|FireDAC.Stan.Async       |TFDStanAsyncExecutor   |Run                 |270[12]   |
|00000020|04     |0A9AF67C|0097AB48|GSLIS2.exe|0057AB48|FireDAC.Phys             |TFDPhysCommand         |ExecuteTask         |6325[15]  |
|00000020|04     |0A9AF694|0097AB99|GSLIS2.exe|0057AB99|FireDAC.Phys             |TFDPhysCommand         |ExecuteTask         |6333[23]  |
|00000020|04     |0A9AF6C4|0097CE36|GSLIS2.exe|0057CE36|FireDAC.Phys             |TFDPhysCommand         |Open                |6997[2]   |
|00000020|04     |0A9AF6EC|0097CDCF|GSLIS2.exe|0057CDCF|FireDAC.Phys             |TFDPhysCommand         |OpenBlocked         |6987[2]   |
|00000020|04     |0A9AF6F4|009D7288|GSLIS2.exe|005D7288|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand    |InternalColInfoStart|846[2]    |
|00000020|04     |0A9AF718|0097DF86|GSLIS2.exe|0057DF86|FireDAC.Phys             |TFDPhysCommand         |DoDefineDataTable   |7309[60]  |
|00000020|04     |0A9AF720|0097EE92|GSLIS2.exe|0057EE92|FireDAC.Phys             |TFDPhysCommand         |DoDefineDataTable   |7609[360] |
|00000020|04     |0A9AF8C0|0097F59F|GSLIS2.exe|0057F59F|FireDAC.Phys             |TFDPhysCommand         |Define              |7679[15]  |
|00000020|04     |0A9AF8D4|0097F5CE|GSLIS2.exe|0057F5CE|FireDAC.Phys             |TFDPhysCommand         |Define              |7682[18]  |
|00000020|04     |0A9AF8F8|00A8231A|GSLIS2.exe|0068231A|FireDAC.DApt             |TFDDAptTableAdapter    |Define              |2295[5]   |
|00000020|04     |0A9AF934|009BCC05|GSLIS2.exe|005BCC05|FireDAC.Comp.Client      |TFDCustomTableAdapter  |Define              |7483[2]   |
|00000020|04     |0A9AF940|009C02C8|GSLIS2.exe|005C02C8|FireDAC.Comp.Client      |TFDAdaptedDataSet      |DoDefineDatSManager |9386[3]   |
|00000020|04     |0A9AF968|0098948F|GSLIS2.exe|0058948F|FireDAC.Comp.DataSet     |TFDDataSet             |CheckTable          |1464[3]   |
|00000020|04     |0A9AF984|0098C6A8|GSLIS2.exe|0058C6A8|FireDAC.Comp.DataSet     |TFDDataSet             |OpenCursor          |2860[37]  |
|00000020|04     |0A9AF9B8|009C208A|GSLIS2.exe|005C208A|FireDAC.Comp.Client      |TFDRdbmsDataSet        |OpenCursor          |10474[5]  |
|00000020|04     |0A9AF9EC|00786885|GSLIS2.exe|00386885|Data.DB                  |TDataSet               |SetActive           |12474[12] |
|00000020|04     |0A9AFA08|009898C5|GSLIS2.exe|005898C5|FireDAC.Comp.DataSet     |TFDDataSet             |SetActive           |1571[7]   |
|00000020|04     |0A9AFA10|00E320BB|GSLIS2.exe|00A320BB|UnitFOHomeService        |                       |refreshData         |116[18]   |
|00000020|04     |0A9AFA30|00E3382D|GSLIS2.exe|00A3382D|UnitFOHomeService        |TfrmFOHomeService      |rbTglChangeValue    |325[7]    |
|00000020|03     |0A9AFA40|0089D878|GSLIS2.exe|0049D878|uniGUIClasses            |TUniFormControl        |DoOnChangeValue     |          |
|00000020|03     |0A9AFA5C|00BB1D3D|GSLIS2.exe|007B1D3D|uniRadioButton           |TUniCustomRadioButton  |DoSetRemoteValue    |          |
|00000020|03     |0A9AFA80|0089D3B9|GSLIS2.exe|0049D3B9|uniGUIClasses            |TUniFormControl        |SetRemoteValue      |          |
|00000020|03     |0A9AFACC|0089B349|GSLIS2.exe|0049B349|uniGUIClasses            |                       |ProcessComponent    |          |
|00000020|03     |0A9AFB0C|0089B5BD|GSLIS2.exe|0049B5BD|uniGUIClasses            |TUniContainer          |AssignFieldValues   |          |
|00000020|03     |0A9AFB9C|0089B5BD|a         |0049B5BD|recursive                |area                   |removed             |2[0]      |
|00000020|03     |0A9AFBF8|0089B3A5|GSLIS2.exe|0049B3A5|uniGUIClasses            |                       |ProcessComponent    |          |
|00000020|03     |0A9AFC2C|0089B5BD|GSLIS2.exe|0049B5BD|uniGUIClasses            |TUniContainer          |AssignFieldValues   |          |
|00000020|03     |0A9AFC88|0089222E|GSLIS2.exe|0049222E|uniGUIClasses            |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0A9AFCCC|008C0465|GSLIS2.exe|004C0465|uniGUISessionManager     |TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0A9AFD18|008B304F|GSLIS2.exe|004B304F|uniGUIApplication        |TUniGUISession         |ProcessEventQueue   |          |
|00000020|03     |0A9AFD24|008B3197|GSLIS2.exe|004B3197|uniGUIApplication        |TUniGUISession         |ProcessEvents       |          |
|00000020|03     |0A9AFD5C|0086AB9F|GSLIS2.exe|0046AB9F|uniGUIJSForm             |TUniBaseJSForm         |ShowModal           |          |
|00000020|03     |0A9AFD8C|0087CD83|GSLIS2.exe|0047CD83|uniGUIForm               |TUniBaseForm           |ShowModal           |          |
|00000020|04     |0A9AFD90|00F25D63|GSLIS2.exe|00B25D63|Main                     |TMainForm              |mnFOHomeServiceClick|120[1]    |
|00000020|03     |0A9AFDA0|00864F0F|GSLIS2.exe|00464F0F|uniMainMenu              |TUniMenuControl        |H_OnMenuItemClick   |          |
|00000020|03     |0A9AFDBC|0087397F|GSLIS2.exe|0047397F|uniGUIJSInterface        |TUniJSHelper           |HandleEvent         |          |
|00000020|03     |0A9AFE14|00892299|GSLIS2.exe|00492299|uniGUIClasses            |TUniControl            |HandleEventIntercept|          |
|00000020|03     |0A9AFE5C|008C0465|GSLIS2.exe|004C0465|uniGUISessionManager     |TUniSessionWorkerThread|ProcessEvent        |          |
|00000020|03     |0A9AFEA8|008C064F|GSLIS2.exe|004C064F|uniGUISessionManager     |TUniSessionWorkerThread|Execute             |          |
|00000020|04     |0A9AFEE4|006E5851|GSLIS2.exe|002E5851|EThreadsManager          |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0A9AFEF8|004CF64D|GSLIS2.exe|000CF64D|System.Classes           |                       |ThreadProc          |14161[21] |
|00000020|04     |0A9AFF1C|006E5851|GSLIS2.exe|002E5851|EThreadsManager          |                       |ThreadDataUnlock    |1320[2]   |
|00000020|04     |0A9AFF74|006E5851|GSLIS2.exe|002E5851|EThreadsManager          |                       |ThreadDataUnlock    |1320[2]   |
|7FFFFFFE|03     |00000000|008C012C|GSLIS2.exe|004C012C|uniGUISessionManager     |TUniSessionWorkerThread|Create              |          |
------------------------------------------------------------------------------------------------------------------------------------------

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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $8ED000, Allocation Base: $400000, Region Size: 6807552
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READ
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; FireDAC.Stan.FDException (Line=175 - Offset=232)
; ------------------------------------------------
008EDDB4  3B45F0      CMP  EAX, [EBP-$10]
008EDDB7  740E        JZ   +$0E                   ; ($008EDDC7) FireDAC.Stan.FDException (Line=177)
008EDDB9  837DF000    CMP  DWORD PTR [EBP-$10], 0
008EDDBD  7408        JZ   +8                     ; ($008EDDC7) FireDAC.Stan.FDException (Line=177)
;
; Line=176 - Offset=243
; ---------------------
008EDDBF  8B45F0      MOV  EAX, [EBP-$10]
008EDDC2  E8C18A0000  CALL +$8AC1                 ; ($008F6888) FireDAC.Stan.FDFree
;
; Line=177 - Offset=251
; ---------------------
008EDDC7  E8D0D0B1FF  CALL -$4E2F30               ; ($0040AE9C) System._RaiseAgain
008EDDCC  E81FD1B1FF  CALL -$4E2EE1               ; ($0040AEF0) System._DoneExcept
;
; Line=181 - Offset=261
; ---------------------
008EDDD1  837DF000    CMP  DWORD PTR [EBP-$10], 0
008EDDD5  7413        JZ   +$13                   ; ($008EDDEA) FireDAC.Stan.FDException (Line=191)
;
; Line=186 - Offset=267
; ---------------------
008EDDD7  84DB        TEST BL, BL
008EDDD9  7407        JZ   +7                     ; ($008EDDE2) FireDAC.Stan.FDException (Line=189)
;
; Line=187 - Offset=271
; ---------------------
008EDDDB  6A32        PUSH $32
008EDDDD  E89E36B4FF  CALL -$4BC962               ; ($00431480)
;
; Line=189 - Offset=278
; ---------------------
008EDDE2  8B45F0      MOV  EAX, [EBP-$10]
;
; Line=189 - Offset=281
; ---------------------
008EDDE5  E842D0B1FF  CALL -$4E2FBE               ; ($0040AE2C) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=191 - Offset=286
; ---------------------
008EDDEA  33C0        XOR  EAX, EAX
008EDDEC  5A          POP  EDX
008EDDED  59          POP  ECX
008EDDEE  59          POP  ECX
008EDDEF  648910      MOV  FS:[EAX], EDX
008EDDF2  6817DE8E00  PUSH $8EDE17                ; ($008EDE17) FireDAC.Stan.FDException (Line=191) Data as ANSI: '_^[‹å]Ã'; Data as UNICODE: '幟譛工Ã嬀鬱嘾痴ꡁ뉤㱗⁊̆' FireDAC.Stan.FDException (Line=191)
008EDDF7  8D45F4      LEA  EAX, [EBP-$0C]
008EDDFA  E8891DB2FF  CALL -$4DE277               ; ($0040FB88) System._IntfClear
008EDDFF  8D45F8      LEA  EAX, [EBP-8]
008EDE02  E8811DB2FF  CALL -$4DE27F               ; ($0040FB88) System._IntfClear
008EDE07  8D45FC      LEA  EAX, [EBP-4]
008EDE0A  E8791DB2FF  CALL -$4DE287               ; ($0040FB88) System._IntfClear

Registers:
-----------------------------
EAX: 0A9AF3AC   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0A9AF3FC
EDX: 00000000   ESP: 0A9AF3AC
EIP: 76DBC5AF   FLG: 00000206
EXP: 008EDDE5   STK: 0A9AF3AC

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0B023764: 0096C214   008EDDE5: E8 42 D0 B1 FF 33 C0 5A 59 59 64 89 10 68 17 DE  .B...3.ZYYd..h..
0B023760: 0042FF98   008EDDF5: 8E 00 8D 45 F4 E8 89 1D B2 FF 8D 45 F8 E8 81 1D  ...E.......E....
0B02375C: 0A9AF3F4   008EDE05: B2 FF 8D 45 FC E8 79 1D B2 FF C3 E9 73 CE B1 FF  ...E..y.....s...
0B023758: 0AB95BB8   008EDE15: EB E0 5F 5E 5B 8B E5 5D C3 00 00 5B 31 9B 3E 56  .._^[..]...[1.>V
0B023754: 0A9AF454   008EDE25: F4 75 41 A8 64 B2 57 3C 4A 20 06 03 00 00 00 5B  .uA.d.W<J .....[
0B023750: 0A9AF47C   008EDE35: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 01 5B  1.>V.uA.d.W<J .[
0B02374C: 0AB95BB8   008EDE45: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 07 53  1.>V.uA.d.W<J .S
0B023748: 0096C214   008EDE55: 56 57 8B F9 8B F2 8B D8 8B C7 BA A0 DE 8E 00 E8  VW..............
0B023744: 00000000   008EDE65: 23 DD B1 FF 85 F6 7C 21 46 FF 37 68 C0 DE 8E 00  #.....|!F.7h....
0B023740: 0AB95BB8   008EDE75: FF 33 68 D0 DE 8E 00 8B C7 BA 04 00 00 00 E8 30  .3h............0
0B02373C: 008EDDEA   008EDE85: ED B1 FF 83 C3 04 4E 75 E0 5F 5E 5B C3 00 00 B0  ......Nu._^[....
0B023738: 00000007   008EDE95: 04 02 00 FF FF FF FF 09 00 00 00 5B 00 46 00 69  ...........[.F.i
0B023734: 76DBC5AF   008EDEA5: 00 72 00 65 00 44 00 41 00 43 00 5D 00 00 00 B0  .r.e.D.A.C.]....
0B023730: 00000000   008EDEB5: 04 02 00 FF FF FF FF 01 00 00 00 5B 00 00 00 B0  ...........[....
0B02372C: 00000001   008EDEC5: 04 02 00 FF FF FF FF 01 00 00 00 5D 00 00 00 55  ...........]...U
0B023728: 0EEDFADE   008EDED5: 8B EC 53 56 8B DA 8B F0 8B 45 08 8B 40 FC 83 78  ..SV.....E..@..x



