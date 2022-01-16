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

public partial class ADMİN_guncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Loadkategori();
            Loadilce();
            Loadev();
        }
    }

    private void Loadev()
    {
        if (Request.QueryString["ev_id"] == null)
        {
            Response.Redirect("EVLİSTE.aspx");
        }
        else
        {
            int ev_id = int.Parse(Request.QueryString["ev_id"].ToString());
            evlerTableAdapter a = new evlerTableAdapter();
            dset.evlerDataTable data = a.GetevBysec(ev_id);
            SetControls(data);
        }
    }

    private void SetControls(dset.evlerDataTable data)
    {
        
            lblacıklam.Text = data[0].acıklama;
            lblyayın.Text = data[0].yapımtarih.ToString();
            lblfiyat.Text = data[0].fiyat.ToString();
            lblkategori.SelectedValue = data[0].kategori_id.ToString();
            lblilce.SelectedValue = data[0].ilce_id.ToString();
            lblresim.Text = data[0].resim;
            video1.Attributes["src"] = HttpUtility.UrlDecode(data[0].video);
            txtvideo.Text = data[0].video;
       
    }
    private void Loadilce()
    {
        bölgelerTableAdapter yy = new bölgelerTableAdapter();
        lblilce.DataSource = yy.Getbölgeler();
        lblilce.DataTextField = "ilce_isim";
        lblilce.DataValueField = "ilce_id";
        lblilce.DataBind();
    }

    private void Loadkategori()
    {
        kategorilerTableAdapter pp = new kategorilerTableAdapter();
        lblkategori.DataSource = pp.Getkategoriler();
        lblkategori.DataTextField = "kategori_isim";
        lblkategori.DataValueField = "kategori_id";
        lblkategori.DataBind();
    }
    protected void btnguncelle_Click(object sender, EventArgs e)
    {

        int id = int.Parse(Request.QueryString["ev_id"].ToString());
        string acıklama = lblacıklam.Text;
        DateTime yapımtarih = DateTime.Parse(lblyayın.Text);
       decimal  fiyat = decimal.Parse(lblfiyat.Text);
        int kategori_id = int.Parse(lblkategori.SelectedValue.ToString());
        int ilce_id = int.Parse(lblilce.SelectedValue.ToString());
        string video = HttpUtility.UrlEncode(txtvideo.Text);
        string resim = lblresim.Text;


        evlerTableAdapter adapterrr = new evlerTableAdapter();
        adapterrr.Update(acıklama, yapımtarih, fiyat, kategori_id, ilce_id, video, resim, id);
    }
}

