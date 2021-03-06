EurekaLog 7.5.0.0  

Exception:
----------------------------------------------------------------------------------------
  2.2 Address: 008EDDE1
  2.5 Type   : EMySQLNativeException
  2.6 Message: [FireDAC][Phys][MySQL] Out of range value for column 'disc_pct' at row 1.
  2.7 ID     : 69CA0000
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
|*Exception Thread: ID=4432; Parent=3816; Priority=0                                                                                               |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 4432] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                                           |
|Comment=                                                                                                                                          |
|--------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |00000000|008EDDE1|GSLIS2.exe|004EDDE1|FireDAC.Stan.Error       |                          |FDException                |189[27]   |
|00000020|04     |0E91F0E4|009C8A03|GSLIS2.exe|005C8A03|FireDAC.Phys.MySQLWrapper|TMySQLSession             |ProcessError               |682[77]   |
|00000020|04     |0E91F168|009C8CAB|GSLIS2.exe|005C8CAB|FireDAC.Phys.MySQLWrapper|TMySQLSession             |Check                      |713[6]    |
|00000020|04     |0E91F178|009C9FBA|GSLIS2.exe|005C9FBA|FireDAC.Phys.MySQLWrapper|TMySQLSession             |QuerySB                    |1090[6]   |
|00000020|04     |0E91F1A0|009D9A53|GSLIS2.exe|005D9A53|FireDAC.Phys.MySQL       |TFDPhysMySQLCommand       |InternalExecute            |1754[26]  |
|00000020|04     |0E91F1F4|009622EA|GSLIS2.exe|005622EA|FireDAC.Phys.Meta        |TFDPhysConnectionMetadata |_Release                   |257[4]    |
|00000020|04     |0E91F210|0097FEB4|GSLIS2.exe|0057FEB4|FireDAC.Phys             |                          |Process_HandleSystemFailure|7843[9]   |
|00000020|04     |0E91F21C|0097FEFE|GSLIS2.exe|0057FEFE|FireDAC.Phys             |                          |Process_HandleSystemFailure|7847[13]  |
|00000020|04     |0E91F244|0097FFE6|GSLIS2.exe|0057FFE6|FireDAC.Phys             |                          |Process_SingleRow          |7881[4]   |
|00000020|04     |0E91F28C|00980F00|GSLIS2.exe|00580F00|FireDAC.Phys             |TFDPhysCommand            |ExecuteBase                |8164[44]  |
|00000020|04     |0E91F2A4|00980FCB|GSLIS2.exe|00580FCB|FireDAC.Phys             |TFDPhysCommand            |ExecuteBase                |8187[67]  |
|00000020|04     |0E91F2B0|00981063|GSLIS2.exe|00581063|FireDAC.Phys             |TFDPhysCommand            |ExecuteBase                |8207[87]  |
|00000020|04     |0E91F308|0097FAAD|GSLIS2.exe|0057FAAD|FireDAC.Phys             |TFDPhysCommandAsyncExecute|Create                     |7754[0]   |
|00000020|04     |0E91F350|009C466E|GSLIS2.exe|005C466E|FireDAC.Stan.Async       |TFDStanAsyncExecutor      |Run                        |270[12]   |
|00000020|04     |0E91F38C|0097AB44|GSLIS2.exe|0057AB44|FireDAC.Phys             |TFDPhysCommand            |ExecuteTask                |6325[15]  |
|00000020|04     |0E91F3A4|0097AB95|GSLIS2.exe|0057AB95|FireDAC.Phys             |TFDPhysCommand            |ExecuteTask                |6333[23]  |
|00000020|04     |0E91F3D4|0098110F|GSLIS2.exe|0058110F|FireDAC.Phys             |TFDPhysCommand            |Execute                    |8219[2]   |
|00000020|04     |0E91F400|009BA99F|GSLIS2.exe|005BA99F|FireDAC.Comp.Client      |TFDCustomCommand          |InternalExecute            |6474[10]  |
|00000020|04     |0E91F480|0097ABFB|GSLIS2.exe|0057ABFB|FireDAC.Phys             |TFDPhysCommand            |Disconnect                 |6343[5]   |
|00000020|04     |0E91F4B4|009BAD2D|GSLIS2.exe|005BAD2D|FireDAC.Comp.Client      |TFDCustomCommand          |Execute                    |6497[3]   |
|00000020|04     |0E91F4D0|009C0811|GSLIS2.exe|005C0811|FireDAC.Comp.Client      |TFDAdaptedDataSet         |DoExecuteSource            |9547[3]   |
|00000020|04     |0E91F4E4|0098D084|GSLIS2.exe|0058D084|FireDAC.Comp.DataSet     |TFDDataSet                |Execute                    |3083[8]   |
|00000020|04     |0E91F508|009C24BF|GSLIS2.exe|005C24BF|FireDAC.Comp.Client      |TFDCustomQuery            |ExecSQL                    |10821[1]  |
|00000020|04     |0E91F510|00EDE4AE|GSLIS2.exe|00ADE4AE|UnitBayar                |TfrmBayar                 |edSaveClick                |1209[111] |
|00000020|04     |0E91F518|00EDF392|GSLIS2.exe|00ADF392|UnitBayar                |TfrmBayar                 |edSaveClick                |1460[362] |
|00000020|04     |0E91F9D4|00EE2C52|GSLIS2.exe|00AE2C52|UnitBayar                |TfrmBayar                 |UniFormKeyDown             |1747[2]   |
|00000020|03     |0E91F9E8|0086F3ED|GSLIS2.exe|0046F3ED|uniGUIJSForm             |TUniJSForm                |ExtOnKeyDown               |          |
|00000020|03     |0E91FA0C|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface        |TUniJSHelper              |HandleEvent                |          |
|00000020|03     |0E91FA64|00892295|GSLIS2.exe|00492295|uniGUIClasses            |TUniControl               |HandleEventIntercept       |          |
|00000020|03     |0E91FAAC|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager     |TUniSessionWorkerThread   |ProcessEvent               |          |
|00000020|03     |0E91FAF8|008B304B|GSLIS2.exe|004B304B|uniGUIApplication        |TUniGUISession            |ProcessEventQueue          |          |
|00000020|03     |0E91FB04|008B3193|GSLIS2.exe|004B3193|uniGUIApplication        |TUniGUISession            |ProcessEvents              |          |
|00000020|03     |0E91FB3C|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm             |TUniBaseJSForm            |ShowModal                  |          |
|00000020|03     |0E91FB6C|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm               |TUniBaseForm              |ShowModal                  |          |
|00000020|04     |0E91FB70|00EE79F3|GSLIS2.exe|00AE79F3|UnitFODaftar             |TfrmFODaftar              |btnBayarClick              |946[51]   |
|00000020|04     |0E91FBEC|00EED395|GSLIS2.exe|00AED395|UnitFODaftar             |TfrmFODaftar              |UniFormKeyDown             |1717[16]  |
|00000020|03     |0E91FC00|0086F3ED|GSLIS2.exe|0046F3ED|uniGUIJSForm             |TUniJSForm                |ExtOnKeyDown               |          |
|00000020|03     |0E91FC24|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface        |TUniJSHelper              |HandleEvent                |          |
|00000020|03     |0E91FC7C|00892295|GSLIS2.exe|00492295|uniGUIClasses            |TUniControl               |HandleEventIntercept       |          |
|00000020|03     |0E91FCC4|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager     |TUniSessionWorkerThread   |ProcessEvent               |          |
|00000020|03     |0E91FD10|008B304B|GSLIS2.exe|004B304B|uniGUIApplication        |TUniGUISession            |ProcessEventQueue          |          |
|00000020|03     |0E91FD1C|008B3193|GSLIS2.exe|004B3193|uniGUIApplication        |TUniGUISession            |ProcessEvents              |          |
|00000020|03     |0E91FD54|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm             |TUniBaseJSForm            |ShowModal                  |          |
|00000020|03     |0E91FD84|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm               |TUniBaseForm              |ShowModal                  |          |
|00000020|04     |0E91FD88|00F249A3|GSLIS2.exe|00B249A3|Main                     |TMainForm                 |mnFODaftarClick            |135[1]    |
|00000020|03     |0E91FD98|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu              |TUniMenuControl           |H_OnMenuItemClick          |          |
|00000020|03     |0E91FDB4|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface        |TUniJSHelper              |HandleEvent                |          |
|00000020|03     |0E91FE0C|00892295|GSLIS2.exe|00492295|uniGUIClasses            |TUniControl               |HandleEventIntercept       |          |
|00000020|03     |0E91FE54|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager     |TUniSessionWorkerThread   |ProcessEvent               |          |
|00000020|03     |0E91FEA0|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager     |TUniSessionWorkerThread   |Execute                    |          |
|00000020|04     |0E91FEDC|006E5835|GSLIS2.exe|002E5835|EThreadsManager          |                          |ThreadDataUnlock           |1320[2]   |
|00000020|04     |0E91FEF0|004CF631|GSLIS2.exe|000CF631|System.Classes           |                          |ThreadProc                 |14161[21] |
|00000020|04     |0E91FF14|006E5835|GSLIS2.exe|002E5835|EThreadsManager          |                          |ThreadDataUnlock           |1320[2]   |
|00000020|04     |0E91FF6C|006E5835|GSLIS2.exe|002E5835|EThreadsManager          |                          |ThreadDataUnlock           |1320[2]   |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager     |TUniSessionWorkerThread   |Create                     |          |
----------------------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                |Description                                        |Version        |Size    |Modified           |Path                                                                                                          |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe          |                                                   |1.0.0.0        |48664582|2020-01-28 17:19:32|D:\GSLIS2\                                                                                                    |
|11000000|libeay32.dll        |OpenSSL Shared Library                             |1.0.2.17       |1374208 |2018-11-22 18:48:46|D:\GSLIS2\                                                                                                    |
|12000000|ssleay32.dll        |OpenSSL Shared Library                             |1.0.2.17       |337920  |2018-11-22 18:48:46|D:\GSLIS2\                                                                                                    |
|69680000|libmysql.dll        |                                                   |5.6.45.0       |4176312 |2019-06-10 05:36:06|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
|74190000|msftedit.dll        |Rich Text Edit Control, v7.5                       |6.3.9600.18818 |2471424 |2017-09-08 23:50:47|C:\Windows\System32\                                                                                          |
|743F0000|hhctrl.ocx          |Microsoft® HTML Help Control                       |6.3.9600.19017 |536576  |2018-04-15 23:16:23|C:\Windows\System32\                                                                                          |
|74640000|msvcr100.dll        |Microsoft® C Runtime Library                       |10.0.40219.325 |773968  |2011-06-11 01:58:52|C:\Windows\System32\                                                                                          |
|74700000|powrprof.dll        |Power Profile Helper DLL                           |6.3.9600.17415 |255136  |2014-11-22 08:47:01|C:\Windows\System32\                                                                                          |
|74740000|uxtheme.dll         |Microsoft UxTheme Library                          |6.3.9600.18835 |949760  |2017-10-10 21:58:39|C:\Windows\System32\                                                                                          |
|74830000|winsta.dll          |Winstation Library                                 |6.3.9600.17415 |276816  |2014-11-22 08:44:35|C:\Windows\System32\                                                                                          |
|748E0000|idndl.dll           |Downlevel DLL                                      |6.3.9600.17415 |33280   |2014-11-22 08:47:02|C:\Windows\System32\                                                                                          |
|748F0000|security.dll        |Security Support Provider Interface                |6.3.9600.16384 |5120    |2013-08-22 11:14:43|C:\Windows\System32\                                                                                          |
|74900000|secur32.dll         |Security Support Provider Interface                |6.3.9600.17415 |24064   |2014-11-22 08:47:16|C:\Windows\System32\                                                                                          |
|74910000|usp10.dll           |Uniscribe Unicode script processor                 |6.3.9600.17415 |77312   |2014-11-22 08:44:41|C:\Windows\System32\                                                                                          |
|749B0000|wtsapi32.dll        |Windows Remote Desktop Session Host Server SDK APIs|6.3.9600.17415 |52664   |2014-11-22 08:44:35|C:\Windows\System32\                                                                                          |
|749C0000|version.dll         |Version Checking and File Installation Libraries   |6.3.9600.17415 |26304   |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|749D0000|rasadhlp.dll        |Remote Access AutoDial Helper                      |6.3.9600.17415 |12288   |2014-11-22 08:47:24|C:\Windows\System32\                                                                                          |
|749E0000|FWPUCLNT.DLL        |FWP/IPsec User-Mode API                            |6.3.9600.18229 |272384  |2016-02-05 22:07:46|C:\Windows\System32\                                                                                          |
|74A30000|bcrypt.dll          |Windows Cryptographic Primitives Library           |6.3.9600.18541 |111104  |2017-11-05 11:46:36|C:\Windows\System32\                                                                                          |
|74A50000|winrnr.dll          |LDAP RnR Provider DLL                              |6.3.9600.17415 |23040   |2014-11-22 08:47:16|C:\Windows\System32\                                                                                          |
|74A60000|dnsapi.dll          |DNS Client API DLL                                 |6.3.9600.19060 |499200  |2018-06-08 23:44:43|C:\Windows\System32\                                                                                          |
|74AE0000|rsaenh.dll          |Microsoft Enhanced Cryptographic Provider          |6.3.9600.17415 |192096  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|74B10000|cryptsp.dll         |Cryptographic Service Provider API                 |6.3.9600.17415 |96032   |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|74B30000|nlaapi.dll          |Network Location Awareness 2                       |6.3.9600.18895 |65536   |2018-01-02 11:11:41|C:\Windows\System32\                                                                                          |
|74B70000|NapiNSP.dll         |E-mail Naming Shim Provider                        |6.3.9600.17415 |55296   |2014-11-22 08:47:19|C:\Windows\System32\                                                                                          |
|74BB0000|winnsi.dll          |Network Store Information RPC interface            |6.3.9600.17415 |26304   |2014-11-22 08:44:11|C:\Windows\System32\                                                                                          |
|74BC0000|IPHLPAPI.DLL        |IP Helper API                                      |6.3.9600.18264 |121912  |2017-11-05 11:46:36|C:\Windows\System32\                                                                                          |
|74BE0000|mswsock.dll         |Microsoft Windows Sockets 2.0 Service Provider     |6.3.9600.18340 |286208  |2017-11-05 10:50:17|C:\Windows\System32\                                                                                          |
|74D00000|ntmarta.dll         |Windows NT MARTA provider                          |6.3.9600.17415 |154392  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|74D40000|SHCore.dll          |SHCORE                                             |6.3.9600.17415 |560392  |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|74DD0000|kernel.appcore.dll  |AppModel API Host                                  |6.3.9600.17415 |29920   |2014-11-22 08:47:06|C:\Windows\System32\                                                                                          |
|74DE0000|winspool.drv        |Windows Spooler Driver                             |6.3.9600.19293 |399360  |2019-02-09 23:16:49|C:\Windows\System32\                                                                                          |
|74EF0000|msimg32.dll         |GDIEXT Client DLL                                  |6.3.9600.17415 |6144    |2014-11-22 08:44:42|C:\Windows\System32\                                                                                          |
|75080000|comctl32.dll        |User Experience Controls Library                   |6.10.9600.19393|2107392 |2019-06-02 23:05:07|C:\Windows\WinSxS\x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.9600.19394_none_a9f59c4f01325ed5\|
|75290000|devobj.dll          |Device Information Set DLL                         |6.3.9600.17415 |127552  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|752C0000|WINMMBASE.dll       |Base Multimedia Extension API DLL                  |6.3.9600.17415 |134280  |2014-11-22 08:44:58|C:\Windows\System32\                                                                                          |
|752F0000|winmm.dll           |MCI API DLL                                        |6.3.9600.17415 |136840  |2014-11-22 08:44:58|C:\Windows\System32\                                                                                          |
|75320000|bcryptPrimitives.dll|Windows Cryptographic Primitives Library           |6.3.9600.18895 |341384  |2018-01-02 13:03:25|C:\Windows\System32\                                                                                          |
|75380000|CRYPTBASE.dll       |Base cryptographic API DLL                         |6.3.9600.17415 |30984   |2014-11-22 08:47:17|C:\Windows\System32\                                                                                          |
|753A0000|msvcrt.dll          |Windows NT CRT DLL                                 |7.0.9600.17415 |800008  |2014-11-22 08:48:08|C:\Windows\System32\                                                                                          |
|755F0000|kernel32.dll        |Windows NT BASE API Client DLL                     |6.3.9600.19538 |1040384 |2019-10-15 10:08:31|C:\Windows\System32\                                                                                          |
|75770000|sechost.dll         |Host for SCM/SDDL/LSA Lookup APIs                  |6.3.9600.17734 |257216  |2017-11-05 10:49:21|C:\Windows\System32\                                                                                          |
|757C0000|combase.dll         |Microsoft COM for Windows                          |6.3.9600.19227 |1563376 |2018-12-08 12:32:22|C:\Windows\System32\                                                                                          |
|75940000|advapi32.dll        |Advanced Windows 32 Base API                       |6.3.9600.18895 |507176  |2018-01-02 12:48:48|C:\Windows\System32\                                                                                          |
|759C0000|imm32.dll           |Multi-User Windows IMM32 API Client DLL            |6.3.9600.17415 |141312  |2014-11-22 08:44:42|C:\Windows\System32\                                                                                          |
|759F0000|ws2_32.dll          |Windows Socket 2.0 32-Bit DLL                      |6.3.9600.18340 |320720  |2017-11-05 10:50:17|C:\Windows\System32\                                                                                          |
|75C00000|gdi32.dll           |GDI Client DLL                                     |6.3.9600.19574 |1085440 |2019-11-28 11:03:13|C:\Windows\System32\                                                                                          |
|75D10000|cfgmgr32.dll        |Configuration Manager DLL                          |6.3.9600.17415 |241168  |2014-11-22 08:47:37|C:\Windows\System32\                                                                                          |
|75D50000|shlwapi.dll         |Shell Light-weight Utility Library                 |6.3.9600.17415 |278352  |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|75DA0000|normaliz.dll        |Unicode Normalization DLL                          |6.3.9600.17415 |4096    |2014-11-22 08:47:02|C:\Windows\System32\                                                                                          |
|75DB0000|nsi.dll             |NSI User-mode interface DLL                        |6.3.9600.17415 |20120   |2014-11-22 08:44:11|C:\Windows\System32\                                                                                          |
|75DC0000|rpcrt4.dll          |Remote Procedure Call Runtime                      |6.3.9600.19538 |747520  |2019-10-15 09:27:17|C:\Windows\System32\                                                                                          |
|75F10000|oleaut32.dll        |                                                   |6.3.9600.19556 |611432  |2019-11-05 07:03:54|C:\Windows\System32\                                                                                          |
|75FB0000|comdlg32.dll        |Common Dialogs DLL                                 |6.3.9600.17415 |609280  |2014-11-22 08:47:26|C:\Windows\System32\                                                                                          |
|76050000|sspicli.dll         |Security Support Provider Interface                |6.3.9600.18454 |104960  |2017-11-05 10:51:28|C:\Windows\System32\                                                                                          |
|76070000|imagehlp.dll        |Windows NT Image Helper                            |6.3.9600.17415 |74824   |2014-11-22 08:44:12|C:\Windows\System32\                                                                                          |
|76220000|KERNELBASE.dll      |Windows NT BASE API Client DLL                     |6.3.9600.19425 |861184  |2019-07-11 10:35:15|C:\Windows\System32\                                                                                          |
|76300000|msctf.dll           |MSCTF Server DLL                                   |6.3.9600.19464 |1125312 |2019-08-29 08:43:02|C:\Windows\System32\                                                                                          |
|76420000|ole32.dll           |Microsoft OLE for Windows                          |6.3.9600.19345 |1214720 |2019-04-07 07:57:19|C:\Windows\System32\                                                                                          |
|76550000|user32.dll          |Multi-User Windows USER API Client DLL             |6.3.9600.19598 |1377280 |2020-01-03 10:52:59|C:\Windows\System32\                                                                                          |
|766B0000|psapi.dll           |Process Status Helper                              |6.3.9600.17415 |16504   |2014-11-22 08:47:07|C:\Windows\System32\                                                                                          |
|76720000|shell32.dll         |Windows Shell Common Dll                           |6.3.9600.19377 |19790160|2019-05-25 08:59:54|C:\Windows\System32\                                                                                          |
|77BB0000|ntdll.dll           |NT Layer DLL                                       |6.3.9600.18895 |1502000 |2018-01-02 12:58:07|C:\Windows\System32\                                                                                          |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
EAX: 0E91F008   EDI: 00000001
EBX: 00000000   ESI: 0EEDFADE
ECX: 00000007   EBP: 0E91F060
EDX: 00000000   ESP: 0E91F008
EIP: 76254E28   FLG: 00000212
EXP: 008EDDE1   STK: 0E91F008

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------
0F59A934: 0E91F058   008EDDE1: E8 46 D0 B1 FF 33 C0 5A 59 59 64 89 10 68 13 DE  .F...3.ZYYd..h..
0F59A930: 115B6A08   008EDDF1: 8E 00 8D 45 F4 E8 8D 1D B2 FF 8D 45 F8 E8 85 1D  ...E.......E....
0F59A92C: 0042F96B   008EDE01: B2 FF 8D 45 FC E8 7D 1D B2 FF C3 E9 77 CE B1 FF  ...E..}.....w...
0F59A928: 0E91F0E0   008EDE11: EB E0 5F 5E 5B 8B E5 5D C3 00 00 5B 31 9B 3E 56  .._^[..]...[1.>V
0F59A924: 0E91F0B8   008EDE21: F4 75 41 A8 64 B2 57 3C 4A 20 06 03 00 00 00 5B  .uA.d.W<J .....[
0F59A920: 0E91F0E0   008EDE31: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 01 5B  1.>V.uA.d.W<J .[
0F59A91C: 115B6A08   008EDE41: 31 9B 3E 56 F4 75 41 A8 64 B2 57 3C 4A 20 07 53  1.>V.uA.d.W<J .S
0F59A918: 0096C210   008EDE51: 56 57 8B F9 8B F2 8B D8 8B C7 BA 9C DE 8E 00 E8  VW..............
0F59A914: 00000000   008EDE61: 27 DD B1 FF 85 F6 7C 21 46 FF 37 68 BC DE 8E 00  '.....|!F.7h....
0F59A910: 115B6A08   008EDE71: FF 33 68 CC DE 8E 00 8B C7 BA 04 00 00 00 E8 34  .3h............4
0F59A90C: 008EDDE6   008EDE81: ED B1 FF 83 C3 04 4E 75 E0 5F 5E 5B C3 00 00 B0  ......Nu._^[....
0F59A908: 00000007   008EDE91: 04 02 00 FF FF FF FF 09 00 00 00 5B 00 46 00 69  ...........[.F.i
0F59A904: 76254E28   008EDEA1: 00 72 00 65 00 44 00 41 00 43 00 5D 00 00 00 B0  .r.e.D.A.C.]....
0F59A900: 00000000   008EDEB1: 04 02 00 FF FF FF FF 01 00 00 00 5B 00 00 00 B0  ...........[....
0F59A8FC: 00000001   008EDEC1: 04 02 00 FF FF FF FF 01 00 00 00 5D 00 00 00 55  ...........]...U
0F59A8F8: 0EEDFADE   008EDED1: 8B EC 53 56 8B DA 8B F0 8B 45 08 8B 40 FC 83 78  ..SV.....E..@..x



