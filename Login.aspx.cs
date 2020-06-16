using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowC {
    public partial class Home:System.Web.UI.Page {
        protected void Page_Load(object sender,EventArgs e) { LogonCheck(); }

        protected void LogonCheck() {
            HttpCookie UMSWebCreds = Request.Cookies.Get("UMSWEBCREDS");

            if(UMSWebCreds != null) {
                if(UMSWebCreds.Value == ":") { return; }
                String ID = UMSWebCreds.Value.Split(':')[0];
                String PIN = UMSWebCreds.Value.Split(':')[1];

                //Check Empty ID
                if(String.IsNullOrEmpty(ID)) { NotificationSub(Color.Pink,"Must input an ID!"); Response.Cookies.Remove("UMSWEBCREDS"); return; }

                //Check Empty PIN
                if(String.IsNullOrEmpty(PIN)) { NotificationSub(Color.Pink,"Must input a PIN!"); Response.Cookies.Remove("UMSWEBCREDS"); return; }

                //



            }

        }

        protected void LogonBTN_Click(object sender,EventArgs e) {

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