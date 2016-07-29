<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NaAddressFieldControl.ascx.cs" Inherits="AddressFieldType.CONTROLTEMPLATES.NaAddressFieldControl" %>
<SharePoint:RenderingTemplate ID="NaAddressFieldControlTemplate" runat="server">
  <Template>
    <table class="ms-form">
      <tr>
        <td>Street 1:</td>
        <td colspan="5"><asp:TextBox ID="Street1TextBox" runat="server" Width="300px" /></td>
      </tr>
      <tr>
        <td>Street 2:</td>
        <td colspan="5"><asp:TextBox ID="Street2TextBox" runat="server" Width="300px" /></td>
      </tr>
      <tr>
        <td>City:</td>
        <td><asp:TextBox ID="CityTextBox" runat="server" Width="300px" /></td>
        <td>State:</td>
        <td><asp:TextBox ID="StateTextBox" runat="server" Width="50px" /></td>
        <td>Zip:</td>
        <td><asp:TextBox ID="ZipTextBox" runat="server" Width="50px" /></td>
      </tr>
    </table>
  </Template>
</SharePoint:RenderingTemplate>
