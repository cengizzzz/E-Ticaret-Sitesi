<%@ Page Language="C#" MasterPageFile="~/ADMİN/admin.master" AutoEventWireup="true" CodeFile="EV EKLE.aspx.cs" Inherits="ADMİN_EV_EKLE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table>
   <tr>
   <td>
       Acıklama :</td>
   <td></td>
   <td style="width: 278px">
       <asp:TextBox ID="txtacıklama" runat="server" Height="64px" TextMode="MultiLine" Width="315px"></asp:TextBox><asp:RequiredFieldValidator
           ID="RequiredFieldValidator1" runat="server" ErrorMessage="Acıklama girmelisniz..." Text ="*" ControlToValidate="txtacıklama"></asp:RequiredFieldValidator></td>
   </tr>
   <tr>
   <td>Yapım Tarih  :</td>
   <td></td>
   <td style="width: 278px">
       <asp:TextBox ID="txtyayın" runat="server"></asp:TextBox><asp:RequiredFieldValidator
           ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tarih girmek zorundasınız..." Text="*" ControlToValidate="txtyayın"></asp:RequiredFieldValidator>
      </td>
   </tr>
   <tr>
   <td>Fiyat  :</td>
   <td></td>
   <td style="width: 278px">
       <asp:TextBox ID="txtfiyat" runat="server"></asp:TextBox><asp:RequiredFieldValidator
           ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fiyat girmek zorundasınız..." Text="*" ControlToValidate="txtfiyat"></asp:RequiredFieldValidator></td>
   </tr>
   <tr>
   <td style="height: 23px">Kategori seç  :</td>
   <td style="height: 23px"></td>
   <td style="width: 278px; height: 23px">
       <asp:DropDownList ID="ddlkategori" runat="server" Width="123px" AppendDataBoundItems="True">
       <asp:ListItem Text ="Se&#231;iniz" Value ="-1" ></asp:ListItem>
       </asp:DropDownList></td>
   </tr>
   <tr>
   <td>İlce Sec : </td>
   <td></td>
   <td style="width: 278px">
       <asp:DropDownList ID="ddlilce" runat="server" Width="105px" AppendDataBoundItems="True">
        <asp:ListItem Text ="Se&#231;iniz" Value ="-1" ></asp:ListItem>
       </asp:DropDownList></td>
   </tr>
   <tr>
   <td>Video  :</td>
   <td></td>
   <td style="width: 278px">
       <asp:TextBox ID="txtvideo" runat="server"></asp:TextBox><asp:RequiredFieldValidator
           ID="RequiredFieldValidator4" runat="server" ErrorMessage="Video girmek zorundasınız..." Text="*" ControlToValidate="txtvideo"></asp:RequiredFieldValidator></td>
   </tr>
   <tr>
   <td>Resim  :</td>
   <td></td>
   <td style="width: 278px">
       <asp:TextBox ID="txtresim" runat="server"></asp:TextBox><asp:RequiredFieldValidator
           ID="RequiredFieldValidator5" runat="server" ErrorMessage="Resim girmek zorundasınız..." Text="*" ControlToValidate="txtresim"></asp:RequiredFieldValidator></td>
   </tr>
   <tr>
   <td>
       <asp:Button ID="Button1" runat="server" Text="EKLE" BackColor="White" BorderStyle="Double" OnClick="Button1_Click" Width="137px" /></td>
   <td>
       &nbsp;</td>
   <td style="width: 278px">
       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="White" Width="276px" />
   </td>
   </tr>
   </table>
</asp:Content>

