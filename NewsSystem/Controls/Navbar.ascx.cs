using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsSystem.Controls
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.User.Identity.IsAuthenticated)
            {
                this.register.Visible = false;
                this.login.Visible = false;
                this.logout.Visible = true;
            }
            else
            {
                this.register.Visible = true;
                this.login.Visible = true;
                this.logout.Visible = false;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            var authenticationManager = this.Context.GetOwinContext().Authentication;
            authenticationManager.SignOut();

            this.Response.Redirect("/");
        }
    }
}