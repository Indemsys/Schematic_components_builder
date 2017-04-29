unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils, Vcl.Graphics,
  System.Types,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.ComCtrls, Winapi.ShlObj,
  cxShellCommon, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxShellComboBox, dxLayoutControl, cxClasses, cxPropertiesStore, cxMemo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxBarBuiltInMenu, cxPC,
  FireDAC.Stan.StorageXML, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmMain = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    scb_InputFile1: TcxShellComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    btn_Execute: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    mem_Output1: TcxMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    tbl_PinsAltFuncs: TFDMemTable;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    ds_tbl_PinsAltFuncs: TDataSource;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    tbl_ExportToAltium: TFDMemTable;
    ds_tbl_ExportToAltium: TDataSource;
    tbl_ExportToAltiumdisplayname: TStringField;
    tbl_ExportToAltiumdesignator: TStringField;
    tbl_ExportToAltiumelectricaltype: TStringField;
    tbl_ExportToAltiumdescription: TStringField;
    tbl_ExportToAltiumorientation: TStringField;
    tbl_ExportToAltiumLocationX: TStringField;
    tbl_ExportToAltiumLocationY: TStringField;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxGrid3DBTableView1displayname: TcxGridDBColumn;
    cxGrid3DBTableView1designator: TcxGridDBColumn;
    cxGrid3DBTableView1electricaltype: TcxGridDBColumn;
    cxGrid3DBTableView1description: TcxGridDBColumn;
    cxGrid3DBTableView1orientation: TcxGridDBColumn;
    cxGrid3DBTableView1LocationX: TcxGridDBColumn;
    cxGrid3DBTableView1LocationY: TcxGridDBColumn;
    cb_PackingType: TcxComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    ted_DelimSym: TcxTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutAutoCreatedGroup;
    scb_OutputDir: TcxShellComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    ted_OutFile: TcxTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    ted_OutSeparator: TcxTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutAutoCreatedGroup;
    tbl_PinsAltFuncsLQFP144: TStringField;
    tbl_PinsAltFuncsBGA144: TStringField;
    tbl_PinsAltFuncsPinName: TStringField;
    tbl_PinsAltFuncsDefault: TStringField;
    tbl_PinsAltFuncsALT0: TStringField;
    tbl_PinsAltFuncsALT1: TStringField;
    tbl_PinsAltFuncsALT2: TStringField;
    tbl_PinsAltFuncsALT3: TStringField;
    tbl_PinsAltFuncsALT4: TStringField;
    tbl_PinsAltFuncsALT5: TStringField;
    tbl_PinsAltFuncsALT6: TStringField;
    tbl_PinsAltFuncsALT7: TStringField;
    tbl_PinsAltFuncsEZPort: TStringField;
    cxGrid1DBTableView1LQFP144: TcxGridDBColumn;
    cxGrid1DBTableView1BGA144: TcxGridDBColumn;
    cxGrid1DBTableView1PinName: TcxGridDBColumn;
    cxGrid1DBTableView1Default: TcxGridDBColumn;
    cxGrid1DBTableView1ALT0: TcxGridDBColumn;
    cxGrid1DBTableView1ALT1: TcxGridDBColumn;
    cxGrid1DBTableView1ALT2: TcxGridDBColumn;
    cxGrid1DBTableView1ALT3: TcxGridDBColumn;
    cxGrid1DBTableView1ALT4: TcxGridDBColumn;
    cxGrid1DBTableView1ALT5: TcxGridDBColumn;
    cxGrid1DBTableView1ALT6: TcxGridDBColumn;
    cxGrid1DBTableView1ALT7: TcxGridDBColumn;
    cxGrid1DBTableView1EZPort: TcxGridDBColumn;
    cxb_1: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    cxg_1: TcxGrid;
    cxgtv_1: TcxGridDBTableView;
    cxgl_1: TcxGridLevel;
    tbl_ExportToC: TFDMemTable;
    ds_tbl_ExportToC: TDataSource;
    tbl_ExportToCPinNumber: TStringField;
    tbl_ExportToCPinName: TStringField;
    tbl_ExportToCAltFuncs: TStringField;
    cxgtv_1PinNumber: TcxGridDBColumn;
    cxgtv_1PinName: TcxGridDBColumn;
    cxgtv_1AltFuncs: TcxGridDBColumn;
    procedure scb_InputFile1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_ExecuteClick(Sender: TObject);
    procedure scb_OutputFile1PropertiesChange(Sender: TObject);
    procedure cxb_1Click(Sender: TObject);
  private
    function Convert_negative_name(instr: String): String;
    procedure Table_to_StringList(var inpf: TStringList; tbl: TFDMemTable; sepr: string);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  scb_InputFile1.AbsolutePath := scb_InputFile1.Hint;
  scb_OutputDir.AbsolutePath := scb_OutputDir.Hint;
end;

function TfrmMain.Convert_negative_name(instr: String): String;
var
  outstr: string;
  i: Integer;
begin
  outstr := '';
  if rightstr(instr, 2) = '_b' then
  begin
    for i := 1 to length(instr) - 2 do
    begin
      outstr := outstr + '\' + instr[i];
    end;
  end
  else
  begin
    outstr := instr;
  end;
  Convert_negative_name := outstr;
end;

procedure TfrmMain.Table_to_StringList(var inpf: TStringList; tbl: TFDMemTable; sepr: string);
var
  istr: string;
  i: Integer;
begin
  inpf.Clear;
  istr := '';
  for i := 0 to tbl.Fields.Count - 1 do
  begin
    if istr <> '' then
      istr := istr + sepr;
    istr := istr + tbl.Fields[i].DisplayName;
  end;
  inpf.Add(istr);

  tbl.First;
  while not tbl.Eof do
  begin
    istr := '';
    for i := 0 to tbl.Fields.Count - 1 do
    begin
      if istr <> '' then
        istr := istr + sepr;
      istr := istr + tbl.Fields[i].AsString;
    end;
    inpf.Add(istr);
    tbl.Next;
  end;
end;

procedure TfrmMain.cxb_1Click(Sender: TObject);
var
  inpf: TStringList;
begin
  inpf := TStringList.Create;
  try
    Table_to_StringList(inpf, tbl_PinsAltFuncs, ';');
    inpf.LineBreak := ''#13''#10'';
    inpf.SaveToFile(scb_OutputDir.Text + '\' + 'pins.csv');
  finally
    inpf.Free;
  end;
end;

procedure TfrmMain.btn_ExecuteClick(Sender: TObject);
var
  inpf: TStringList;
  istr: string;
  sar: TStringDynArray;
  i: Integer;
  colcnt: Integer;
  packtype: string;
  pinnum: string;
  pinname: string;
  locationY: Integer;
  dispname: string;
  sepr: string;
  k: Integer;
  delim: string;
  descript: string;

begin
  inpf := TStringList.Create;
  try
    tbl_PinsAltFuncs.DisableControls;
    tbl_ExportToAltium.DisableControls;

    delim := ted_DelimSym.Text;

    inpf.LineBreak := #13;
    inpf.LoadFromFile(scb_InputFile1.AbsolutePath);
    istr := inpf.Text;
    istr := ReplaceStr(istr, #10, '');
    istr := ReplaceStr(istr, #13, #9);
    istr := ReplaceStr(istr, '  ', ' ');
    istr := ReplaceStr(istr, '"', '');
    istr := ReplaceStr(istr, ' ', '');
    istr := ReplaceStr(istr, ',', delim);

    mem_Output1.Lines.Text := istr;

    sar := SplitString(istr, #9);

    tbl_PinsAltFuncs.EmptyDataSet;
    colcnt := 0;
    for i := low(sar) to high(sar) do
    begin
      if colcnt = 0 then
      begin
        tbl_PinsAltFuncs.Append;
      end;
      tbl_PinsAltFuncs.Fields[colcnt].AsString := sar[i];
      inc(colcnt);
      if colcnt >= tbl_PinsAltFuncs.Fields.Count then
      begin
        tbl_PinsAltFuncs.Post;
        colcnt := 0;
      end;
    end;
    if colcnt <> 0 then
      tbl_PinsAltFuncs.Post;

    tbl_ExportToAltium.EmptyDataSet;
    // ќпредел€ем название выбранного корпуса
    packtype := cb_PackingType.Text;

    // ѕроходим по всей таблице tbl_PinsAltFuncs и записываем в таблицу
    tbl_PinsAltFuncs.First;
    while not tbl_PinsAltFuncs.Eof do
    begin
      // ѕолучаем название вывода
      pinnum := tbl_PinsAltFuncs.FieldByName(packtype).AsString;
      pinname := tbl_PinsAltFuncs.FieldByName('PinName').AsString;
      dispname := '';

      if (pinnum <> '-') and (pinnum <> '') and (pinnum <> 'Ч') then
      begin
        try

          tbl_ExportToAltium.Append;

          // ‘ормируем полное им€ вывода и его описание
          descript := '';
          for k := 1 to tbl_PinsAltFuncs.Fields.Count - 1 do
          begin

            if (tbl_PinsAltFuncs.Fields[k].AsString <> '-') and (tbl_PinsAltFuncs.Fields[k].AsString <> ' ') and (tbl_PinsAltFuncs.Fields[k].AsString <> '') and
              (tbl_PinsAltFuncs.Fields[k].AsString <> 'NC') and (leftstr(tbl_PinsAltFuncs.Fields[k].FieldName, 3) = 'ALT') then
            begin
              if dispname <> '' then
                dispname := dispname + delim;
              dispname := dispname + Convert_negative_name(tbl_PinsAltFuncs.Fields[k].Value);
            end;

            if k > 2 then
            begin
              descript := descript + tbl_PinsAltFuncs.Fields[k].DisplayName + '=(' + tbl_PinsAltFuncs.Fields[k].AsString + ')  ';
            end;
          end;

          if tbl_PinsAltFuncs.FieldByName('Default').AsString = 'DISABLED' then
          begin
            dispname := '-' + delim + dispname;
          end;

          tbl_ExportToAltium.FieldByName('display name').AsString := dispname;
          tbl_ExportToAltium.FieldByName('description').AsString := descript;
          tbl_ExportToAltium.FieldByName('designator').AsString := pinnum;

          if (dispname = 'VDD') or (dispname = 'VSS') or (dispname = 'VBAT') or (dispname = 'VDDA') or (dispname = 'VSSA') then
            tbl_ExportToAltiumelectricaltype.Value := 'Power'
          else
            tbl_ExportToAltiumelectricaltype.Value := 'IO';

          tbl_ExportToAltiumorientation.Value := '180 Degrees';
          tbl_ExportToAltiumLocationX.Value := '0';
          tbl_ExportToAltiumLocationY.Value := IntToStr(locationY);
          locationY := locationY - 10;

          tbl_ExportToAltium.Post;

        except
        end;

        try
          tbl_ExportToC.Append;

          tbl_ExportToCPinNumber.AsString :=  pinnum;
          tbl_ExportToCPinName.AsString := pinname;
          tbl_ExportToCAltFuncs.AsString := descript;

          tbl_ExportToC.Post;
        except
        end;

      end;
      tbl_PinsAltFuncs.Next;
    end;

    // Ёкспортиртируем таблицу в CSV файл
    sepr := ted_OutSeparator.Text;
    Table_to_StringList(inpf, tbl_ExportToAltium, sepr);
    inpf.LineBreak := ''#13''#10'';
    inpf.SaveToFile(scb_OutputDir.Text + '\' + ted_OutFile.Text);

    // Ёкспортиртируем таблицу дл€ C файлов в CSV файл
    sepr := ' # ';
    Table_to_StringList(inpf, tbl_ExportToC, sepr);
    inpf.LineBreak := ''#13''#10'';
    inpf.SaveToFile(scb_OutputDir.Text + '\ExportToC.c' );


  finally
    inpf.Free;
    tbl_PinsAltFuncs.EnableControls;
    tbl_ExportToAltium.EnableControls;

  end;
end;

procedure TfrmMain.scb_OutputFile1PropertiesChange(Sender: TObject);
begin
  scb_OutputDir.Hint := scb_OutputDir.AbsolutePath;
end;

procedure TfrmMain.scb_InputFile1PropertiesChange(Sender: TObject);
begin
  scb_InputFile1.Hint := scb_InputFile1.AbsolutePath;
end;

end.
