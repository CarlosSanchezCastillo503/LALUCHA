using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de PEDIDOBLL
/// </summary>
public class PEDIDOBLL
{
    public PEDIDOBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<PEDIDO> MostrarTodo()
    {
        List<PEDIDO> Listapedidos = new List<PEDIDO>();
        PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter adaptador2 = new PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter();
        PEDIDOSDS.PEDIDOS_USUARIOSDataTable tabla = adaptador2.PEDIDOS();

        foreach (PEDIDOSDS.PEDIDOS_USUARIOSRow filaw in tabla)
        {
            Listapedidos.Add(PEDIDOSDTO(filaw));
        }

        return Listapedidos;
    }
    public static void Ingresar(int DUI,int ID_PRODUCTO,String Detalle,String Nombre,String Desscripcion)
    {
        PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter adaptador2 = new PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter();
        adaptador2.Insert(DUI,ID_PRODUCTO,Detalle,Nombre,Desscripcion);
    }
    public static PEDIDO MostrarID(int id)
    {
        PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter adaptador2 = new PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter();
        PEDIDOSDS.PEDIDOS_USUARIOSDataTable tabla = adaptador2.MOSTRARIDPEDIDO(id);

        if (tabla.Rows.Count == 0)
        {
            return null;
        }

        return PEDIDOSDTO(tabla[0]);


    }
    public static void Borrar(int ID)
    {
        PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter adaptador2 = new PEDIDOSDSTableAdapters.PEDIDOS_USUARIOSTableAdapter();
        adaptador2.Delete(ID);
    }

    private static PEDIDO PEDIDOSDTO(PEDIDOSDS.PEDIDOS_USUARIOSRow filaw)
    {
        PEDIDO objUS = new PEDIDO();
        objUS.ID = filaw.ID;
        objUS.DUI = filaw.DUI_TRANSACTOR;
        objUS.ID_PRODUCTO = filaw.ID_PRODUCTO;
        objUS.Detalle = filaw.DETALLE;
        objUS.Descripcion = filaw.DESCRIPCION;
        return objUS;
    }
}