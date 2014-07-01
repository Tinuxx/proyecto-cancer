<%@ Page Title="Agregar Tratamiento" Language="C#" MasterPageFile="~/VistaDetalle.master" AutoEventWireup="true" CodeFile="AgregarTratamiento.aspx.cs" Inherits="paciente_invitro_placa_tratamiento_AgregarTratamiento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Placa # (Num placa)</h2>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="pure-g">
                <div class="pure-u-1 pure-form">
                    <asp:Table ID="tblDrogasTratamiento" CssClass="pure-table pure-table-horizontal" runat="server">
                        <asp:TableHeaderRow TableSection="TableHeader" runat="server">
                            <asp:TableHeaderCell Text="#" runat="server"></asp:TableHeaderCell>
                            <asp:TableHeaderCell Text="Droga" runat="server"></asp:TableHeaderCell>
                            <asp:TableHeaderCell Text="Casa comercial" runat="server"></asp:TableHeaderCell>
                            <asp:TableHeaderCell Text="Lote" runat="server"></asp:TableHeaderCell>
                            <asp:TableHeaderCell Text="Dosis" runat="server"></asp:TableHeaderCell>
                            <asp:TableHeaderCell runat="server"></asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableFooterRow runat="server">
                            <asp:TableCell Text="Agregar nueva:" runat="server"></asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:DropDownList ID="drpDrogas" runat="server">
                                    <asp:ListItem Text="Droga 1" Value="Droga 1"></asp:ListItem>
                                    <asp:ListItem Text="Droga 2" Value="Droga 1"></asp:ListItem>
                                </asp:DropDownList></asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:DropDownList ID="drpCasaComercial" runat="server">
                                    <asp:ListItem Text="Casa comercial 1" Value="Casa comercial 1"></asp:ListItem>
                                    <asp:ListItem Text="Casa comercial 2" Value="Casa comercial 1"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="txtLote" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="txtDosis" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell runat="server">
                                <button id="btnAgregarDroga" onserverclick="btnAgregarDroga_ServerClick" class="pure-button" runat="server">
                                    <i class="fa fa-plus-circle"></i> Agregar
                                </button>
                            </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                    <br />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

