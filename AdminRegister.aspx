<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="HPMS.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="User Registration"></asp:Label> <br />
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server" type="email"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="TextBox3" runat="server" type="password"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"/>
        </div>
    </form>
</body>
</html>
