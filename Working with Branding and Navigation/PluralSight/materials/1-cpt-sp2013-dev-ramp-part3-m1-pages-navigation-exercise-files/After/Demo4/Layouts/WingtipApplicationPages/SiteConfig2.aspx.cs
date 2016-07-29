using System;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using Microsoft.SharePoint.Utilities;

namespace WingtipApplicationPages.Layouts.WingtipApplicationPages {
  public partial class SiteConfig2 : LayoutsPageBase {

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);
      cmdUpdate.Click += new EventHandler(cmdUpdate_Click);
    }

    void cmdUpdate_Click(object sender, EventArgs e) {
      SPWeb site = this.Web;
      site.Title = txtSiteTitle.Text;
      site.Description = txtSiteDescription.Text;
      site.Update();
      SPUtility.Redirect("settings.aspx",
                         SPRedirectFlags.RelativeToLayoutsPage,
                         this.Context);
    }

    protected override void OnPreRender(EventArgs e) {
      base.OnPreRender(e);
      SPWeb site = this.Web;
      txtSiteTitle.Text = site.Title;
      txtSiteDescription.Text = site.Description;
    }

  }
}
