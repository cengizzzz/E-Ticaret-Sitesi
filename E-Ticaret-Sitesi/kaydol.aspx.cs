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

public partial class kaydol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(CreateUserWizard1.UserName);
        Guid id = (Guid)user.ProviderUserKey;

        TextBox txtad = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("txtad");
        TextBox txtsoy = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("txtsoy");
        TextBox txtdog = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("txtdog");

        string ad = txtad.Text;
        string soyad = txtsoy.Text;
        DateTime dogum_tarih = DateTime.Parse(txtdog.Text.ToString());

        ekstraTableAdapter adapter = new ekstraTableAdapter();
        adapter.Insert(id, ad, soyad, dogum_tarih);
    }
}
