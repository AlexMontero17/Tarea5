<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r1.aspx.cs" Inherits="Tarea5.r1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 333px;
        }
    </style>
</head>
<body style="height: 287px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="161px" ImageUrl="~/Imagenes/Fig1.JPG" Width="293px" />
            <br />
            <br />
            Pregunta 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            <br />
            <asp:Button ID="Bcontinuar" runat="server" Height="41px" Text="Siguiente" Width="78px" OnClick="Bcontinuar_Click" />
        </div>
    </form>
</body>
</html>
