<%@ Page Language="C#" MasterPageFile="~/ADMİN/admin.master" AutoEventWireup="true" CodeFile="EVLİSTE.aspx.cs" Inherits="ADMİN_OTELLİSTE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                   <a href ='guncelle.aspx?ev_id=<%#Eval("ev_id") %>'>GÜNCELLE</a>
                </ItemTemplate>
                                
            </asp:TemplateField>
            <asp:TemplateField>
            <ItemTemplate>
                   <a href ='sil.aspx?ev_id=<%#Eval("ev_id") %>'>SİL</a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                   <img alt="" src ="../EV RESİM/<%# Eval ("resim") %>"  style ="width : 300px ; height :300px "/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="acıklama" HeaderText="Acıklama " />
            <asp:BoundField DataField="fiyat" HeaderText="Fiyat" />
            <asp:BoundField DataField="kategori_id" HeaderText="Kategori " />
            <asp:BoundField DataField="ilce_id" HeaderText="ilce" />
            <asp:BoundField DataField="video" HeaderText="Video" />
            
        </Columns>
    
    </asp:GridView>
</asp:Content>

