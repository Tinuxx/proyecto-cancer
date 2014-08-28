<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarPaciente.aspx.cs" Inherits="Cancer_frontend.Pacientes.AgregarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="wrapperMain" class="pure-g">
        <div class="pure-u-1-2 pure-form pure-form-stacked">
            <div class="panel-grid">
                <h2 class="content-subhead">Agregar paciente
                </h2>
                <fieldset>
                    <legend></legend>
                    <label for="MainContent_txtCedula">
                        Cédula:
                        <asp:TextBox ID="txtCedula" CssClass="pure-input-1" runat="server" TabIndex="1" required></asp:TextBox>
                    </label>
                    <label for="MainContent_txtNombre">
                        Nombre:
                        <asp:TextBox ID="txtNombre" CssClass="pure-input-1" runat="server" TabIndex="2" required></asp:TextBox>
                    </label>
                    <label for="MainContent_txtEdad">
                        Edad:
                        <asp:TextBox ID="txtEdad" CssClass="pure-input-1" runat="server"  TabIndex="3" required></asp:TextBox>
                    </label>
                    <asp:RegularExpressionValidator ID="regexpvalEdad" Display="Dynamic" ControlToValidate="txtEdad" runat="server" ErrorMessage="<i class=&quot;fa fa-warning&quot;></i> Sólo se admiten números en el campo de edad" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqvalEdad" runat="server" Display="Dynamic" ErrorMessage="<i class=&quot;fa fa-warning&quot;></i> Ingrese la edad del paciente" ControlToValidate="txtEdad"></asp:RequiredFieldValidator>

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
                        <asp:TextBox ID="txtFechaIngreso" CssClass="pure-input-1" runat="server" TabIndex="6" type="date" required></asp:TextBox>
                    </label>
                </fieldset>
            </div>
        </div>
        <div id="wrapperIncluirMuestra" class="pure-u-1-2">
            <div class="panel-grid">
                <asp:Button ID="btnIncluirMuestra" CssClass="pure-button" runat="server" Text="Incluir muestra" OnClick="btnIncluirMuestra_Click" Style="margin: 50px 0 20px 0;" TabIndex="7" />
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
                    <asp:Button ID="btnGuardar" CssClass="pure-button pure-button-primary" runat="server" Text="Guardar" TabIndex="8" />
                </div>
                <div class="pure-u-1-4">
                    <asp:Button ID="btnCancelar" CssClass="pure-button" runat="server" Text="Cancelar" TabIndex="9" />
                </div>
                <div class="pure-u-1-4">
                </div>
            </div>
        </div>
    </div>

    <!--
    <div id="confirmacionAdicionMuestra" title="¡Atención!">
        <p><i class="fa fa-warning fa-2x fa-border"></i>Al agregar una muestra, los cambios en el paciente serán permantentes. ¿Desea continuar?</p>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#confirmacionAdicionMuestra').dialog({
                autoOpen: false,
                resizable: false,
                modal: true,
                buttons: {
                    "Sí, agregar": function () {
                        $(this).dialog("close");
                        <%=//Page.ClientScript.GetPostBackEventReference(btnIncluirMuestra,"")%>;
                    },
                    "No, volver": function () {
                        $(this).dialog("close");
                        return false;
                    }
                }
            })

            $('#<%//=btnIncluirMuestra.ClientID%>').click(function (e) {
                e.preventDefault();
                if (Page_ClientValidate()) {
                    $('#confirmacionAdicionMuestra').dialog('open');
                }
            });
        });
    </script>
    -->
</asp:Content>
