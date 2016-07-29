<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="~/_controltemplates/15/InputFormSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="~/_controltemplates/15/ButtonSection.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteConfig2.aspx.cs" Inherits="WingtipApplicationPages.Layouts.WingtipApplicationPages.SiteConfig2" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
  Wingtip Site Config 2
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea"
  runat="server">
  Wingtip Site Config 2
</asp:Content>

<asp:Content ID="AdditionalPageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">

<table class="propertysheet" border="0" width="100%" cellspacing="0" cellpadding="0" id="diidProjectPageOverview">

    <wssuc:InputFormSection Title="Site Title" Description="Type a title for your Web site. The title is displayed on each page in the site." runat="server">
      <template_inputformcontrols>
		    <wssuc:InputFormControl LabelText="Title:" runat="server">
				<Template_Control>
			    <wssawc:InputFormTextBox ID="txtSiteTitle" class="ms-input" Columns="40" Runat="server" MaxLength="255" />
				</Template_Control>
			</wssuc:InputFormControl>			
	   </template_inputformcontrols>
    </wssuc:InputFormSection>

    <wssuc:InputFormSection Title="Site Description" Description="Type a description for your Web site. The description is displayed on the home page." runat="server">
      <template_inputformcontrols>
		    <wssuc:InputFormControl LabelText="Description:" runat="server">
				<Template_Control>
			    <wssawc:InputFormTextBox ID="txtSiteDescription" class="ms-input"  Runat="server" TextMode="MultiLine" Columns="40" Rows="3"/>
				</Template_Control>
			</wssuc:InputFormControl>			
	   </template_inputformcontrols>
    </wssuc:InputFormSection>

    <wssuc:ButtonSection runat="server">
      <template_buttons>
		    <asp:Button UseSubmitBehavior="false" runat="server" class="ms-ButtonHeightWidth" Text="Update" id="cmdUpdate" />
	   </template_buttons>
    </wssuc:ButtonSection>

  </table>

</asp:Content>
