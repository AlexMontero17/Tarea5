using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea5
{
    public partial class r3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void Biniciar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EncuestaUH2ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select Respuesta.id, Persona.nombre, Respuesta.r1, Respuesta.r2, Respuesta.r3, Respuesta.r4, Respuesta.r5, Respuesta.r6, Respuesta.r7, Respuesta.r8, Respuesta.r9 from Respuesta inner join Persona on Respuesta.cedulaR = Persona.cedulaP"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }


        protected void salvar()
        {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["EncuestaUH2ConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO Persona(cedulaP, nombre, genero) VALUES('" + Persona.cedula + "', '" + Persona.nombre + "', '" + Persona.genero + "',)", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                conexion.Open();
                comando = new SqlCommand(" INSERT INTO Respuesta VALUES('" + Persona.cedula + "', '" + Persona.r1 + "', '" + Persona.r2 + "', '" + Persona.r3 + "',)", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
            

            
         
            LlenarGrid();
        }


        protected void Salvar_Click(object sender, EventArgs e)
        {
            Persona.r3 = DropDownList1.SelectedValue;
            Label1.Text = "Cédula: " + Persona.cedula + "Nombre: " + Persona.nombre + "Género: " + Persona.genero + "R1: " + Persona.r1 + "R2: " + Persona.r2 + "R3: " + Persona.r3;
            salvar();         
            Response.Redirect("r3.aspx");
        }
    }
}