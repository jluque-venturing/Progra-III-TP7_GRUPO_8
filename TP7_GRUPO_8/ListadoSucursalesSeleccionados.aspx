<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursalesSeleccionados.aspx.cs" Inherits="TP7_GRUPO_8.ListadoSucursalesSeleccionados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mostrar sucursales seleccionadas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:HyperLink ID="hlListadoSucursales"
                runat="server"
                NavigateUrl="~/SeleccionarSucursales.aspx"
                Text="Listado de sucursales">
            </asp:HyperLink>

            &nbsp;&nbsp;&nbsp;

            <asp:HyperLink ID="hlMostrarSucursalesSeleccionadas"
                runat="server"
                NavigateUrl="~/ListadoSucursalesSeleccionados.aspx"
                Text="Mostrar sucursales seleccionadas">
            </asp:HyperLink>

            <h2>Mostrar sucursales seleccionadas</h2>

            <asp:GridView ID="gvSucursales"
                runat="server"
                AutoGenerateColumns="False">

                <Columns>
                    <asp:BoundField
                        DataField="Id_Sucursal"
                        HeaderText="ID_SUCURSAL" />

                    <asp:BoundField
                        DataField="Nombre"
                        HeaderText="NOMBRE" />

                    <asp:BoundField
                        DataField="Descripcion"
                        HeaderText="DESCRIPCION" />
                </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>