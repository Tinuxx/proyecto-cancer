<%@ Page Title="Editar Paciente" Language="C#" MasterPageFile="~/VistaPrincipal.master" AutoEventWireup="true" CodeFile="EditarPaciente.aspx.cs" Inherits="paciente_EditarPaciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="../Content/AgregarPaciente.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="pure-g">
        <div class="pure-u-1-2 pure-form pure-form-stacked">
            <div class="panel-grid">
                <h2 class="content-subhead">Editar paciente
                </h2>
                <fieldset>
                    <legend></legend>
                    <label for="MainContent_txtCedula">
                        Cédula:
                        <asp:TextBox ID="txtCedula" CssClass="pure-input-1 pure-" runat="server" TabIndex="1" ReadOnly="true"></asp:TextBox>
                    </label>
                    <label for="MainContent_txtNombre">
                        Nombre:
                        <asp:TextBox ID="txtNombre" CssClass="pure-input-1" runat="server" TabIndex="2" ReadOnly="true"></asp:TextBox>
                    </label>
                    <label for="MainContent_txtEdad">
                        Edad:
                        <asp:TextBox ID="txtEdad" CssClass="pure-input-1" runat="server"  TabIndex="3" ReadOnly="true"></asp:TextBox>
                    </label>
                
                    <label>Género:</label>

                    <div class="pure-g">
                        <div class="pure-u-1-2">
                            <label for="MainContent_femenino" class="pure-radio label-padding">
                                <asp:RadioButton ID="femenino" GroupName="rdoGenero" runat="server" TabIndex="4" />
                                Femenino
                            </label>
                        </div>
                        <div class="pure-u-1-2">
                            <label for="MainContent_masculino" class="pure-radio label-padding">
                                <asp:RadioButton ID="masculino" GroupName="rdoGenero" runat="server" TabIndex="5" />
                                Masculino
                            </label>
                        </div>
                    </div>
                    <label for="MainContent_cldFechaIngreso">
                        Fecha de ingreso:
                        <asp:TextBox ID="txtFechaIngreso" CssClass="pure-input-1" runat="server" TabIndex="6" ReadOnly="true" type="date"></asp:TextBox>
                    </label>
                </fieldset>
            </div>
        </div>
        <div class="pure-u-1-2">
            <div class="panel-grid">
                <h2 class="content-subhead">Muestra</h2>
                <div id="wrapperFormMuestra" class="pure-form pure-form-stacked">
                    <fieldset>
                        <legend></legend>
                        <label for="MainContent_txtPeso">
                            Peso (gramos)
                            <asp:TextBox ID="txtPeso" CssClass="pure-input-1" runat="server" TabIndex="7"></asp:TextBox>
                        </label>
                        <label for="MainContent_txtVolumen">
                            Volumen (mililitros)
                            <asp:TextBox ID="txtVolumen" CssClass="pure-input-1" runat="server" TabIndex="8"></asp:TextBox>
                        </label>
                        <label>Temperatura adecuada</label>
                        <div class="pure-g">
                            <div class="pure-u-1-2">
                                <label for="MainContent_tempSi" class="pure-radio label-padding">
                                    <asp:RadioButton ID="tempSi" GroupName="rdoTemperatura" runat="server" TabIndex="9" />
                                    Sí
                                </label>
                            </div>
                            <div class="pure-u-1-2">
                                <label for="MainContent_tempNo" class="pure-radio label-padding">
                                    <asp:RadioButton ID="tempNo" GroupName="rdoTemperatura" runat="server" TabIndex="10" />
                                    No
                                </label>
                            </div>
                        </div>
                        <label for="MainContent_txtObservaciones">
                            Observaciones
                            <asp:TextBox ID="txtObservaciones" TextMode="MultiLine" CssClass="pure-input-1" runat="server" Rows="3" TabIndex="11"></asp:TextBox>
                        </label>
                        <label for="MainContent_cldFechaLlegadaLab">
                            Fecha llegada al laboratorio
                            <input type="date" name="cldFechaLlegadaLab" class="pure-input-1" tabindex="12" />
                        </label>
                        <label for="MainContent_cldFechaIngreso">
                            Fecha ingreso
                            <input type="date" name="cldFechaIngreso" class="pure-input-1" tabindex="13" />
                        </label>
                        <label for="MainContent_drpTipoTumor">
                            Tipo de tumor
                            <asp:DropDownList ID="drpTipoTumor" CssClass="pure-input-1" runat="server" TabIndex="14">
                                <asp:ListItem Text="tipo1"></asp:ListItem>
                                <asp:ListItem Text="tipo2"></asp:ListItem>
                            </asp:DropDownList>
                        </label>
                        <label for="MainContent_txtLocalizacion">
                            Localización
                            <asp:TextBox ID="txtLocalizacion" CssClass="pure-input-1" runat="server" TabIndex="15"></asp:TextBox>
                        </label>
                    </fieldset>
                    <asp:Button ID="btnIncluirOtraMuestra" CssClass="pure-input-1 pure-button" runat="server" Text="Incluir otra muestra" TabIndex="16" />
                </div>
            </div>
        </div>
    </div>
    <div class="pure-g">
        <div class="pure-u-1">
            <br />
            <div class="pure-g wrapperBotones">
                <div class="pure-u-1-4">
                </div>
                <div class="pure-u-1-4">
                    <asp:Button ID="btnGuardar" CssClass="pure-button pure-button-primary" runat="server" Text="Guardar" TabIndex="18" />
                </div>
                <div class="pure-u-1-4">
                    <asp:Button ID="btnCancelar" CssClass="pure-button" runat="server" Text="Cancelar" TabIndex="19" />
                </div>
                <div class="pure-u-1-4">
                </div>
            </div>
        </div>
    </div>
</asp:Content>

