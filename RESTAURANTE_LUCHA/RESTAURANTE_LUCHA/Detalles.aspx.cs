using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detalles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["DUI"] != null)
        {
            GUARDO.Text = Request.Params["DUI"];
            NAME.Text = Request.Params["USER"];
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void eliminar_Click(object sender, EventArgs e)
    {
        LinkButton eliminar = (LinkButton)sender;
        int ID = Convert.ToInt32(eliminar.CommandArgument);
        PEDIDOBLL.Borrar(ID);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx?DUI=" + GUARDO.Text + "&USER=" + NAME.Text);

    }
}