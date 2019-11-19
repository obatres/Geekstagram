<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Geekstagram.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Registro de usuario</h1>
<p>
    <asp:Label ID="Label1" runat="server" Text="Label">User name</asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label">Password</asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Type="password" ></asp:TextBox>
</p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Label">Repetir Password</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Type="password"></asp:TextBox>
</p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Label">Nombre </asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Label"> Email </asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
        <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="Button" />
</p>
<p>
        <asp:SqlDataSource ID="GEEK" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="SELECT [idUsuario] FROM [usuario]"></asp:SqlDataSource>
</p>

</asp:Content>
