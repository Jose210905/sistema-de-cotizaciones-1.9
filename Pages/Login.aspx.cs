using System;
using System.Web;
using System.Web.UI;
using SistemaCotizaciones.DAL;
using SistemaCotizaciones.Models;

namespace SistemaCotizaciones.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Limpiar cualquier sesión existente
                Session.Clear();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                // Validar que los campos no estén vacíos
                if (string.IsNullOrEmpty(txtUsuario.Text.Trim()) ||
                    string.IsNullOrEmpty(txtContrasena.Text.Trim()))
                {
                    MostrarMensaje("Por favor complete todos los campos", "error");
                    return;
                }

                // TEMPORAL: Login directo sin base de datos para probar
                if (txtUsuario.Text.Trim() == "admin" && txtContrasena.Text.Trim() == "admin123")
                {
                    // Login exitoso
                    Session["UsuarioLogueado"] = true;
                    Session["NombreUsuario"] = "Administrador";
                    Session["UsuarioID"] = 1;

                    // Redirigir al dashboard
                    if (!Response.IsRequestBeingRedirected)
                    {
                        Response.Redirect("Default.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
                else
                {
                    // Login fallido
                    MostrarMensaje("❌ Usuario o contraseña incorrectos", "error");
                    txtContrasena.Text = "";
                }
            }
            catch (Exception ex)
            {
                MostrarMensaje("❌ Error: " + ex.Message, "error");
            }
        }

        private void MostrarMensaje(string mensaje, string tipo)
        {
            lblMensaje.Text = mensaje;
            pnlMensaje.Visible = true;

            if (tipo == "error")
            {
                pnlMensaje.CssClass = "alert alert-error";
            }
            else if (tipo == "success")
            {
                pnlMensaje.CssClass = "alert alert-success";
            }
        }
    }
}