<%@ Page Title="Agregar Ensayo in Vitro" Language="C#" MasterPageFile="~/VistaDetalle.master" AutoEventWireup="true" CodeFile="AgregarEnsayoInVitro.aspx.cs" Inherits="paciente_invitro_AgregarEnsayoInVitro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../Content/ProcesamientoMuestras.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Agregar Ensayo in Vitro</h2>
    <div class="pure-g">
        <div class="pure-u-1-2 pure-form pure-form-stacked">
            <fieldset>
                <legend></legend>
                <label for="<%= txtLoteKit.ClientID%>">
                    Lote de Kit:
                    <asp:TextBox ID="txtLoteKit" CssClass="pure-input-1" runat="server"></asp:TextBox>
                </label>
                
                <label for="<%= txtConcentracionCelulas.ClientID%>">
                    Concentración células sembradas:
                    <asp:TextBox ID="txtConcentracionCelulas" CssClass="pure-input-1" runat="server"></asp:TextBox>
                </label>
                <hr />
                <div class="pure-control-group pure-g">
                    <div class="pure-u-1-2">
                        <label for="<%= rdoCongelaronExtractos.ClientID %>">Congelaron extractos:</label>
                    </div>
                    <div class="pure-u-1-2">
                        <asp:RadioButtonList ID="rdoCongelaronExtractos" CssClass="radioButtonList pure-radio" RepeatLayout="Flow" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text="Sí"></asp:ListItem>
                            <asp:ListItem Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <button class="pure-button pure-input-1"><i class="fa fa-plus"></i> Agregar placa</button>
            </fieldset>
        </div>
        <div class="pure-u-1-2">
            <div class="paddingGrid">
                <h3>Hora procesada:</h3>
                <asp:Label ID="lblHoraProcesamiento" runat="server"></asp:Label>
                <h3>Días duración ensayo:</h3>
                <asp:Label ID="lblDiasDuracionEnsayo" runat="server"></asp:Label>
                <h3>Ingresada por:</h3>
                <asp:Label ID="lblIngresadaPor" runat="server"></asp:Label>
                <h3>Autorizada por:</h3>
                <asp:Label ID="lblAutorizadaPor" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

