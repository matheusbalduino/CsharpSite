<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="trabalho01.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shotcut icon" type="image/x-icon" href ="img/milhouse.png" />
    <style>
        body{
            background-color: lightsteelblue;
        }
        #nav{
            padding: 1.5%;
            background-color: rgba(255, 255, 255, 0.9);
        }
        #btnMulti{
            margin-left: 3%;
        }
        #btnNome{
            margin-left: 3%;
        }
        #btnNasc{
            margin-left: 3%;
        }
        #btnNota{
            margin-left: 3%;
        }
        #container{
            font-size: 126px;
            text-align: center;
            justify-content: center;
            margin-top: 9%;
            align-content: center;
            color: white;
            font-family: inherit;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">  
        <nav id="nav" runat="server" class="navbar navbar-light bg-light">
            <asp:Button ID="Button1" Text="Home" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
            <asp:Button Width="20%" ID="btnMulti" Text="Multiplicação" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnMulti_Click" />
            <asp:Button Width="20%" ID="btnNome" Text="Nome" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNome_Click" />
            <asp:Button Width="20%" ID="btnNasc" Text="Reservista" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNasc_Click" />
            <asp:Button Width="20%" ID="btnNota" Text="Média" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNota_Click" />
         </nav>
        <div id="container">Bem Vindo</div>
    </form>
</body>
</html>
