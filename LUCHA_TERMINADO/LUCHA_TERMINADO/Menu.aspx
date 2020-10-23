<%@ Page Title="" Language="C#" MasterPageFile="~/PRINCIPAL.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <h2>Bienvenido <asp:Label ID="MYNAME" runat="server" Text="Label"></asp:Label> </h2>
    <a name="tabla1"></a>
     Hamburguesas
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
        <table class="table">
            <tr>
                <th colspan="3" align="center">
                    
                </th>
            </tr>
           
            <tr>
               
                <td>
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="ncontador" name="ncontador" value="">
                    <h5>Nombre: <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
</h5>
                    <p> Descripcion: <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
 </p>
                    <p> Precio:  <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
 </p>
                    <asp:Button ID="Button1" runat="server" Text="COMPRA YA!" CommandName="Seleccionar" />
                    <asp:Label ID="Comprado" runat="server" Text="" ForeColor="Lime"></asp:Label>
                </td>
                <td>
                    <asp:image Width="123" Height="194" ImageUrl='<%#"~/assets/images/" + Eval("imagen") %>' ID="image1" runat="server"  />
                </td>
                
            </tr>
            
        </table>
            <br />
<br />
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Visible="false" />

        </ItemTemplate>
    </asp:DataList>
    <a name="tabla2"></a>
        @* Complementos *@
    <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand">
        <ItemTemplate>
            
        <table class="table">
            <tr>
                <th colspan="3" align="center">
                    Complementos
                </th>
            </tr>
            
            <tr>
               
                <td>
                  
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="ncontador" name="ncontador" value="">
                    <h5>Nombre:  <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
</h5>
                    <p> Descripcion: <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
 </p>
                    <p> Precio:                  <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
 </p>
                     <asp:Button ID="Button1" runat="server" Text="COMPRA YA!" CommandName="Seleccionar" />
                    <asp:Label ID="Comprado" runat="server" Text="" ForeColor="Lime"></asp:Label>
                </td>
                <td>
                    <asp:image Width="123" Height="194" ImageUrl='<%#"~/assets/images/" + Eval("imagen") %>' ID="image1" runat="server"  />
                </td>
            
            </tr>
          
        </table>

           
            <br />
<br />
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Visible="false" />

        </ItemTemplate>
    </asp:DataList>
    <a name="tabla3"> </a>
        @* Combo *@
    <asp:DataList ID="DataList3" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_ItemCommand">
        <ItemTemplate> 
        <table class="table">
            <tr>
                <th colspan="3" align="center">
                    Combos
                </th>
            </tr>
           
            <tr>
              
                <td>
              
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="ncontador" name="ncontador" value="">
                    <h5>Nombre:    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
</h5>
                    <p> Descripcion:<asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
 </p>
                    <p> Precio:<asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
 </p>
                     <asp:Button ID="Button1" runat="server" Text="COMPRA YA!" CommandName="Seleccionar" />
                    <asp:Label ID="Comprado" runat="server" Text="" ForeColor="Lime"></asp:Label>
                    
                </td>
                <td>
                    <asp:image Width="123" Height="194" ImageUrl='<%#"~/assets/images/" + Eval("imagen") %>' ID="image1" runat="server"  />
                </td>
                
            </tr>
            
        </table>
    </div><!--/.col-xs-12.col-sm-9-->
   
      
    </div>
            
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Visible="false" />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="SELECT * FROM [Producto] WHERE ([IdTipoProducto] = @IdTipoProducto)">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="IdTipoProducto" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="SELECT [ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen] FROM [Producto] WHERE ([IdTipoProducto] = @IdTipoProducto)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="IdTipoProducto" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Label ID="GUARDO" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Button ID="DETALLE" runat="server" Text="DETALLE" OnClick="DETALLE_Click" />
    <asp:Button ID="SIGUIENTE" runat="server" Text="Siguiente" OnClick="SIGUIENTE_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="SELECT [ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen] FROM [Producto] WHERE ([IdTipoProducto] = @IdTipoProducto)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="IdTipoProducto" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

