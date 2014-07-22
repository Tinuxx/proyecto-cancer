<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarCitometria.aspx.cs" Inherits="Cancer_frontend.Paciente.Citometria.AgregarCitometria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pure-g">
        <div class="pure-u-1-2 pure-form pure-form-aligned">
            <fieldset>
                <legend></legend>
                <table id="tablaReceptores" class="pure-table pure-table-bordered">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Porcentaje positivo</th>
                            <th>Porcentaje negativo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>Receptor 1</th>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Receptor 2</th>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Todos</th>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <div class="pure-control-group">
                    <label for="<%= txtNuevaCategoria.ClientID %>">Nueva categoría: </label>
                    <asp:TextBox ID="txtNuevaCategoria" runat="server"></asp:TextBox>
                </div>

                <div class="pure-control-group">
                    <label for="<%= txtObservaciones.ClientID %>">Observaciones:</label>
                    <asp:TextBox ID="txtObservaciones" runat="server"></asp:TextBox>
                </div>

                <div class="pure-control-group">
                    <label for="archivoASubir">Incluir arcivo:</label>
                    <asp:FileUpload ID="archivoASubir" runat="server" />
                </div>

            </fieldset>
        </div>
        <div class="pure-u-1-2">
            <div class="paddingGrid">
                <h3>Hora procesada:</h3>
                <asp:Label ID="lblHoraProcesamiento" runat="server"></asp:Label>
                <h3>Ingresada por:</h3>
                <asp:Label ID="lblIngresadaPor" runat="server"></asp:Label>
                <h3>Autorizada por:</h3>
                <asp:Label ID="lblAutorizadaPor" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
