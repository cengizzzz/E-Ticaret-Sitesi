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

public partial class ADMİN_EV_EKLE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Loadkategori();
            Loadilce();
           
        }
        }

    private void Loadilce()
    {
        bölgelerTableAdapter yy = new bölgelerTableAdapter();
        ddlilce.DataSource = yy.Getbölgeler();
        ddlilce.DataTextField="ilce_isim";
        ddlilce.DataValueField ="ilce_id";
        ddlilce.DataBind();
    }

    private void Loadkategori()
    {
        kategorilerTableAdapter pp = new kategorilerTableAdapter();
        ddlkategori.DataSource = pp.Getkategoriler();
        ddlkategori.DataTextField = "kategori_isim";
        ddlkategori.DataValueField = "kategori_id";
        ddlkategori.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string acıklama = txtacıklama.Text;
        DateTime yapımtarih = DateTime.Parse(txtyayın.Text.ToString());
        int fiyat = int.Parse(txtfiyat.Text);
        int kategori_id = int.Parse(ddlkategori.SelectedValue);
        int ilce_id = int.Parse(ddlilce.SelectedValue);
        string video = HttpUtility.UrlEncode(txtvideo.Text);
        string resim = txtresim.Text;

        evlerTableAdapter adapter = new evlerTableAdapter();
      int i=  adapter.InsertQuery(acıklama, yapımtarih, fiyat, kategori_id, ilce_id, video, resim);
      if (i == 1)
      {
          Response.Redirect("EVLİSTE.ASPX");
      }
        }
    }

