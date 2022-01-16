<%@ Page Language="C#" MasterPageFile="~/ADMİN/admin.master" AutoEventWireup="true"
    CodeFile="guncelle.aspx.cs" Inherits="ADMİN_guncelle" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                Acıklama :</td>
            <td>
            </td>
            <td style="width: 278px">
                <asp:TextBox ID="lblacıklam" runat="server" Height="53px" TextMode="MultiLine" Width="268px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                Yapım Tarih :</td>
            <td>
            </td>
            <td style="width: 278px">
                <asp:TextBox ID="lblyayın" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                Fiyat :</td>
            <td>
            </td>
            <td style="width: 278px">
                <asp:TextBox ID="lblfiyat" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 23px">
                Kategori seç :</td>
            <td style="height: 23px">
            </td>
            <td style="width: 278px; height: 23px">
                <asp:DropDownList ID="lblkategori" runat="server" Width="123px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                İlce Sec :
            </td>
            <td>
            </td>
            <td style="width: 278px">
                <asp:DropDownList ID="lblilce" runat="server" Width="105px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                Video :</td>
            <td>
            </td>
            <td style="width: 278px">
                <asp:TextBox ID="txtvideo" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td> <iframe id="video1" runat="server" style ="width : 400px ; height : 300px ; "></iframe></td>
       <td></td> 
        </tr>
        <tr>
            <td>
                Resim :</td>
            <td>
            </td>
            <td style="width: 278px">
                <asp:TextBox ID="lblresim" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnguncelle" runat="server" Text="GUNCELLE" OnClick="btnguncelle_Click" /></td>
            <td>
            </td>
            <td style="width: 278px">
            </td>
        </tr>
    </table>
</asp:Content>
