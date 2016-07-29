/// <reference name="MicrosoftAjax.js" />

Sys.Application.add_load(onPageLoad);

function onPageLoad() {

  var hostweburl = decodeURIComponent(getQueryStringParameter("SPHostUrl"));

  var options = {
    siteUrl: hostweburl,
    siteTitle: "Host Web",
    appHelpPageUrl: "help.aspx?SPHostUrl=" + hostweburl,
    appIconUrl: "../Content/AppIcon.png",
    appTitle: "Wingtip App",
    settingsLinks: [
      { linkUrl: "start.aspx?SPHostUrl=" + hostweburl, displayName: "Home" },
      { linkUrl: "about.aspx?SPHostUrl=" + hostweburl, displayName: "About" },
      { linkUrl: "contact.aspx?SPHostUrl=" + hostweburl, displayName: "Contact" }
    ]
  };

  var nav = new SP.UI.Controls.Navigation("chrome_ctrl_container", options);
  nav.setVisible(true);
}

function getQueryStringParameter(paramToRetrieve) {
  var params = document.URLUnencoded.split("?")[1].split("&");
  var strParams = "";
  for (var i = 0; i < params.length; i = i + 1) {
    var singleParam = params[i].split("=");
    if (singleParam[0] == paramToRetrieve)
      return singleParam[1];
  }
}