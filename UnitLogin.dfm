object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 212
  ClientWidth = 417
  Caption = 'Login'
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  Script.Strings = (
    '/*document.addEventListener('#39'keydown'#39', function(event) {'
    
      '    if (event.key == '#39'F1'#39' || event.key == '#39'F2'#39' || event.key == '#39 +
      'F3'#39' || event.key == '#39'F4'#39' || event.key == '#39'F5'#39' || event.key == '#39'F' +
      '6'#39' || event.key == '#39'F7'#39' || event.key == '#39'F8'#39' || event.key == '#39'F9' +
      #39' || event.key == '#39'F10'#39' || event.key == '#39'F11'#39' || event.key == '#39'F' +
      '12'#39') {'
    '        event.cancelBubble = true;'
    '        event.returnValue = false;'
    '        event.keyCode = false;'
    '        return false;'
    '    }'
    '});'
    '*/')
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnAfterShow = UniLoginFormAfterShow
  PixelsPerInch = 96
  TextHeight = 19
  object UniButton1: TUniButton
    Left = 8
    Top = 172
    Width = 113
    Height = 36
    Hint = ''
    Caption = '&Batal'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object btnLogin: TUniButton
    Left = 304
    Top = 172
    Width = 107
    Height = 36
    Hint = ''
    Caption = 'Login'
    TabOrder = 1
    Default = True
    OnClick = btnLoginClick
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 169
    Hint = ''
    Align = alTop
    TabOrder = 2
    Caption = ''
    object edUser: TUniEdit
      Left = 144
      Top = 40
      Width = 201
      Hint = ''
      Text = ''
      TabOrder = 1
      OnKeyPress = edUserKeyPress
    end
    object UniLabel1: TUniLabel
      Left = 56
      Top = 40
      Width = 32
      Height = 19
      Hint = ''
      Caption = 'User'
      TabOrder = 2
    end
    object edPass: TUniEdit
      Left = 144
      Top = 80
      Width = 201
      Hint = ''
      PasswordChar = '*'
      Text = ''
      TabOrder = 3
      OnKeyPress = edPassKeyPress
    end
    object UniLabel2: TUniLabel
      Left = 56
      Top = 80
      Width = 67
      Height = 19
      Hint = ''
      Caption = 'Password'
      TabOrder = 4
    end
  end
  object qLogin: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 168
    Top = 168
  end
end
