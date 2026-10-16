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
                    <td class="auto-style2" style="background-position: center center">&nbsp;</td>
                    <td style="background-position: center center">
                        <asp:ListView ID="lvSucursales" runat="server">
                            <LayoutTemplate>
                                <table>
                                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("NombreSucursal") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescripcionSucursal") %>'></asp:Label>
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