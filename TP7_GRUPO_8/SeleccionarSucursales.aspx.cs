using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP7_GRUPO_8
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        private const string consultaSucursales = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, URL_Imagen_Sucursal FROM Sucursal";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarSucursales();
            }
        }

        private void CargarSucursales()
        {
            lvSucursales.DataSource = new Conexion().ObtenerTabla(consultaSucursales);
            lvSucursales.DataBind();
        }

        protected void lvSucursales_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            DataPager1.SetPageProperties(
            e.StartRowIndex,
            e.MaximumRows, false);

            CargarSucursales();
        }

        protected void lvSucursales_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Seleccionar")
            {
                string[] datos = e.CommandArgument.ToString().Split('|');
            }
        }
    }
}