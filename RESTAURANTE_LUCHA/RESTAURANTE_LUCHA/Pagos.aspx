<%@ Page Title="" Language="C#" MasterPageFile="~/PRINCIPAL.master" AutoEventWireup="true" CodeFile="Pagos.aspx.cs" Inherits="Pagos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table>
       <tr>
           <td>
               ASIGNE SU METODO DE PAGO
           </td>
           <td>
               <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sql" DataTextField="Descripcion" DataValueField="Descripcion"></asp:DropDownList>
               <asp:SqlDataSource ID="sql" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="SELECT [ID], [Descripcion] FROM [ModoDePago]"></asp:SqlDataSource>
            </td>
       </tr>
       <tr>
           <td colspan="2"> <center><asp:Button ID="Siguiente" runat="server" Text="Siguiente" OnClick="Siguiente_Click" /></center></td>
       </tr>
   </table>
    <asp:Label ID="GUARDO" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    </asp:Content>

