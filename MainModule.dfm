object UniMainModule: TUniMainModule
  OldCreateOrder = False
  DocumentKeyOptions = [dkDisableBackSpace]
  BrowserOptions = [boDisableMouseRightClick, boDisableChromeRefresh]
  MonitoredKeys.Enabled = True
  MonitoredKeys.Keys = <
    item
      KeyStart = 123
      KeyEnd = 112
      HandleBrowser = False
    end
    item
      KeyStart = 111
      KeyEnd = 1
    end
    item
      KeyStart = 255
      KeyEnd = 124
    end>
  EnableSynchronousOperations = True
  Height = 211
  Width = 303
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=gsp'
      'User_Name=lisUsr'
      'Password=khsgs102938'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 144
    Top = 72
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\libmysql.dll'
    Left = 56
    Top = 136
  end
end
