<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CelsiusFahrenheit_Converter.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>°C & °F Converter</title>
    <link rel="icon" href="images/logo.png"/> 

    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body style="background-color:gray">

   <form id="form1" runat="server">
   <div class="CurveBorders">      
   <table class="table">
   <tr>
         <td class="toprow">&nbsp;&nbsp;<asp:Label Class="lblClose" ID="lbl_Close" runat="server" Text="X" Font-Names="Arial Black" ForeColor="#990000" onclick="self.close()"></asp:Label></td>
         <td colspan="2"></td>
   </tr>  
   <tr>
         <td class="auto-style2"><a href="Index.aspx"><img alt="C and F Converter" class="auto-style9" src="images/logo.png" /></a></td>
         <td colspan="2"><h1>Celsius & Fahrenheit Converter</h1></td>
   </tr> 
   <tr>
         <td colspan="3"></td>
   </tr>
   <tr>
         <td class="auto-style4"><asp:Button  ID="btn_2C" runat="server" CssClass="btn" Text="To Celsius" Height="40px" Width="145px" OnClick="btn_2C_Click" /></td>
         <td class="auto-style5"><asp:TextBox ID="txt_2convert" runat="server" BorderStyle="Dashed" Height="47px" TextMode="Number" Width="224px"></asp:TextBox></td> 
         <td class="auto-style5"><asp:Button  ID="btn_2F" runat="server" CssClass="btn" Text="To Fahrenheit" Height="40px" Width="145px" OnClick="btn_2F_Click" /></td>
   </tr>
   <tr>
         <td></td>
         <td class="auto-style5"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_2convert" ErrorMessage="Set No.  !!" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
         <br /><asp:Label ID="lbl_Msg" runat="server" CssClass="auto-style7" ForeColor="#009933"></asp:Label></td>
         <td></td>
   </tr>
   <tr>
         <td><asp:Image ID="img_sun" runat="server" CssClass="auto-style10" ImageUrl="~/images/icon_sun.png" Visible="False" />
         <asp:Image ID="img_cloudy" runat="server" CssClass="auto-style10" ImageUrl="~/images/icon_cloudy.png" Visible="False" />
         <asp:Image ID="img_snow" runat="server"  Visible="False" CssClass="auto-style10" ImageUrl="~/images/icon_snow.png" /></td> 
         <td></td>
         <td class="auto-style6"><asp:Image ID="img_github" runat="server" CssClass="auto-style10" ImageUrl="~/images/icon_github.png" onclick="javascript:window.open('https://github.com/malshetwi')"/></td>
   </tr>
   </table>        
   </div></form> 

</body>
</html>