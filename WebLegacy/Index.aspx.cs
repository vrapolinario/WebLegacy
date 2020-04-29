using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLegacy
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateTime_Click(object sender, EventArgs e)
        {
            this.txtTime.Text = DateTime.UtcNow.ToString("o");
        }

        protected void btnRestCall_Click(object sender, EventArgs e)
        {
            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                client.Headers.Add("content-type", "application/json");

                lblRestServiceResult.Text = Encoding.ASCII.GetString(client.DownloadData("https://jsonplaceholder.typicode.com/posts/1"));
            }
        }
    }
}