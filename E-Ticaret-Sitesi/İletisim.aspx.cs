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

public partial class İletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
    {
        Loadkonu();
    }
}
    private void Loadkonu()
    {
        
        konuTableAdapter asda = new konuTableAdapter();
        DropDownList1.DataSource = asda.Getkonu();
        DropDownList1.DataTextField = "konu_isim";
        DropDownList1.DataValueField = "konu_id";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string adınız_soyadınız = txtad.Text;
        string e_mail_adresiniz =txtemail.Text;
        int konu_id = int.Parse(DropDownList1.SelectedValue);
        string mesaj = TextBox1.Text;

        mesajTableAdapter sada = new mesajTableAdapter();
        int i = sada.Insert( adınız_soyadınız, e_mail_adresiniz, konu_id, mesaj, DateTime.Now);
        if (i==1)
        {
        Label1.Text=( " mesaj gönderildi..");
        }




    }
}
