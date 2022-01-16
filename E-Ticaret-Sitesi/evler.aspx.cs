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

public partial class evler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int ilce_id = int.Parse(Request.QueryString["ilce_id"].ToString());          
            evlerTableAdapter adapter = new evlerTableAdapter();
            Repeater1.DataSource = adapter.GetDataBy3(ilce_id);
            Repeater1.DataBind();
        }
    }
}
