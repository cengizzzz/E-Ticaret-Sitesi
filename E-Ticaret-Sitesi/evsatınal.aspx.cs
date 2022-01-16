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

public partial class evsatınal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ŞubelerTableAdapter aa = new ŞubelerTableAdapter();
            DropDownList1.DataSource = aa.GetSUBE();
            DropDownList1.DataTextField = "sube_adı";
            DropDownList1.DataValueField = "sube_id";
            DropDownList1.DataBind();
        }
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        int sube_id = int.Parse(DropDownList1.SelectedValue);
        DateTime gorusme_saati = DateTime.Parse(txtgör.Text.ToString());
        string Ad =txtad.Text;
        string soyad =txtsoyad.Text;
        GörüşmeTableAdapter pp = new GörüşmeTableAdapter();
        int i= pp.Insert(sube_id, gorusme_saati,Ad,soyad);
        if (i == 1)
        {
            Label1.Text=("Randevu Alındı...");
        }
        
    }
}
