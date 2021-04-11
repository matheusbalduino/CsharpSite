<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservista.aspx.cs" Inherits="trabalho01.Reservista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reservista</title>
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shotcut icon" type="image/x-icon" href ="img/Milhouse_Van_Houten_2.png" />

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
        #container1{
            padding-top : 10%;
            padding-left: 37%;
        }
        #txtData{
            border-style: none;
            height:auto;
            border-radius: 5px;
            height:34px;
        }
        #ddlSexo{
            border-style: none;
            height: 34px;
            border-radius: 5px;
        }
    </style> 

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="nav" class="navbar navbar-light bg-light">
                <asp:Button ID="Button1" Text="Home" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
                <asp:Button Width="20%" ID="btnMulti" Text="Multiplicação" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnMulti_Click" />
                <asp:Button Width="20%" ID="btnNome" Text="Nome" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNome_Click"/>
                <asp:Button Width="20%" ID="btnNasc" Text="Reservista" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNasc_Click" />
                <asp:Button Width="20%" ID="btnNota" Text="Média" runat="server" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnNota_Click" />
        </div>
        <div id="container1">        
             <div class="mb-3">
                <label style="margin-right: 25px" class="form-label">Data Nascimento</label>
               <asp:TextBox ID="txtData" runat="server">
               </asp:TextBox>
          </div>
          <div class="mb-3" style="display:flex">
                <label class="form-label">Sexo</label>
              <div style="margin-left: 117px">
                   <asp:DropDownList ID="ddlSexo" runat="server" >
                       <asp:ListItem Selected="True" Value="s">Sexo</asp:ListItem>
                       <asp:ListItem Selected="false" Value="m">Masculino</asp:ListItem>
                       <asp:ListItem Selected="false" Value="f">Feminino</asp:ListItem>
                   </asp:DropDownList>
              </div>
               
          </div>
            <div style="margin-left: 78px;margin-top: 40px;"> 
                <asp:Button ID="btnCalc"  Text="Verificar" runat="server" CssClass="btn-success" OnClick="btnCalc_Click" />
                <asp:Button ID="btnVoltar" Text="Voltar" runat="server" CssClass="btn-warning" OnClick="btnVoltar_Click"/>
            </div>
          <div class="mb-3" style="margin-top: 25px; margin-left:52px" >
              <div>
                <asp:Label ID="lblResult" runat="server" ></asp:Label>
              </div>
                <asp:TextBox ID="txtResult" runat="server" CssClass="text-lg-center" Visible="false" OnClick="txtResult_Click" ></asp:TextBox>
          </div>
        </div>
        </div>
    </form>
</body>
        <script>
            let data = document.getElementById("txtData")

            console.log(data)

            data.addEventListener("keypress", mascaData)

            function mascaData() {
                data.value = data.value.replace(/\D/g, "")
                data.value = data.value.replace(/(\d{2})(\d)/, "$1/$2")
                data.value = data.value.replace(/(\d{2})(\d)/, "$1/$2")
            }

        </script>
</html>
