using System;
using System.Drawing;
using System.Web;
using ViBECommands;

namespace FlowC {
    public partial class Home:System.Web.UI.Page {

        /// <summary>Runs on Page Startup</summary>
        protected void Page_Load(object sender,EventArgs e) { LogonCheck(); }

        /// <summary>Checks the logon cookie. If by using the logon cookie's packaged details we manage to log in, redirects back to default.</summary>
        protected void LogonCheck() {
            HttpCookie UMSWebCreds = Request.Cookies.Get("UMSWEBCREDS");

            if(UMSWebCreds != null) {
                if(UMSWebCreds.Value == ":") { return; }
                String ID = UMSWebCreds.Value.Split(':')[0];
                String PIN = UMSWebCreds.Value.Split(':')[1];

                //Check ID
                if(ID==null || ID.Length<5) { NotificationSub(Color.Pink,"Invalid ID"); Response.Cookies.Remove("UMSWEBCREDS"); return; }

                //Check Pin
                if(PIN==null || PIN.Length<4) { NotificationSub(Color.Pink,"Invalid PIN"); Response.Cookies.Remove("UMSWEBCREDS"); return; }

                //Setup Login Result
                string LoginResult;

                //Try to login, and if there's any exception, halt the process.
                try { LoginResult = CoreCommands.CheckUser(ID,PIN); } 
                catch(Exception E) {NotificationSub(Color.Pink,E.Message); Response.Cookies.Remove("UMSWEBCREDS"); return;}

                //If it's 3, that means we logged in.
                if(LoginResult == "3") { Response.Redirect("~/Default"); return; }

                NotificationSub(Color.Pink,"Username or Password Incorrect");
                Response.Cookies.Remove("UMSWEBCREDS");
            }
        }

        /// <summary>Packages the given credentials into a cookie, saves it, then checks them.</summary>
        protected void LogonBTN_Click(object sender,EventArgs e) {
            HttpCookie Creds = new HttpCookie("UMSWEBCREDS");
            Creds.Value = LogonID.Text + ":" + LogonPin.Text;
            Creds.Expires = DateTime.Now.AddHours(2);

            Response.Cookies.Add(Creds);
            LogonCheck();
        }


         /// <summary>Summon the Notification Panel</summary>
          /// <param name="BackColor">Color of the notificaiton</param>
          /// <param name="Notification">The actual notification</param>
        public void NotificationSub(System.Drawing.Color BackColor,String Notification) {
            NotifPanel.BackColor = BackColor;
            NotifLabel.Text = Notification;
            NotifPanel.Visible = true;
        }



    }
}