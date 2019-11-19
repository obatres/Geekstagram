<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuscarH.aspx.cs" Inherits="Geekstagram.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>
            Buscar por Hashtag
        </h1>
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; 
    <div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Likes" HeaderText="Likes" SortExpression="Likes" />
                <asp:BoundField DataField="Hashtag" HeaderText="Hashtag" SortExpression="Hashtag" />
                <asp:BoundField DataField="Localizacion" HeaderText="Localizacion" SortExpression="Localizacion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="SELECT [Fecha], [Likes], [Hashtag], [Localizacion] FROM [Publicacion] WHERE ([Hashtag] LIKE '%' + @Hashtag + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Hashtag" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Regresar al feed" OnClick="Button1_Click" />
    </div>
</asp:Content>
