<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Epos.Login" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login - Access</title>
    <style>
        :root {
            --primary: #E31E24;
            --primary-dark: #C01A1F;
            --secondary: #FFFFFF;
            --text-primary: #2B2B2B;
            --text-secondary: #6B6B6B;
            --border: #E0E0E0;
            --shadow: 8px 8px 0px rgba(227, 30, 36, 0.15);
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background: linear-gradient(135deg, #FFF5F5 0%, #FFFFFF 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
        .login-container {
            width: 100%;
            max-width: 420px;
            border: 2px solid var(--border);
            padding: 50px 40px;
            background-color: var(--secondary);
            box-shadow: var(--shadow);
            position: relative;
            border-radius: 16px;
        }
        .login-container::before {
            content: '';
            position: absolute;
            top: 8px;
            left: 8px;
            right: -8px;
            bottom: -8px;
            border: 2px solid rgba(227, 30, 36, 0.1);
            z-index: -1;
            border-radius: 16px;
        }
        .logo-container {
            text-align: center;
            margin-bottom: 35px;
        }
        .logo-container img {
            height: 50px;
            width: auto;
        }
        h2 {
            color: var(--text-primary);
            margin-bottom: 30px;
            font-size: 26px;
            font-weight: 600;
            text-align: center;
            letter-spacing: 0.5px;
        }
        .input-group {
            margin-bottom: 24px;
            position: relative;
        }
        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: var(--text-primary);
            font-size: 13px;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }
        .input-group input[type="text"],
        .input-group input[type="password"] {
            width: 100%;
            padding: 14px 16px;
            border: 2px solid var(--border);
            background-color: var(--secondary);
            font-size: 15px;
            outline: none;
            transition: all 0.3s;
            border-radius: 8px;
            color: var(--text-primary);
        }
        .input-group input:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(227, 30, 36, 0.1);
        }
        .input-group input::placeholder {
            color: var(--text-secondary);
        }
        .btn-login {
            width: 100%;
            padding: 14px;
            background-color: var(--primary);
            color: var(--secondary);
            border: 2px solid var(--primary);
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
            transition: all 0.3s;
            letter-spacing: 1px;
            text-transform: uppercase;
            border-radius: 8px;
        }
        .btn-login:hover {
            background-color: var(--primary-dark);
            border-color: var(--primary-dark);
            box-shadow: 4px 4px 0px rgba(227, 30, 36, 0.2);
            transform: translate(-2px, -2px);
        }
        .btn-login:active {
            transform: translate(0, 0);
            box-shadow: none;
        }
        .divider {
            display: flex;
            align-items: center;
            margin: 30px 0;
            color: var(--text-secondary);
            font-weight: 500;
            font-size: 13px;
        }
        .divider::before, .divider::after {
            content: "";
            flex: 1;
            border-bottom: 2px solid var(--border);
            margin: 0 15px;
        }
        .social-login {
            display: flex;
            justify-content: center;
            gap: 15px;
        }
        .social-btn {
            width: 55px;
            height: 55px;
            border: 2px solid var(--border);
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            transition: all 0.3s;
            font-weight: bold;
            font-size: 18px;
            background-color: var(--secondary);
            border-radius: 8px;
            color: var(--text-primary);
        }
        .social-btn:hover {
            border-color: var(--primary);
            box-shadow: 4px 4px 0px rgba(227, 30, 36, 0.15);
            transform: translate(-2px, -2px);
        }
        .footer {
            text-align: center;
            margin-top: 25px;
            color: var(--text-secondary);
            font-size: 14px;
        }
        .footer a {
            color: var(--primary);
            font-weight: 600;
            text-decoration: none;
            transition: all 0.2s;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: var(--primary);
            font-weight: 600;
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="logo-container">
               <img runat="server" src="~/Images/img.png" alt="Access Logo" />
            </div>
            
            <h2>Welcome Back</h2>
            
            <div class="input-group">
                <asp:Label Text="USERNAME" runat="server" AssociatedControlID="txtUser" />
                <asp:TextBox ID="txtUser" runat="server" placeholder="Enter your username" />
            </div>
            
            <div class="input-group">
                <asp:Label Text="PASSWORD" runat="server" AssociatedControlID="txtPass" />
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="••••••••" />
            </div>
            
            <asp:Button ID="btnLogin" runat="server" Text="SIGN IN" CssClass="btn-login" />
            
            <asp:Label ID="lblMsg" runat="server" CssClass="error-message" />
            
            <div class="divider">OR</div>
            
            <div class="social-login">
                <div class="social-btn" title="Google">G</div>
                <div class="social-btn" title="Facebook">F</div>
                <div class="social-btn" title="X (Twitter)">X</div>
            </div>
            
            <div class="footer">
                Don't have an account? <a href="Register.aspx">Sign up</a>
            </div>
        </div>
    </form>
</body>
</html>