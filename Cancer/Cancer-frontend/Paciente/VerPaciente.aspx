<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerPaciente.aspx.cs" Inherits="Cancer_frontend.Pacientes.VerPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinkButton ID="btnRegresarDetallePaciente" CssClass="pure-button" Text="&lt;i class=&quot;fa fa-chevron-left&quot;&gt;&lt;/i&gt; Atrás" OnClick="btnRegresarDetallePaciente_Click" runat="server"></asp:LinkButton>
    <asp:Literal ID="ltrEncabezadoDetallePaciente" runat="server"></asp:Literal>
    <div class="pure-g">
        <div class="pure-u-1-2">
            <div class="panel-grid">
                <h3>Muestras</h3>
                <asp:LinkButton ID="btnAgregarMuestraPaciente" Text="&lt;i class=&quot;fa fa-plus&quot;&gt;&lt;/i&gt; Agregar" CssClass="pure-button pure-button-primary" runat="server"></asp:LinkButton>
                <asp:ListView ID="lstMuestras" runat="server">
                </asp:ListView>
            </div>
        </div>
        <div class="pure-u-1-2">
            <div class="panel-grid">
                <h3>Seguimientos</h3>
                <asp:LinkButton ID="btnAgregarSeguimientoPaciente" Text="&lt;i class=&quot;fa fa-plus&quot;&gt;&lt;/i&gt; Agregar" CssClass="pure-button pure-button-primary" runat="server"></asp:LinkButton>
                <asp:ListView ID="lstSeguimientos" runat="server">
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
