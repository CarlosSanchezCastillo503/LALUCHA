using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inicio_sesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void INICIAR_Click(object sender, EventArgs e)
    {
        int dui = int.Parse(DUI.Text);
        String User = USERNAME.Text;
        String contraseña = Encriptar.Encripta(Contraseña.Text);
        String Email = EMAIL.Text;
        USUARIO objUser = USUARIOBLL.LOGIN(dui,contraseña, User,Email);
        if (objUser == null)
        {
            return;
        }
        else
        {
            Response.Redirect("Menu.aspx?DUI=" + DUI.Text+"&USER="+User);
        }
    }
}