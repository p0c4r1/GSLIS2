EurekaLog 7.5.0.0  

Exception:
------------------------------------------------------------------------------
  2.2 Address: 00000000
  2.5 Type   : EExternalException
  2.6 Message: Access violation at address 00000000. Write of address 00000000
               .
               Module:_GSLIS2.exe
               Code:_C0000005 (EXCEPTION_ACCESS_VIOLATION)
               Address:_00000000 (00000000).
  2.7 ID     : F4910000
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
|Running Thread: ID=4124; Parent=4284; Priority=0                                                                                      |
|Class=TUniSessionWorkerThread; Name=[Unnamed thread 4124] Kind: TThread. Thread function: uniGUISessionManager.TUniSessionWorkerThread.Execute. Thread caller: uniGUISessionManager.TUniSessionWorkerThread.Create (uniGUISessionManager.TUniSessionWorkerThread.Execute)|
|DeadLock=0; Wait Chain=                                                                                                               |
|Comment=                                                                                                                              |
|--------------------------------------------------------------------------------------------------------------------------------------|
|00000020|04     |1139DBE8|004D3044|GSLIS2.exe|000D3044|System.Classes      |                       |StdWndProc             |16600[8]  |
|00000020|04     |1139F5F8|004D3044|a         |000D3044|recursive           |area                   |removed                |279[0]    |
|00000020|04     |1139F610|004D3044|GSLIS2.exe|000D3044|System.Classes      |                       |StdWndProc             |16600[8]  |
|00000020|04     |1139F83C|0065FF00|GSLIS2.exe|0025FF00|Vcl.Forms           |TApplication           |ProcessMessage         |10331[2]  |
|00000020|04     |1139F868|0066000A|GSLIS2.exe|0026000A|Vcl.Forms           |TApplication           |ProcessMessages        |10374[1]  |
|00000020|04     |1139F88C|00B7B7DE|GSLIS2.exe|0077B7DE|frxClass            |TfrxReport             |InternalOnProgressStart|11243[20] |
|00000020|04     |1139F8A0|00B165A6|GSLIS2.exe|007165A6|frxPreviewPages     |TfrxPreviewPages       |Initialize             |393[4]    |
|00000020|04     |1139F8AC|00B1E7C1|GSLIS2.exe|0071E7C1|frxEngine           |TfrxEngine             |Initialize             |244[2]    |
|00000020|04     |1139F8D0|00B1EC38|GSLIS2.exe|0071EC38|frxEngine           |TfrxEngine             |Run                    |313[3]    |
|00000020|04     |1139F8F8|00B7AADC|GSLIS2.exe|0077AADC|frxClass            |TfrxReport             |PrepareReport          |10875[43] |
|00000020|04     |1139F904|00B7AB2F|GSLIS2.exe|0077AB2F|frxClass            |TfrxReport             |PrepareReport          |10883[51] |
|00000020|04     |1139F95C|00EE23B3|GSLIS2.exe|00AE23B3|UnitBayar           |TfrmBayar              |btnLabelClick          |1670[23]  |
|00000020|04     |1139F964|00EE254E|GSLIS2.exe|00AE254E|UnitBayar           |TfrmBayar              |btnLabelClick          |1682[35]  |
|00000020|03     |1139F9D0|008908D4|GSLIS2.exe|004908D4|uniGUIClasses       |TUniControl            |DoClick                |          |
|00000020|03     |1139F9D8|00A7B8A3|GSLIS2.exe|0067B8A3|uniButton           |TUniCustomButton       |DoClick                |          |
|00000020|03     |1139F9F4|00A7AEB4|GSLIS2.exe|0067AEB4|uniButton           |TUniCustomButton       |ClickHandler           |          |
|00000020|03     |1139FA0C|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |1139FA64|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |1139FAAC|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |1139FAF8|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue      |          |
|00000020|03     |1139FB04|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents          |          |
|00000020|03     |1139FB3C|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal              |          |
|00000020|03     |1139FB6C|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal              |          |
|00000020|04     |1139FB70|00EE79F3|GSLIS2.exe|00AE79F3|UnitFODaftar        |TfrmFODaftar           |btnBayarClick          |946[51]   |
|00000020|04     |1139FBEC|00EED395|GSLIS2.exe|00AED395|UnitFODaftar        |TfrmFODaftar           |UniFormKeyDown         |1717[16]  |
|00000020|03     |1139FC00|0086F3ED|GSLIS2.exe|0046F3ED|uniGUIJSForm        |TUniJSForm             |ExtOnKeyDown           |          |
|00000020|03     |1139FC24|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |1139FC7C|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |1139FCC4|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |1139FD10|008B304B|GSLIS2.exe|004B304B|uniGUIApplication   |TUniGUISession         |ProcessEventQueue      |          |
|00000020|03     |1139FD1C|008B3193|GSLIS2.exe|004B3193|uniGUIApplication   |TUniGUISession         |ProcessEvents          |          |
|00000020|03     |1139FD54|0086AB9B|GSLIS2.exe|0046AB9B|uniGUIJSForm        |TUniBaseJSForm         |ShowModal              |          |
|00000020|03     |1139FD84|0087CD7F|GSLIS2.exe|0047CD7F|uniGUIForm          |TUniBaseForm           |ShowModal              |          |
|00000020|04     |1139FD88|00F249A3|GSLIS2.exe|00B249A3|Main                |TMainForm              |mnFODaftarClick        |135[1]    |
|00000020|03     |1139FD98|00864F0B|GSLIS2.exe|00464F0B|uniMainMenu         |TUniMenuControl        |H_OnMenuItemClick      |          |
|00000020|03     |1139FDB4|0087397B|GSLIS2.exe|0047397B|uniGUIJSInterface   |TUniJSHelper           |HandleEvent            |          |
|00000020|03     |1139FE0C|00892295|GSLIS2.exe|00492295|uniGUIClasses       |TUniControl            |HandleEventIntercept   |          |
|00000020|03     |1139FE54|008C0461|GSLIS2.exe|004C0461|uniGUISessionManager|TUniSessionWorkerThread|ProcessEvent           |          |
|00000020|03     |1139FEA0|008C064B|GSLIS2.exe|004C064B|uniGUISessionManager|TUniSessionWorkerThread|Execute                |          |
|00000020|04     |1139FEDC|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|00000020|04     |1139FEF0|004CF631|GSLIS2.exe|000CF631|System.Classes      |                       |ThreadProc             |14161[21] |
|00000020|04     |1139FF14|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|00000020|04     |1139FF6C|006E5835|GSLIS2.exe|002E5835|EThreadsManager     |                       |ThreadDataUnlock       |1320[2]   |
|7FFFFFFE|03     |00000000|008C0128|GSLIS2.exe|004C0128|uniGUISessionManager|TUniSessionWorkerThread|Create                 |          |
----------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle  |Name                |Description                                        |Version        |Size    |Modified           |Path                                                                                                          |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|00400000|GSLIS2.exe          |                                                   |1.0.0.0        |48664582|2020-01-28 17:19:32|D:\GSLIS2\                                                                                                    |
|11000000|libeay32.dll        |OpenSSL Shared Library                             |1.0.2.17       |1374208 |2018-11-22 18:48:46|D:\GSLIS2\                                                                                                    |
|12000000|ssleay32.dll        |OpenSSL Shared Library                             |1.0.2.17       |337920  |2018-11-22 18:48:46|D:\GSLIS2\                                                                                                    |
|73D20000|libmysql.dll        |                                                   |5.6.45.0       |4176312 |2019-06-10 05:36:06|C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\                                                            |
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
--------------------------------------------------------------------
; Base Address: $0, Allocation Base: $0, Region Size: 65536
; Allocation Protect: N/A, Protect: PAGE_NOACCESS
; State: MEM_FREE, Type: N/A
; 
00000000  ??                ; unaccessible location  ; <-- EXCEPTION

Registers:
-----------------------------
EAX: 00000000   EDI: 00260E0E
EBX: 0DEEE7F8   ESI: 0000001A
ECX: 0026000F   EBP: 1139DBFC
EDX: 1139DBEC   ESP: 1139DBE8
EIP: 00000000   FLG: 00010246
EXP: 00000000   STK: 1139DBE8

Stack:               Memory Dump:
------------------   ---------------------------------------------------------------------------



