<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedGeneral.aspx.cs" Inherits="Geekstagram.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        FEED GENERAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Salir" class="btn btn-success" OnClick="Button5_Click"/>
    </h1>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="FeedGeneral">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="foto" HeaderText="foto" SortExpression="foto" />
                <asp:BoundField DataField="Likes" HeaderText="Likes" SortExpression="Likes" />
                <asp:BoundField DataField="Hashtag" HeaderText="Hashtag" SortExpression="Hashtag" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="FeedGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="Select foto,Likes, Hashtag from publicacion, foto where idfoto=Foto_idfoto ;"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear Publicacion" />
&nbsp;  <asp:Button ID="Button2" runat="server" Text="Buscar Hashtag" OnClick="Button2_Click" />
        &nbsp;
        <asp:Button ID="Button3" runat="server" Text="Ver Actividad" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Ver mi feed" OnClick="Button4_Click" />
        <br />
    </div>
</asp:Content>
