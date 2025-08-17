<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaCotizaciones.Pages.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sistema de Cotizaciones - Login</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .login-header {
            margin-bottom: 30px;
        }

        .login-header h2 {
            color: #2c3e50;
            margin-bottom: 5px;
        }

        .login-header h3 {
            color: #7f8c8d;
            font-weight: normal;
            margin-top: 0;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 2px solid #e1e5e9;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            outline: none;
            border-color: #667eea;
        }

        .btn {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            width: 100%;
            transition: transform 0.2s;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .alert {
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 5px;
            text-align: center;
        }

        .alert-error {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
        }

        .alert-success {
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
        }

        .footer-info {
            margin-top: 30px;
            font-size: 12px;
            color: #7f8c8d;
        }

        .logo {
            font-size: 48px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <div class="logo">🏪</div>
            <h2>Sistema de Cotizaciones</h2>
            <h3>Pasty Custom Design</h3>
        </div>
        
        <form id="form1" runat="server">
            <!-- Mensaje de error/éxito -->
            <asp:Panel ID="pnlMensaje" runat="server" Visible="false" CssClass="alert alert-error">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </asp:Panel>
            
            <div class="form-group">
                <label for="txtUsuario">👤 Usuario:</label>
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" 
                           placeholder="Ingrese su usuario"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" 
                                          ControlToValidate="txtUsuario"
                                          ErrorMessage="⚠️ El usuario es obligatorio"
                                          CssClass="alert-error" Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <label for="txtContrasena">🔒 Contraseña:</label>
                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" 
                           CssClass="form-control" placeholder="Ingrese su contraseña"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" 
                                          ControlToValidate="txtContrasena"
                                          ErrorMessage="⚠️ La contraseña es obligatoria"
                                          CssClass="alert-error" Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnIngresar" runat="server" Text="🔑 Ingresar al Sistema" 
                          CssClass="btn" OnClick="btnIngresar_Click" />
            </div>
            
            <div class="footer-info">
                <p><strong>💡 Credenciales de prueba:</strong></p>
                <p>Usuario: <strong>admin</strong> | Contraseña: <strong>admin123</strong></p>
                <hr style="margin: 20px 0; border: 1px solid #eee;" />
                <p>Sistema desarrollado para Pasty Custom Design</p>
                <p>© 2025 - Sistema de Cotizaciones</p>
            </div>
        </form>
    </div>
</body>
</html>