<%@ Page Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="evdetay.aspx.cs" Inherits="evdetay" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server">
     <ItemTemplate>
              <table>
               <tr>
               <td>Resim  :</td>
               <td></td>
               <td>
                  <img src ="EV RES�M/<%# Eval ("resim") %>"  alt =""/></td>
               </tr>
               <tr>
               <td>A��klama  :</td>
               <td></td>
               <td>
                   <asp:Label ID="lblac�klama" runat="server" Text=""></asp:Label><%#Eval ("ac�klama") %></td>
               </tr>
               <tr>
               <td>Yap�m Tarih  :</td>
               <td></td>
               <td>
                   <asp:Label ID="lblyap�m" runat="server" Text=""></asp:Label><%#Eval ("yap�mtarih") %></td>
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
                   <asp:Label ID="label1" runat="server" Text=""></asp:Label><%#Eval ("kategori_�smi") %></td>
               </tr>     
               <tr>
               <td>�lce �D :</td>
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

