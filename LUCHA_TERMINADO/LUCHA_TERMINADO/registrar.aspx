<%@ Page Title="" Language="C#" MasterPageFile="~/PRINCIPAL.master" AutoEventWireup="true" CodeFile="registrar.aspx.cs" Inherits="registrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0">
        <tr>
            <td colspan="2">AREA DE REGISTRO DE SESION</td>
        </tr>
        <tr>
            <td>
                Asigne su E-MAIL
            </td>
            <td>
                <asp:TextBox ID="EMAIL" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Asigne su Contraseña
            </td>
            <td>
                <asp:TextBox ID="CONTRA" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Asigne su Username
            </td>
            <td>
                <asp:TextBox ID="USER" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Asigne su DUI
            </td>
            <td>
                <asp:TextBox ID="DUI" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"> <CENTER><asp:Button ID="Button1" runat="server" Text="REGISTRAME!" OnClick="Button1_Click" /></CENTER></td>
        </tr>
    </table>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Asigne el Username" ControlToValidate="USER"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DUI" ErrorMessage="Asigne su DUI"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CONTRA" ErrorMessage="Asigne su Contraseña"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EMAIL" ErrorMessage="Asigne su EMAIL"></asp:RequiredFieldValidator>
</asp:Content>

