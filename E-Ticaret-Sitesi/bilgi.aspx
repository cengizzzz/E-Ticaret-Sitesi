<%@ Page Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="bilgi.aspx.cs" Inherits="bilgi" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <h2>
              Kullanıcı Bilgileriniz (<a href ="parola.aspx" style="text-decoration :none ;">Parola Degiştir</a>)(<a href ='bilgiguncel.aspx?UserId=<%# Eval("UserId") %>'style="text-decoration :none ;">Bilgileri Güncelle</a>)
            </h2>
            <div class="entry">
                <div class="entry">
                    <br />
                    <p>
                        </a> Ad :
                        <%#Eval ("ad") %>
                         <br />
                    <p>
                        </a> Soyad :
                        <%#Eval ("soyad") %>
                         <br />
                    <p>
                    <p>
                        </a> Telefon :
                        <%#Eval ("dogum_tarih") %>
                         <br />
                    <p>       
                </div>
            </div>            
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

