using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de USUARIOBLL
/// </summary>
public class USUARIOBLL
{
    public USUARIOBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<USUARIO> MostrarTodo()
    {
        List<USUARIO> ListaUsuarios = new List<USUARIO>();
        USUARIODTOTableAdapters.USUARIOTableAdapter adaptador2 = new USUARIODTOTableAdapters.USUARIOTableAdapter();
        USUARIODTO.USUARIODataTable tabla = adaptador2.DATAUSER();

        foreach (USUARIODTO.USUARIORow fila in tabla)
        {
            ListaUsuarios.Add(USERDTO(fila));
        }
        return ListaUsuarios;
    }
    public static void Ingresar(int ID, string user, string pass,String Email)
    {
        USUARIODTOTableAdapters.USUARIOTableAdapter adaptador2 = new USUARIODTOTableAdapters.USUARIOTableAdapter();
        adaptador2.Insert(ID, user, pass,Email);
    }
    public static USUARIO LOGIN(int DUI,string PASS, string User,String EMAIL)
    {
        USUARIODTOTableAdapters.USUARIOTableAdapter adaptador2 = new USUARIODTOTableAdapters.USUARIOTableAdapter();
        USUARIODTO.USUARIODataTable tabla = adaptador2.LOGIN(DUI,User, PASS,EMAIL);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        else { return USERDTO(tabla[0]); }

    }

    private static USUARIO USERDTO(USUARIODTO.USUARIORow fila)
    {
        USUARIO objUS = new USUARIO();
        objUS.DUI = fila.DUI;
        objUS.Username = fila.USERNAME;
        objUS.Password = fila.PASSWORD;
        objUS.EMAIL = fila.EMAIL;
        return objUS;
    }
}