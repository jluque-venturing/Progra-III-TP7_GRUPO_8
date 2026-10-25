using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TP7_GRUPO_8
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        private const string consultaSucursales = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, URL_Imagen_Sucursal FROM Sucursal";
        private DataTable CrearTablaSeleccionados()
        {
            DataTable tabla = new DataTable();

            tabla.Columns.Add("Id_Sucursal", typeof(int));
            tabla.Columns.Add("Nombre", typeof(string));
            tabla.Columns.Add("Descripcion", typeof(string));

            return tabla;
        }

        private void AgregarFila(DataTable tabla, int id, string nombre, string descripcion)
        {
            tabla.Rows.Add(id, nombre, descripcion);
        }

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

                DataTable tabla;

                if (Session["SucursalesSeleccionadas"] == null)
                {
                    tabla = CrearTablaSeleccionados();
                }
                else
                {
                    tabla = (DataTable)Session["SucursalesSeleccionadas"];
                }

                int id = Convert.ToInt32(datos[0]);
                string nombre = datos[1];
                string descripcion = datos[2];

                Session["SucursalesSeleccionadas"] = tabla;
            }



        }
    }
}