<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Média.aspx.cs" Inherits="trabalho01.Média" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Média</title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shotcut icon" type="image/x-icon" href ="img/calc.png" />

    <style>
        body{
            background-color: lightsteelblue;
        }
        #nav{
                padding: 1.5%;
                background-color:  rgba(255, 255, 255, 0.9);
        }
        #btnMulti{
            margin-left: 3%;
              height: 31px;
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
        #container1{
            padding-top : 10%;
            padding-left: 37%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="nav" class="navbar navbar-light bg-light">
                <asp:Button ID="Button1" Text="Home" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
                <asp:Button Width="20%" ID="btnMulti" Text="Multiplicação" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnMulti_Click" />
                <asp:Button Width="20%" ID="btnNome" Text="Nome" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNome_Click"/>
                <asp:Button Width="20%" ID="btnNasc" Text="Reservista" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNasc_Click" />
                <asp:Button Width="20%" ID="btnNota" Text="Média" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNota_Click" />
        </div>
          <div id="container1"> 
          <div class="mb-3">
                <label class="form-label">Primeiro Valor</label>
                <asp:TextBox ID="txt1Valor" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
          <div class="mb-3">
                <label class="form-label">Segundo Valor</label>
                <asp:TextBox ID="txt2Valor" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
          <div class="mb-3 form-label">
                <asp:Label ID="lblResult" runat="server" CssClass="form-label"></asp:Label>
          </div> 
    
        <asp:Button ID="btnCalc"  Text="Média" runat="server" CssClass="btn-success" OnClick="btnCalc_Click" />
        <asp:Button ID="btnVoltar" Text="Voltar" runat="server" CssClass="btn-warning" OnClick="btnVoltar_Click" />
      </div>
    </form>
</body>
</html>
