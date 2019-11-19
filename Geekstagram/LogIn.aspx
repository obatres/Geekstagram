<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Geekstagram.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <h1>Log in</h1>
   </p>
    <p>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Label">User name</asp:Label>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <div>
                    <asp:Label ID="Label1" runat="server" Text="Label">Password</asp:Label>
        </div>

        <asp:TextBox ID="TextBox2" runat="server" Type="password"></asp:TextBox>
    </p>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
    </div>
    </asp:Content>
