<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearPublicacion.aspx.cs" Inherits="Geekstagram.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Galeria&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="FeedGeneral.aspx">Regresar al inicio</a> </h2> 
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idfoto" DataSourceID="FotosSource">
        <Columns>
            <asp:BoundField DataField="idfoto" HeaderText="idfoto" SortExpression="idfoto" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="foto" HeaderText="foto" SortExpression="foto" />
        </Columns>
    </asp:GridView>
    <div>
    Hashtag
    
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>

    <div>
    Lugar 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>

    <div>
    Foto
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="IdFotoSource" DataTextField="idfoto" DataValueField="idfoto"></asp:DropDownList>
        <asp:SqlDataSource ID="IdFotoSource" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="SELECT [idfoto] FROM [Foto] ORDER BY [idfoto] DESC"></asp:SqlDataSource>
    </div>

<div>
        <asp:Button ID="Button1" runat="server" Text="Publicar" OnClick="Button1_Click" />
        &nbsp;
        <br />
        <br />
</div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <asp:SqlDataSource ID="FotosSource" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="SELECT * FROM [Foto]"></asp:SqlDataSource>

</asp:Content>
