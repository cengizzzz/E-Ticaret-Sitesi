<%@ Page Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="İletisim.aspx.cs" Inherits="İletisim" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="height: 26px">Adınız Soyadınız :</td>
<td style="height: 26px"></td>
<td style="height: 26px">
    <asp:TextBox ID="txtad" runat="server"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ad Soyad Girmek Zorundasınız." ControlToValidate ="txtad" Text="*" ></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="height: 26px">E mail adresiniz  :</td>
<td style="height: 26px"></td>
<td style="height: 26px">
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
        ErrorMessage="Geçerli Bir Mail Adresi Girniz.." Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
</tr>
<tr>
<td style="height: 26px">kanu id  :</td>
<td style="height: 26px"></td>
<td style="height: 26px">
    <asp:DropDownList ID="DropDownList1" runat="server" Width="93px" AppendDataBoundItems="True">
    <asp:ListItem Value ="-1" Text="se&#231;iniz"></asp:ListItem>
    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ErrorMessage="Konu Seçmek Zorundasınız..." ControlToValidate="DropDownList1" Text="*" InitialValue="-1" ForeColor="White"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="height: 40px">Mesajınız  :</td>
<td style="height: 40px"></td>
<td style="height: 40px">
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" ></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mesaj Göndermek Zorundasınız..." ControlToValidate ="TextBox1" Text ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="White" />
</td>
<td>
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label></td>
<td>
    <asp:Button ID="Button1" runat="server" Text="GÖNDER" OnClick="Button1_Click" /></td>
</tr>

</table>
</asp:Content>

