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

public partial class ADMİN_SİL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ilce_id = int.Parse(Request.QueryString["ilce_id"].ToString());
            bölgelerTableAdapter a = new bölgelerTableAdapter();
            a.Delete(ilce_id);
            Response.Redirect("bolge_ekle.aspx");  
    }
}
