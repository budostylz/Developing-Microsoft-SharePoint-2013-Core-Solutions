<script type="text/javascript">
  var hostWebUrl;
  var hostLayoutsUrl;

  // Load the SharePoint resources.
  $(document).ready(function () {

    // Get the URI decoded app web URL.
    hostWebUrl = decodeURIComponent(getQueryStringParameter("SPHostUrl"));
    hostLayoutsUrl = hostWebUrl + "/_layouts/15/";

    // Load the js file and continue to the success handler.
    $.getScript(hostLayoutsUrl + "SP.UI.Controls.js", renderChromeControl)
  });


  function getQueryStringParameter(paramToRetrieve) {
    var params = document.URL.split("?")[1].split("&");
    var strParams = "";
    for (var i = 0; i < params.length; i = i + 1) {
      var singleParam = params[i].split("=");
      if (singleParam[0] == paramToRetrieve)
        return singleParam[1];
    }
  }
</script>