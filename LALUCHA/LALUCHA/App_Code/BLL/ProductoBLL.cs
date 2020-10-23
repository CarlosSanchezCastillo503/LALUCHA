using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ProductoBLL
/// </summary>
public class ProductoBLL
{
    public ProductoBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<PRODUCTO> MostrarProductos()
    {
        List<PRODUCTO> Lista = new List<PRODUCTO>();
        PRODUCTODSTableAdapters.ProductoTableAdapter adaptable = new PRODUCTODSTableAdapters.ProductoTableAdapter();
        PRODUCTODS.ProductoDataTable TABLA = adaptable.PRODUCTOS();
        foreach (PRODUCTODS.ProductoRow fila in TABLA)
        {
            Lista.Add(PRODUCTODTO(fila));
        }
        return Lista;
    }
    public static PRODUCTO MostrarID(int id)
    {
        PRODUCTODSTableAdapters.ProductoTableAdapter adaptador = new PRODUCTODSTableAdapters.ProductoTableAdapter();
        PRODUCTODS.ProductoDataTable tabla = adaptador.ID_PRODUCTO(id);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }

        return PRODUCTODTO(tabla[0]);


    }


    private static PRODUCTO PRODUCTODTO(PRODUCTODS.ProductoRow fila)
    {
       PRODUCTO objP = new PRODUCTO();
        objP.ID = fila.ID;
        objP.NOMBRE = fila.Nombre;
        objP.IDTIPO = fila.IdTipoProducto;
        objP.PRECIO = fila.Precio;
        objP.DESCRIPCION = fila.Descripcion;
        objP.Imagen = fila.imagen;

        return objP;
    }
}