<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r3.aspx.cs" Inherits="Tarea5.r3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/Imagenes/Fig3.JPG" Width="237px" />
            <br />
            <br />
            Pregunta 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Salvar" runat="server" Height="41px" Text="Salvar" Width="78px" OnClick="Salvar_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Biniciar" runat="server" Height="50px" Text="Nueva encuesta" Width="125px" OnClick="Biniciar_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
