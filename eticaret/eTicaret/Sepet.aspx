<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="eTicaret.Sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        var baslik = this.document.getElementById("ortaBaslik");
        baslik.innerText = "Sepet İşlemleri";
    </script>
    <center>
    <img src="Content/style/images/sepetonay2.jpg" /><br />
    <asp:GridView ID="gvSepet" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="sepetID" ForeColor="Black" GridLines="None" ShowFooter="True" Width="433px" OnRowDeleting="gvSepet_RowDeleting" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="urunAd" HeaderText="Ürün Adı" >
            <HeaderStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="fiyat" HeaderText="Fiyat" >
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="adet" HeaderText="Adet" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="tutar" HeaderText="Tutar" >
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:CommandField DeleteText="sil" ShowDeleteButton="True" >
            <ItemStyle HorizontalAlign="Center" Width="30px" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        <EmptyDataTemplate>Sepetinizde ürün bulunmamaktadır.</EmptyDataTemplate>
    </asp:GridView>     
    <br />
    <asp:Button ID="btnSepetiBosalt" CssClass="bluebutton" runat="server" Text="Sepeti Boşalt" Width="105px" OnClick="btnSepetiBosalt_Click" />
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="btnDevam" CssClass="bluebutton" runat="server" Text="Alışverişe Devam" Width="105px" OnClick="btnDevam_Click" />
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSatinAl" CssClass="bluebutton" runat="server" Text="Satın Al" Width="105px" OnClick="btnSatinAl_Click" />

    </center>
</asp:Content>
