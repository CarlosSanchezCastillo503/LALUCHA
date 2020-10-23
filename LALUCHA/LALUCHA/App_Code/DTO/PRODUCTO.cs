using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de PRODUCTO
/// </summary>
public class PRODUCTO
{
    public PRODUCTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID { get; set; }
    public String NOMBRE { get; set; }
    public int IDTIPO { get; set; }
    public decimal PRECIO { get; set; }
    public string DESCRIPCION { get; set; }
    public String Imagen { get; set; }

}