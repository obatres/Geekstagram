<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerActividad.aspx.cs" Inherits="Geekstagram.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Actividad de los usuarios
  
    </h1>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Actividad">
            <Columns>
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Desc" HeaderText="Desc" SortExpression="Desc" />
                
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="Actividad" runat="server" ConnectionString="<%$ ConnectionStrings:GEEK %>" SelectCommand="SELECT [Fecha], [Desc] FROM [Actividad] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Regresar al Feed" Height="41px" OnClick="Button1_Click" Width="105px" />
    </div>
</asp:Content>
