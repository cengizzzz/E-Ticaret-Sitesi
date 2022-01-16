<%@ Page Title="" Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="bilgiguncel.aspx.cs" Inherits="bilgiguncel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>ADINIZ   :</td>
<td></td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>SOYADINIZ  :</td>
<td></td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>E-MAİL  :</td>
<td></td>
<td>
    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>DOĞUM TARİHİNİZ  :</td>
<td></td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td></td>
<td>
    <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" 
        onclick="Button1_Click" /></td>
<td></td>
</tr>
</table>
</asp:Content>

