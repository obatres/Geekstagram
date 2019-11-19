<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedPerfil.aspx.cs" Inherits="Geekstagram.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Feed de <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="FeedGeneral.aspx">< Regresar </a></h1> 
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="FeedPerfil">
            <Columns>
                <asp:BoundField DataField="foto" HeaderText="foto" SortExpression="foto" />
                <asp:BoundField DataField="Likes" HeaderText="Likes" SortExpression="Likes" />
                <asp:BoundField DataField="Hashtag" HeaderText="Hashtag" SortExpression="Hashtag" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="FeedPerfil" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="Select foto,Likes, Hashtag  from publicacion, foto, usuario where idfoto=Foto_idfoto and idusuario=usuario_idusuario and username='obatres' order by fecha desc;"></asp:SqlDataSource>
    </div>
</asp:Content>
