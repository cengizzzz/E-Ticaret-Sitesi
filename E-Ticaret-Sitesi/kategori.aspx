<%@ Page Language="C#" MasterPageFile="~/Emlak.master" AutoEventWireup="true" CodeFile="kategori.aspx.cs" Inherits="kategori" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="templatemo_section_2">
                <img src="EV RESÝM/<%# Eval ("resim") %>" style ="width :300px ;height :199px ;" alt="" />
                <div class="price">
                    FÝYAT:<span><%#Eval("fiyat") %></span></div>
                <div class="readmore">
                    <a href='evdetay.aspx?ev_id=<%# Eval ("ev_id") %>'>Detay Git</a></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

