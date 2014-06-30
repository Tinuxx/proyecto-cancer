<%@ Page Title="Administración de Variables" Language="C#" MasterPageFile="~/VistaPrincipal.master" AutoEventWireup="true" CodeFile="AdministracionVariables.aspx.cs" Inherits="AdministracionVariables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <h2 class="content-subhead">Administración de Variables</h2>
    <div class="pure-g">
        <div class="pure-u-1 pure-form">
            <asp:GridView ID="gridDrogas"  runat="server">
                
            </asp:GridView>
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

