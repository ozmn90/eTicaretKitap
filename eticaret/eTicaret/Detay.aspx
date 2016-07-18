<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="eTicaret.Detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dlstUrunler" runat="server" RepeatColumns="1" Width="507px" OnItemCommand="dlstUrunler_ItemCommand" >
        <ItemTemplate>
            <div style="text-align:center">         
               <h3 style="color:gold"> <asp:Label ID="lblUrunAdi" runat="server" Text='<%#Eval("UrunAd") %>'></asp:Label><br /></h3>
                <asp:ImageButton ID="imgResim1" runat="server" ImageUrl='<%#Eval("UrunResimBuyuk") %>' Width="250px" Height="370px" AlternateText='<%#Eval("UrunAd") %>'  /><br />
                <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("UrunFiyat", "{0:C}") %>'></asp:Label>&nbsp;
                <asp:TextBox ID="txtAdet" runat="server" TextMode="Number" Width="26px" Text="1" ></asp:TextBox><br />
                <asp:ImageButton ID="btnSepeteAt" ImageUrl="~/Content/style/images/btnSepeteAt.png" runat="server" CommandName="sepet" CommandArgument='<%#Eval("UrunID") %>' /><br />
                <h2><asp:Label ID="lblUrunBilgisi" runat="server" Text='<%#Eval("UrunBilgisi") %>'></asp:Label></h2>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
