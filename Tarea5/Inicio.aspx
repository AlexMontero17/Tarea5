<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea5.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cédula: <asp:TextBox ID="Tcedula" runat="server"></asp:TextBox>
            <br />
            <br />
            Nombre: <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
            <br />
            <br />
            Género: <asp:RadioButton ID="RM" Text="Masculino" runat="server" /><asp:RadioButton ID="RF" Text="Femenino" runat="server" />
            <br />
            <br />
            <asp:Button ID="Bsiguiente" runat="server" Height="46px" Text="Siguiente" Width="79px" OnClick="Bsiguiente_Click" />
        </div>
    </form>
</body>
</html>
