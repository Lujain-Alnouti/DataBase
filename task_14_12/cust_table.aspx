<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_table.aspx.cs" Inherits="task_14_12.cust_table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Customer_Name" runat="server" Text="Customer Name"></asp:Label>
            <asp:TextBox ID="Cust_Name" runat="server"></asp:TextBox>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Image ID="Image1" runat="server" />
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            
        </div>
    </form>
</body>
</html>
