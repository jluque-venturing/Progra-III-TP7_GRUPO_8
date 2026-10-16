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
                lvSucursales.DataSource = new Conexion().ObtenerTabla(consultaSucursales);
                lvSucursales.DataBind();
            }
        }
    }
}