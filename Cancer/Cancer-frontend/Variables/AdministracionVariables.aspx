<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdministracionVariables.aspx.cs" Inherits="Cancer_frontend.Variables.AdministracionVariables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="content-subhead">Administración de Variables</h2>
    <div class="pure-g">
        <div class="pure-u-1 pure-form">
            <fieldset>
                <legend>Detalles de las drogas</legend>
                <!--OnRowDataBound="gridDrogas_RowDataBound"-->
                <asp:GridView ID="gridDrogas" AutoGenerateColumns="False" runat="server" DataKeyNames="Id" AllowSorting="True" AllowPaging="True"
                    OnRowCancelingEdit="gridDrogas_RowCancelingEdit"
                    OnRowEditing="gridDrogas_RowEditing"
                    OnRowUpdating="gridDrogas_RowUpdating"
                    OnRowDeleting="gridDrogas_RowDeleting"
                    OnPageIndexChanging="gridDrogas_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="100% TDC">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Eval("PorcentajeTDC") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTDC" runat="server" Text='<%# Eval("PorcentajeTDC") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Solución madre">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Eval("StockSolution") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStockSolution" runat="server" Text='<%# Eval("StockSolution") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Almacenamiento / Estabilidad">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Eval("StorageAndStability") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStorageAndStability" runat="server" Text='<%# Eval("StorageAndStability") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Casa Comercial">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Eval("CasaComercial") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCasaComercial" runat="server" Text='<%# Eval("CasaComercial") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="false">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEditar" runat="server" CommandName="Edit" Text="Editar" ></asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton ID="btnActualizar" runat="server" CommandName="Update" Text="Actualizar" ></asp:LinkButton>
                                <asp:LinkButton ID="btnCancelarEditar" runat="server" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="false">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEliminar" runat="server" CommandName="Delete" Text="Eliminar" ></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </fieldset>
            <br />
            <div class="pure-form">
                <fieldset>
                    <asp:TextBox ID="txtNombreNuevaDroga" CssClass="pure-input-1-3" placeholder="Nombre de nueva droga" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="btnAgregarDroga" CssClass="pure-button" Text="&lt;i class=&quot;fa fa-plus&quot;&gt;&lt;/i&gt;" runat="server"></asp:LinkButton>
                </fieldset>
            </div>
        </div>
        <div class="pure-u-1">
            <h2 class="content-subhead">Variables sensibilidad:</h2>
            <table class="pure-table pure-table-horizontal pure-table-striped" style="width: 100%">
                <tbody>
                    <tr>
                        <td><strong>Sensibilidad fuerte:</strong></td>
                        <td>
                            <asp:DropDownList ID="drpStrongSensVar1" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="drpStrongSensComp1" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStrongSensValue1" runat="server" Width="60px"></asp:TextBox>
                        </td>
                        <td>% TDC AND
                        </td>
                        <td>
                            <asp:DropDownList ID="drpStrongSensVar2" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="drpStrongSensComp2" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStrongSensValue2" runat="server" Width="60px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Sensibilidad parcial:</strong></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox></td>
                        <td>% TDC AND</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="60px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><strong>Sensibilidad débil:</strong></td>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="60px"></asp:TextBox></td>
                        <td>% TDC AND</td>
                        <td>
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="DropDownList8" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="60px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><strong>Resistencia:</strong></td>
                        <td>
                            <asp:DropDownList ID="DropDownList9" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="DropDownList10" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="60px"></asp:TextBox></td>
                        <td>% TDC AND</td>
                        <td>
                            <asp:DropDownList ID="DropDownList11" runat="server">
                                <asp:ListItem Text="IC90"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="DropDownList12" runat="server">
                                <asp:ListItem Text="&gt;="></asp:ListItem>
                                <asp:ListItem Text="="></asp:ListItem>
                                <asp:ListItem Text="&lt;="></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Width="60px"></asp:TextBox></td>
                    </tr>
                </tbody>
            </table>
            <br />
        </div>
    </div>
    <div class="pure-g wrapperBotones">
        <div class="pure-u-1-4">
        </div>
        <div class="pure-u-1-4">
            <asp:Button ID="btnGuardarVariables" CssClass="pure-button pure-button-primary" Text="Guardar" runat="server" />
        </div>
        <div class="pure-u-1-4">
            <asp:Button ID="btnCancelar" CssClass="pure-button" Text="Cancelar" runat="server" />
        </div>
        <div class="pure-u-1-4">
        </div>
    </div>
</asp:Content>
