object Form3: TForm3
  Left = 293
  Top = 274
  Cursor = crArrow
  BorderStyle = bsNone
  Caption = 'Form3'
  ClientHeight = 396
  ClientWidth = 951
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 88
    Width = 30
    Height = 13
    Caption = ' Name'
  end
  object Label2: TLabel
    Left = 8
    Top = 120
    Width = 45
    Height = 13
    Caption = ' Surname'
  end
  object Label3: TLabel
    Left = 8
    Top = 152
    Width = 48
    Height = 13
    Caption = ' Company'
  end
  object Label4: TLabel
    Left = 33
    Top = 179
    Width = 23
    Height = 13
    Caption = ' Title'
  end
  object Label5: TLabel
    Left = 22
    Top = 216
    Width = 31
    Height = 13
    Caption = ' E-mail'
  end
  object Label6: TLabel
    Left = 408
    Top = 88
    Width = 30
    Height = 13
    Caption = ' Name'
    Color = clBlack
    ParentColor = False
  end
  object Label7: TLabel
    Left = 487
    Top = 88
    Width = 45
    Height = 13
    Caption = ' Surname'
  end
  object Label8: TLabel
    Left = 583
    Top = 88
    Width = 48
    Height = 13
    Caption = ' Company'
  end
  object Label9: TLabel
    Left = 679
    Top = 88
    Width = 23
    Height = 13
    Caption = ' Title'
  end
  object Label10: TLabel
    Left = 751
    Top = 88
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Select_AddressBook: TButton
    Left = 233
    Top = 24
    Width = 193
    Height = 25
    Caption = 'Select AddressBook File'
    TabOrder = 0
    OnClick = Select_AddressBookClick
  end
  object Button2: TButton
    Left = 583
    Top = 24
    Width = 185
    Height = 25
    Caption = 'Read all From AddressBook'
    TabOrder = 1
    OnClick = Button2Click
  end
  object edit1: TEdit
    Left = 80
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edit2: TEdit
    Left = 80
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edit3: TEdit
    Left = 80
    Top = 149
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edit4: TEdit
    Left = 80
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edit5: TEdit
    Left = 80
    Top = 213
    Width = 177
    Height = 21
    TabOrder = 6
  end
  object Add_to_AddressBook: TButton
    Left = 48
    Top = 256
    Width = 185
    Height = 25
    Caption = 'Add to AddressBook'
    TabOrder = 7
    OnClick = Add_to_AddressBookClick
  end
  object search_in_the_AddressBook: TButton
    Left = 240
    Top = 101
    Width = 137
    Height = 49
    Caption = 'Search in the AddressBook'
    TabOrder = 8
    OnClick = search_in_the_AddressBookClick
  end
  object clear_list: TButton
    Left = 488
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Clear List'
    TabOrder = 9
    OnClick = clear_listClick
  end
  object close: TButton
    Left = 784
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 10
    OnClick = closeClick
  end
  object Memo1: TMemo
    Left = 408
    Top = 101
    Width = 79
    Height = 156
    Lines.Strings = (
      '')
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 11
  end
  object Memo2: TMemo
    Left = 487
    Top = 101
    Width = 96
    Height = 156
    Lines.Strings = (
      '')
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object Memo3: TMemo
    Left = 583
    Top = 101
    Width = 96
    Height = 156
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 13
  end
  object Memo4: TMemo
    Left = 679
    Top = 101
    Width = 66
    Height = 156
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 14
  end
  object Memo5: TMemo
    Left = 745
    Top = 101
    Width = 186
    Height = 156
    ReadOnly = True
    TabOrder = 15
  end
  object OpenDialog1: TOpenDialog
    Left = 384
    Top = 264
  end
end
