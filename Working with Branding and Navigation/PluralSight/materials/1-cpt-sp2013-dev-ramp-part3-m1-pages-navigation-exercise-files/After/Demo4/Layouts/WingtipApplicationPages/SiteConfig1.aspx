<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteConfig1.aspx.cs" Inherits="WingtipApplicationPages.Layouts.WingtipApplicationPages.SiteConfig1" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
  Wingtip Site Config 1
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
  Wingtip Site Config 1
</asp:Content>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
  <style type="text/css">
    #MSO_ContentTable{ padding-left:10px; }
  </style>
</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">

  <h1>Wingtip Site Configuration</h1>

  <table style="width:600px;padding:4px;">
    <tr>
      <td>Site Title:</td>
      <td style="width:100%" >
        <asp:TextBox ID="txtSiteTitle" CssClass="ms-input" Columns="40" runat="server" />
      </td>
    </tr>
    <tr>
      <td style="vertical-align:top" >Description:</td>
      <td style="width:100%" >
        <asp:TextBox ID="txtSiteDescription" CssClass="ms-input" TextMode="MultiLine" Columns="40" Rows="6" runat="server" />
      </td>
    </tr>
  </table>

  <asp:Button ID="cmdUpdate" runat="server" Text="Update" class="ms-ButtonHeightWidth" />
  &nbsp;&nbsp;
  <asp:Button ID="cmdCancel" runat="server" Text="Cancel" class="ms-ButtonHeightWidth" />


</asp:Content>
