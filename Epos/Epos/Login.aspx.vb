Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        ' Static credentials
        If txtUser.Text = "Admin" And txtPass.Text = "1234" Then
            Session("User") = txtUser.Text
            Response.Redirect("Dashboard.aspx")
        Else
            lblMsg.Text = "Invalid username or password"
        End If
    End Sub
End Class
