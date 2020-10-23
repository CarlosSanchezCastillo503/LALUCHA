using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String Email;
        String Password;
        String US;
        int Dui;
        US = USER.Text;
        Dui =Int32.Parse(DUI.Text);
        Password=Encriptar.Encripta(CONTRA.Text);
        Email = EMAIL.Text;
        try
        {
            USUARIOBLL.Ingresar(Dui, US, Password, Email);
            Response.Redirect("~/index.aspx");
        }
        catch (Exception ex)
        {

        }
    }
}