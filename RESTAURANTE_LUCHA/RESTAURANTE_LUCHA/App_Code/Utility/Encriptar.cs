using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

/// <summary>
/// Descripción breve de Encriptar
/// </summary>
public class Encriptar
{
    public Encriptar()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static string Encripta(String txt)
    {
        using (SHA1Managed sha1 = new SHA1Managed())
        {
            var TextSHA = sha1.ComputeHash(Encoding.UTF8.GetBytes(txt));
            var sb = new StringBuilder(TextSHA.Length * 2);
            foreach (byte B in TextSHA)
            {
                sb.Append(B.ToString("x2"));
            }
            return sb.ToString();
        }
    }
}