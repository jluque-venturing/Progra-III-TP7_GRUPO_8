using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_8
{
    public class Conexion
    {
        private string cadenaConexion = @"Data Source=.\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        public string CadenaConexion
        {
            get
            {
                return cadenaConexion;
            }

        }
        public DataTable ObtenerTabla(string consulta)
        {
            SqlConnection conexion =
                new SqlConnection(cadenaConexion);

            SqlDataAdapter adaptador =
                new SqlDataAdapter(consulta, conexion);

            DataSet ds = new DataSet();

            adaptador.Fill(ds, "Tabla");

            return ds.Tables["Tabla"];
        }

    }
}