<%@ Page Title="" Language="C#" MasterPageFile="~/PRINCIPAL.master" AutoEventWireup="true" CodeFile="Detalles.aspx.cs" Inherits="Detalles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="GUARDO" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Label ID="NAME" runat="server" Text="Label" Visible="false"></asp:Label>
     <header id="header">
        <div class="logo"><a href="~/">La Lucha <span> Restaurante </span></a></div>
        <a href="#menu">Menu</a>
    </header>
    <!-- Nav -->
    <nav id="menu">
        <ul class="links">
            <li><a href="index.aspx">Inicio</a></li>
            <li><a href="registrar.aspx">Registrarse</a></li>
            <li><a href="inicio_sesion.aspx">Realizar un Pedido</a></li>
            <li><a href="Nosotros.aspx">Sobre Nosotros</a></li>
            <li><a href="#">Contactenos</a></li>
            <li><a href="index.aspx">Cerrar Sesion</a></li>

        </ul>
    </nav>
    <div class="container body-content">
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="eliminar" OnClick="eliminar_Click" CommandArgument='<%#Eval("ID") %>'>Eliminar</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="SELECT [ID], [DUI_TRANSACTOR], [ID_PRODUCTO], [DETALLE], [NOMBRE], [DESCRIPCION] FROM [PEDIDOS_USUARIOS] WHERE ([DUI_TRANSACTOR] = @DUI_TRANSACTOR)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GUARDO" Name="DUI_TRANSACTOR" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="MostrarTodo" TypeName="PEDIDOBLL"></asp:ObjectDataSource>
        <center><asp:Button ID="Button1" runat="server" Text="REGRESAR" OnClick="Button1_Click"></asp:Button></center>

    </asp:Content>

