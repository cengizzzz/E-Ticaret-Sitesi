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

public partial class Emlak : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    private void Loadkategoriler()
    {
        kategorilerTableAdapter gd = new kategorilerTableAdapter();
        Repeater2.DataSource = gd.Getkategoriler();
        Repeater2.DataBind();
    }
    
}
