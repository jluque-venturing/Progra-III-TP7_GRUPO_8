<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP7_GRUPO_8.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Seleccionar sucursales</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 306px;
        }
        .auto-style3 {
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" NavigateUrl="~/SeleccionarSucursales.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">
                        <asp:HyperLink ID="hlMostrarSucursalesSeleccionadas" runat="server" NavigateUrl="~/ListadoSucursalesSeleccionados.aspx">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
            </table>
            <table>
                <tr>
                   <td class="auto-style2">
    <asp:DataList ID="dlProvincias" runat="server"
        OnItemCommand="dlProvincias_ItemCommand">
        <ItemTemplate>
            <asp:Button ID="btnProvincia" runat="server"
                Text='<%# Eval("DescripcionProvincia") %>'
                CommandName="Filtrar"
                CommandArgument='<%# Eval("Id_Provincia") %>' />
        </ItemTemplate>
    </asp:DataList>
</td>
                     <td>   
                    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>

                    <asp:Button ID="btnBuscar" runat="server"
                    Text="Buscar"
                    OnClick="btnBuscar_Click" />

                         <br />
                        <br />
                        <asp:ListView ID="lvSucursales" runat="server" OnPagePropertiesChanging="lvSucursales_PagePropertiesChanging" OnItemCommand="lvSucursales_ItemCommand">
                            <LayoutTemplate>
                                <table>
                                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ibImagenSucursal" runat="server" ImageUrl='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("NombreSucursal") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescripcionSucursal") %>'></asp:Label>
                                        <br />
                                        <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar"
                                            CommandName="Seleccionar"
                                            CommandArgument='<%# Eval("Id_Sucursal") + "|" + Eval("NombreSucursal") + "|" + Eval("DescripcionSucursal") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">
                        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvSucursales" PageSize="2">
                            <Fields>
                                <asp:NumericPagerField />
                            </Fields>
                        </asp:DataPager>
                    </td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td class="auto-style3" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>