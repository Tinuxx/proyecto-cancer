<%@ Page Title="Manejo de Eventos" Language="C#" MasterPageFile="~/VistaPrincipal.master" AutoEventWireup="true" CodeFile="ManejoEventos.aspx.cs" Inherits="ManejoEventos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
	<link href="Content/ManejoEventos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
	<div class="pure-g">
        <div class="pure-u-1-2">
            <div class="panel-grid">
                <h2 class="content-subhead">Últimos Eventos</h2>
                <table class="pure-table pure-table-horizontal pure-table-striped">
                    <tr>
                        <td>
                            <p>11/11/13</p>
                        </td>
                        <td>
                            <p>Mariana López - Agregó Paciente <a href="#">11741714</a></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>11/11/13</p>
                        </td>
                        <td>
                            <p>Mariana López - Agregó muestra <a href="#">1234</a> a Paciente <a href="#">11741714</a></p>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="pure-u-1-2">
            <div class="panel-grid">
            <h2 class="content-subhead">Pendientes de autorización</h2>
                <table class="pure-table pure-table-horizontal pure-table-striped">
                    <tr>
                        <td>Autorizar muestra <a href="#">12345</a> para Paciente <a href="#">84231</a></td>
                        <td>
                            <asp:Button ID="Button1" CssClass="pure-button" runat="server" Text="&#10004;" Width="4em" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" CssClass="pure-button" runat="server" Text="&#x2717;" Width="4em" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

