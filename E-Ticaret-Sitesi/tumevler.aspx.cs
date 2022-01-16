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

public partial class tumevler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        evlerTableAdapter pp = new evlerTableAdapter();
        Repeater1.DataSource = pp.Getevler();
        Repeater1.DataBind();
    }
}
