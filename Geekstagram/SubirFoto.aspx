<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubirFoto.aspx.cs" Inherits="Geekstagram.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div>
                </div>

                <div>
         
                </div>

 
                <div>
                                    Archivo:
                                    <asp:TextBox ID="TextBox2" runat="server" Width="700px"></asp:TextBox>
                </div>

                Nombre de la imagen:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <p>
                <asp:Button ID="Button1" runat="server" Text="Realizar Publicacion" OnClick="Button1_Click" />
                </p>

            </div>
        </div>
    <div class="row">

        usuario loggeado: 
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>


</asp:Content>
