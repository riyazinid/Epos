<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="Epos.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Dashboard - Epos</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Welcome to Epos Dashboard</h2>

        <asp:Label ID="lblUser" runat="server" />
        <br /><br />

        <p>This is a static dashboard page.</p>

        <asp:Button ID="btnLogout" runat="server" Text="Logout" />
    </form>
</body>
</html>
