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

public partial class ADMİN_bolge_ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bölgelerTableAdapter aa = new bölgelerTableAdapter();
        GridView1.DataSource = aa.Getbölgeler();
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bölgelerTableAdapter asa = new bölgelerTableAdapter();
        int i = asa.Insert(TextBox1.Text);
        if (i == 1)
        {
            Response.Redirect  ("bolge_ekle.aspx");
        }
    }
}
