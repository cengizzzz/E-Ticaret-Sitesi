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
public partial class evdetay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ev_id = int.Parse(Request.QueryString["ev_id"].ToString());
        evlerTableAdapter adsa = new evlerTableAdapter();
        dset.evlerDataTable data = adsa.GetevBysec(ev_id);
        video1.Attributes["src"] = data[0].video;
        FormView1.DataSource = data;
        FormView1.DataBind();
    }
}
