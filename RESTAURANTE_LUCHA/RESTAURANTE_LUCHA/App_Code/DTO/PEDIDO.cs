using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de PEDIDO
/// </summary>
public class PEDIDO
{
    public PEDIDO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID { get; set; }
    public int DUI { get; set; }
    public int ID_PRODUCTO { get; set; }
    public String Detalle { get; set; }
    public String Nombre { get; set; }
    public String Descripcion { get; set; }

}