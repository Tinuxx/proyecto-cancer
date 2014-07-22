<%@ Page Title="Procesamiento de Muestra" Language="C#" MasterPageFile="~/VistaDetalle.master" AutoEventWireup="true" CodeFile="AgregarProcesamientoMuestra.aspx.cs" Inherits="paciente_muestra_ProcesamientoMuestra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../Content/ProcesamientoMuestras.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Procesamiento de Muestra</h2>
    <div class="pure-g">
        <div class="pure-u-1-2 pure-form pure-form-stacked">
            <fieldset>
                <legend></legend>
                <label for="<%= txtConsistencia.ClientID %>">
                    Consistencia
                    <asp:TextBox ID="txtConsistencia" CssClass="pure-input-1" runat="server"></asp:TextBox>
                </label>
                <label for="<%= txtConteoCelulasVivas.ClientID %>">
                    Conteo células vivas
                    <asp:TextBox ID="txtConteoCelulasVivas" CssClass="pure-input-1" runat="server"></asp:TextBox>
                </label>
                <label for="<%= txtPorcentajeViabilidad.ClientID %>">
                    Porcentaje de viabilidad
                    <asp:TextBox ID="txtPorcentajeViabilidad" CssClass="pure-input-1" runat="server"></asp:TextBox>
                </label>
                <hr />
                <div class="pure-g">
                    <div class="pure-u-1-2">
                        <label>Contaminación</label>
                    </div>
                    <div class="pure-u-1-2 centrarRadioButtons">
                        <asp:RadioButtonList ID="rdoContaminación" runat="server"  CssClass="pure-radio radioButtonList" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Sí"></asp:ListItem>
                            <asp:ListItem Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="pure-g">
                    <div class="pure-u-1-2">
                        <label>Congelada antes de procesar</label>
                    </div>
                    <div class="pure-u-1-2 centrarRadioButtons">
                        <asp:RadioButtonList ID="rdoCongeladaAntesProceso" runat="server"  CssClass="pure-radio radioButtonList" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Sí"></asp:ListItem>
                            <asp:ListItem Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="pure-g">
                    <div class="pure-u-1-2">
                        <label>Requirió separación por Ficoll</label>
                    </div>
                    <div class="pure-u-1-2 centrarRadioButtons">
                        <asp:RadioButtonList ID="rdoSeparacionFicoll" runat="server"  CssClass="pure-radio radioButtonList" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Sí"></asp:ListItem>
                            <asp:ListItem Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="pure-g">
                    <div class="pure-u-1-2">
                        <label>Muestra apropiada</label>
                    </div>
                    <div class="pure-u-1-2 centrarRadioButtons">
                        <asp:RadioButtonList ID="rdoMuestraApropiada" runat="server"  CssClass="pure-radio radioButtonList" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Sí"></asp:ListItem>
                            <asp:ListItem Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <hr />
                <label>
                    Observaciones
                    <asp:TextBox ID="txtObservaciones" CssClass="pure-input-1" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                </label>
            </fieldset>
        </div>
        <div class="pure-u-1-2">
            <div class="paddingGrid">
                <h3>Hora procesada:</h3>
                <asp:Label ID="lblHoraProcesamiento" runat="server"></asp:Label>
                <h3>Ingresada por:</h3>
                <asp:Label ID="lblIngresadaPor" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>