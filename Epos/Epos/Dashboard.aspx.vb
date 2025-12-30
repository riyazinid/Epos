Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("User") Is Nothing Then
            Response.Redirect("Login.aspx")
        Else
            lblUser.Text = "Logged in as: " & Session("User").ToString()
        End If
    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class
