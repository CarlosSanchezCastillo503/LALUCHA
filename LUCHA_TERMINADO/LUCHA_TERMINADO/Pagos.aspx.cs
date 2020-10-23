using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pagos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["DUI"] != null)
        {
            GUARDO.Text = Request.Params["DUI"];
            Label1.Text = Request.Params["NAME"];
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void Siguiente_Click(object sender, EventArgs e)
    {
        String Pago = DropDownList1.SelectedValue;
        Response.Redirect("Factura.aspx?DUI=" + GUARDO.Text + "&USER=" + Label1.Text+"&PAGO="+Pago);



    }
}