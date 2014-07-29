<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuscarPaciente.aspx.cs" Inherits="Cancer_frontend.Pacientes.BuscarPaciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pure-g">
        <div class="pure-u-1 pure-form pure-form-stacked">
            <fieldset>
                <legend>Introduzca su término de búsqueda</legend>
                <div class="pure-g">
                    <div class="pure-u-3-5">
                        <div class="panel-grid">
                            <asp:TextBox ID="txtTerminoBusqueda" CssClass="pure-input-1" runat="server" OnTextChanged="dispararBusqueda"></asp:TextBox>
                        </div>
                    </div>
                    <div class="pure-u-2-5">
                        <div class="panel-grid">
                            <asp:LinkButton ID="btnBuscar" CssClass="pure-button pure-button-primary" runat="server" OnClick="dispararBusqueda" Text="&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt; Buscar"></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="pure-g">
        <div class="pure-u-1">
            <asp:UpdatePanel ID="updBusquedaRapida" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="txtTerminoBusqueda" />
                </Triggers>
                <ContentTemplate>
                    <asp:MultiView ActiveViewIndex="0" ID="mtvPanelBusqueda" runat="server">
                        <asp:View ID="viewBusquedaRapida" runat="server">
                            <div class="pure-menu pure-menu-open pure-menu-horizontal">
                                <ul>
                                    <li id="liRecientes" class="pure-menu-selected" runat="server">
                                        <asp:LinkButton ID="btnPacientesRecientes" runat="server" Text="Recientes" OnClick="btnPacientesRecientes_Click"></asp:LinkButton></li>
                                    <li id="liConMuestras" runat="server">
                                        <asp:LinkButton ID="btnConMuestras" runat="server" Text="Con muestras" OnClick="btnConMuestras_Click"></asp:LinkButton></li>
                                    <li id="liConCitometria" runat="server">
                                        <asp:LinkButton ID="btnConCitometria" runat="server" Text="Con citometría" OnClick="btnConCitometria_Click"></asp:LinkButton></li>
                                    <li id="liConTerapia" runat="server">
                                        <asp:LinkButton ID="btnConTerapia" runat="server" Text="Con terapia" OnClick="btnConTerapia_Click"></asp:LinkButton></li>
                                    <li id="liConSeguimiento" runat="server">
                                        <asp:LinkButton ID="btnConSeguimiento" runat="server" Text="Con seguimiento" OnClick="btnConSeguimiento_Click"></asp:LinkButton></li>
                                </ul>
                            </div>
                            <div>
                                <asp:MultiView ID="mtvBusquedaRapida" ActiveViewIndex="0" runat="server">
                                    <asp:View ID="viewPacientesRecientes" runat="server">
                                        <div>
                                            <h2 class="content-subhead">No hay pacientes recientes</h2>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="viewPacientesConMuestras" runat="server">
                                        <div>
                                            <h2 class="content-subhead">No hay pacientes con muestras</h2>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="viewPacientesConCitometria" runat="server">
                                        <div>
                                            <h2 class="content-subhead">No hay pacientes con citometría</h2>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="viewPacientesConTerapia" runat="server">
                                        <div>
                                            <h2 class="content-subhead">No hay pacientes con terapia</h2>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="viewPacientesConSeguimiento" runat="server">
                                        <div>
                                            <h2 class="content-subhead">No hay pacientes con seguimiento</h2>
                                        </div>
                                    </asp:View>
                                </asp:MultiView>
                            </div>
                        </asp:View>
                        <asp:View ID="viewResultadosBusquedaHilera" runat="server">
                            <div class="pure-g">
                                <div class="pure-u-1">
                                    <asp:LinkButton ID="btnVolverBusqueda" CssClass="pure-button" Text="Volver" runat="server" OnClick="btnVolverBusqueda_Click"></asp:LinkButton>
                                </div>
                            </div>
                            <br />
                            <div class="pure-g">
                                <div class="pure-u-1">
                                    <asp:UpdatePanel ID="updResultadosBusqueda" runat="server">
                                        <ContentTemplate>
                                            <asp:Table ID="tblResultadosBusqueda" CssClass="pure-table pure-table-horizontal pure-table-striped" Width="100%" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell ColumnSpan="2">Resultados</asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell HorizontalAlign="Left">Cédula</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell HorizontalAlign="Left">Nombre</asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>1-1021-0451</asp:TableCell>
                                                    <asp:TableCell>Roberto Gómez Bolaños</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>4-0271-0751</asp:TableCell>
                                                    <asp:TableCell>Rebeca Obando Vásquez</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </asp:View>
                    </asp:MultiView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
