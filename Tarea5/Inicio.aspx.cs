using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea5
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bsiguiente_Click(object sender, EventArgs e)
        {
            Persona.cedula = Tcedula.Text;
            Persona.nombre = Tnombre.Text;

            if (RF.Checked)
            {
                Persona.genero = "F";
            }
            else
            {
                Persona.genero = "M";
            }

            Response.Redirect("r1.aspx");
        }
    }
}