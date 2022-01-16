using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using dsetTableAdapters;

public partial class ADMİN_sil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ev_id"] != null)
        {
            int ev_id = int.Parse(Request.QueryString["ev_id"].ToString());
            evlerTableAdapter a = new evlerTableAdapter();
            a.Delete(ev_id);
            Response.Redirect("EVLİSTE.aspx");
        }

        else
        {
            Response.Redirect("EVLİSTE.aspx");
        } 
    }
}
