<%@ Page Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="evdetay.aspx.cs" Inherits="evdetay" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server">
     <ItemTemplate>
              <table>
               <tr>
               <td>Resim  :</td>
               <td></td>
               <td>
                  <img src ="EV RESÝM/<%# Eval ("resim") %>"  alt =""/></td>
               </tr>
               <tr>
               <td>Açýklama  :</td>
               <td></td>
               <td>
                   <asp:Label ID="lblacýklama" runat="server" Text=""></asp:Label><%#Eval ("acýklama") %></td>
               </tr>
               <tr>
               <td>Yapým Tarih  :</td>
               <td></td>
               <td>
                   <asp:Label ID="lblyapým" runat="server" Text=""></asp:Label><%#Eval ("yapýmtarih") %></td>
               </tr>
               <tr>
               <td>Fiyat  :</td>
               <td></td>
               <td>
                   <asp:Label ID="lblfiyat" runat="server" Text=""></asp:Label><%#Eval ("fiyat") %></td>
               </tr>
               <tr>
               <td>Kategori  :</td>
               <td></td>
               <td>
                   <asp:Label ID="label1" runat="server" Text=""></asp:Label><%#Eval ("kategori_Ýsmi") %></td>
               </tr>     
               <tr>
               <td>Ýlce ÝD :</td>
               <td></td>
               <td>
                   <asp:Label ID="lblilce" runat="server" Text=""></asp:Label><%#Eval("ilce_isim")%></td>
               </tr>
               <tr>
               <td></td>
               <td></td>
               <td>
                  
               </tr>              
            </table> 
           </ItemTemplate>
            </asp:FormView>   &nbsp;Video  : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<iframe id="video1" runat="server" style ="width : 400px ; height : 300px ; "></iframe>
    &nbsp;
</asp:Content>

