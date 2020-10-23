<%@ Page Title="" Language="C#" MasterPageFile="~/PRINCIPAL.master" AutoEventWireup="true" CodeFile="inicio_sesion.aspx.cs" Inherits="inicio_sesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0">
    <tr>
        <td>
                <asp:Label ID="Label1" runat="server" Text="Asigne su DUI"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="DUI" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="ASIGNE SU USERNAME"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="USERNAME" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>EMAIL</td>
        <td>
            <asp:TextBox ID="EMAIL" runat="server" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Asigne su contraseña"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Contraseña" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
</table>
    <center><asp:Button ID="INICIAR" runat="server" Text="incio sesion" OnClick="INICIAR_Click"></asp:Button> </center>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DUI" ErrorMessage="Asigne Su Dui"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EMAIL" ErrorMessage="Asigne su Email"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Contraseña" ErrorMessage="Asigne su Contraseña Porfavor"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="USERNAME" ErrorMessage="Asigne su Username"></asp:RequiredFieldValidator>
</asp:Content>

