﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r2.aspx.cs" Inherits="Tarea5.r2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/Imagenes/Fig2.JPG" Width="237px" />
            <br />
            <br />
            Pregunta 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
