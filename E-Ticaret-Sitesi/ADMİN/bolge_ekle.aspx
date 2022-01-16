<%@ Page Language="C#" MasterPageFile="~/ADMİN/admin.master" AutoEventWireup="true" CodeFile="bolge_ekle.aspx.cs" Inherits="ADMİN_bolge_ekle" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>Bölge   :</td>
<td></td>
<td></td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bölge girmelisiniz..." ControlToValidate="TextBox1" Text="*" ForeColor="White"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
<td>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="White" />
</td>
<td>
    <asp:Button ID="Button1" runat="server" Text="EKLE" OnClick="Button1_Click" /></td>
<td></td>
</tr>
</table>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black"
        Width="312px">
        <RowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <a href ='SİL.aspx?ilce_id=<%# Eval ("ilce_id") %>'>BÖLGE'Yİ SİL</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

