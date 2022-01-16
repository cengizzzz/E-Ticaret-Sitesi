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

public partial class bilgi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Request.IsAuthenticated == true)
        {
            MembershipUser user = Membership.GetUser(User.Identity.Name);
            Guid Kulanıciid = (Guid)user.ProviderUserKey;

            ekstraTableAdapter adapter = new ekstraTableAdapter();
            Repeater1.DataSource = adapter.GetDataBy(Kulanıciid);
            Repeater1.DataBind();
        }
    }
}
