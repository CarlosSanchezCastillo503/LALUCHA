using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["DUI"] != null)
        {
            GUARDO.Text = Request.Params["DUI"];
            MYNAME.Text = Request.Params["USER"];
            
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int DUI = 0;
        int ID_PRO = 0;
        String Detalle = MYNAME.Text;
        String Nombre = "";
        String Descripcion = "";
        if (e.CommandName == "Seleccionar")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            ID_PRO = Int32.Parse(((Label)this.DataList1.SelectedItem.FindControl("IDLabel")).Text);
            Nombre = ((Label)this.DataList1.SelectedItem.FindControl("NombreLabel")).Text;
            Descripcion = ((Label)this.DataList1.SelectedItem.FindControl("DescripcionLabel")).Text;
            DUI = Int32.Parse(GUARDO.Text);
            PEDIDOBLL.Ingresar(DUI, ID_PRO, Detalle, Nombre, Descripcion);
            ((Label)this.DataList1.SelectedItem.FindControl("Comprado")).Text = "COMPRA EXITOSA";
           

        }

    }

    protected void DETALLE_Click(object sender, EventArgs e)
    {
        Response.Redirect("Detalles.aspx?DUI=" + GUARDO.Text+"&USER="+MYNAME.Text);
        

    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int DUI = 0;
        int ID_PRO = 0;
        String Detalle = MYNAME.Text;
        String Nombre = "";
        String Descripcion = "";
        if (e.CommandName == "Seleccionar")
        {
            DataList2.SelectedIndex = e.Item.ItemIndex;
            ID_PRO = Int32.Parse(((Label)this.DataList2.SelectedItem.FindControl("IDLabel")).Text);
            Nombre = ((Label)this.DataList2.SelectedItem.FindControl("NombreLabel")).Text;
            Descripcion = ((Label)this.DataList2.SelectedItem.FindControl("DescripcionLabel")).Text;
            DUI = Int32.Parse(GUARDO.Text);
            PEDIDOBLL.Ingresar(DUI, ID_PRO, Detalle, Nombre, Descripcion);
            ((Label)this.DataList2.SelectedItem.FindControl("Comprado")).Text = "COMPRA EXITOSA";
        }
    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int DUI = 0;
        int ID_PRO = 0;
        String Detalle = MYNAME.Text;
        String Nombre = "";
        String Descripcion = "";
        if (e.CommandName == "Seleccionar")
        {
            DataList3.SelectedIndex = e.Item.ItemIndex;
            ID_PRO = Int32.Parse(((Label)this.DataList3.SelectedItem.FindControl("IDLabel")).Text);
            Nombre = ((Label)this.DataList3.SelectedItem.FindControl("NombreLabel")).Text;
            Descripcion = ((Label)this.DataList3.SelectedItem.FindControl("DescripcionLabel")).Text;
            DUI = Int32.Parse(GUARDO.Text);
            PEDIDOBLL.Ingresar(DUI, ID_PRO, Detalle, Nombre, Descripcion);
            ((Label)this.DataList3.SelectedItem.FindControl("Comprado")).Text = "COMPRA EXITOSA";
        }
    }

    protected void SIGUIENTE_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pagos.aspx?DUI=" + GUARDO.Text+"&NAME="+MYNAME.Text);

    }
}