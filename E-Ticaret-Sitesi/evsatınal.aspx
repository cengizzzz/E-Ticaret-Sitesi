<%@ Page Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="evsatınal.aspx.cs" Inherits="evsatınal" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>ŞUBE SEÇİNİZ =</td>
<td style="height: 26px"></td>
<td style="height: 26px">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
    <asp:ListItem Text ="Se&#231;iniz" Value ="-1"></asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ev bölünü dolduramk zorundasınız!" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>GÖRÜŞME TARİHİ BELİRLEYİN  =</td>
<td style="height: 44px"></td>
<td style="height: 44px">
    <asp:TextBox ID="txtgör" runat="server" Height="34px" Width="199px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtgör"
        ErrorMessage="Görüşmesaatikkısmınıdoldurmakzorundsasınız!">*</asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="height: 26px">AD  =</td>
<td style="height: 26px"></td>
<td style="height: 26px">
    <asp:TextBox ID="txtad" runat="server"></asp:TextBox> </td>
</tr>
<tr>
<td style="height: 27px">SOYAD  =</td>
<td style="height: 27px"></td>
<td style="height: 27px">
    <asp:TextBox ID="txtsoyad" runat="server"></asp:TextBox> </td>
</tr>
<tr>
<td>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="White" />
</td>
<td>
    <asp:Button ID="Button1" runat="server" Text="RANDEVU AL" BorderStyle="Dashed" OnClick="Button1_Click" /></td>
<td>
    <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="#000066" 
        ForeColor="#FF3300"></asp:Label></td>
</tr>
</table>
</asp:Content>

