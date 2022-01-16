using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using dsetTableAdapters;
public partial class bilgiguncel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetUser();
            GetDetay();
        }
    }

    private void GetDetay()
    {
        if (this.Request.IsAuthenticated == true)
        {
            MembershipUser user = Membership.GetUser(User.Identity.Name);
            Guid Kulanıciid = (Guid)user.ProviderUserKey;
            ekstraTableAdapter adapter = new ekstraTableAdapter();
            dset.ekstraDataTable data = adapter.GetDataBy(Kulanıciid);
            TextBox1.Text = data[0].ad;
            TextBox2.Text = data[0].soyad;
            TextBox3.Text =data[0].dogum_tarih.ToString();
        }
    }

    private void GetUser()
    {
        if (this.Request.IsAuthenticated == true)
        {
            MembershipUser user = Membership.GetUser(User.Identity.Name);
            txtmail.Text = user.Email;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(User.Identity.Name);
        Guid Kulanıciid = (Guid)user.ProviderUserKey;
        ekstraTableAdapter adapter = new ekstraTableAdapter();
        string ad = TextBox1.Text;
        string Email = txtmail.Text;
        string soyad = TextBox2.Text;
        DateTime dogum_tarih = DateTime.Parse(TextBox3.Text);

        adapter.Update(ad, soyad , dogum_tarih , Kulanıciid);
        Response.Redirect("anasayfa.aspx");
    }
}