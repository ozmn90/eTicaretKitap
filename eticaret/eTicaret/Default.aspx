<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eTicaret.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Style="margin-right: 0px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class="templatemo_product_box">
                <h2>
                    <asp:Label ID="lblUrunAdi" runat="server" Text='<%#Eval("UrunAd") %>'></asp:Label><br />
                </h2>
                <asp:ImageButton ID="img1" runat="server" ImageUrl='<%#Eval("UrunResimKucuk") %>' Width="100px" Height="150px" AlternateText='<%#Eval("UrunAd") %>' CommandName="detay" CommandArgument='<%#Eval("UrunID") %>' />
                <div class="product_info">
                    
                    <asp:Label ID="lblYazar" runat="server" Text='<%#Eval("Yazar") %>'></asp:Label>
                    <br />  <br />
                    <asp:Label ID="lblAciklama" runat="server" Text='<%#Eval("UrunBilgisi") %>'></asp:Label>
                    <br />
                    <h4>
                    <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("UrunFiyat", "{0:C}") %>'></asp:Label>
                    <br /></h4>

                    
                   
                    <asp:TextBox ID="txtAdet" runat="server" TextMode="Number" Width="30px" Height="20" Text="1"></asp:TextBox>  <br /> <%--&nbsp --%>
                    <asp:ImageButton ID="btnSepeteAt" ImageUrl="~/icerik/still/images/sepet.png" runat="server" CommandName="sepet" CommandArgument='<%#Eval("UrunID") %>' Height="50" Width="50px" />
                </div>

            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
    



