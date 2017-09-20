## What is PostBack in ASP.NET

http://www.c-sharpcorner.com/uploadfile/2f73dd/what-is-postback-in-Asp-Net/

## What is a postback?

http://stackoverflow.com/questions/183254/what-is-a-postback

## Page.IsPostBack Property

https://msdn.microsoft.com/en-us/library/system.web.ui.page.ispostback(v=vs.110).aspx

## Query Schema

https://msdn.microsoft.com/en-us/library/office/ms467521.aspx

## Using LINQ to SharePoint

https://msdn.microsoft.com/en-us/library/office/ee535491(v=office.14).aspx

## How to: Manually Generate LINQ to SharePoint Entity Classes by Using SPMetal

https://msdn.microsoft.com/en-us/library/ff798329.aspx

## Overriding SPMetal Defaults by Using a Parameters XML File
 
https://msdn.microsoft.com/en-us/library/office/ee535056(v=office.14).aspx
 
## Designing large lists and maximizing list performance (SharePoint Server 2010)

https://technet.microsoft.com/en-us/library/cc262813(v=office.14).aspx

## ContentIterator class

https://msdn.microsoft.com/en-us/library/microsoft.office.server.utilities.contentiterator.aspx
 
## SPQuery class

https://msdn.microsoft.com/library/microsoft.sharepoint.spquery

## SPSiteDataQuery class

https://msdn.microsoft.com/en-us/library/microsoft.sharepoint.spsitedataquery.aspx
 

## ConfigurationManager Class

https://msdn.microsoft.com/en-us/library/system.configuration.configurationmanager(v=vs.110).aspx

## Sharepoint: Table of list template IDs

http://www.whatsthatblogsname.com/2014/04/29/sharepoint-table-of-list-template-ids/
 
## How to avoid the Top 5 SharePoint Performance Mistakes
 
  http://apmblog.dynatrace.com/2010/03/18/how-to-avoid-the-top-5-sharepoint-performance-mistakes/

## SharePoint CAML Query Helper for 2007, 2010, 2013, Office 365 SharePoint Online

https://spcamlqueryhelper.codeplex.com/

## Automatically create Word documents which include list fields

https://blogs.technet.microsoft.com/brenclarke/2009/04/15/automatically-create-word-documents-which-include-list-fields/

## Query SharePoint Foundation with ADO.NET Data Services

https://msdn.microsoft.com/en-us/library/ee535480

## Using LINQ to SharePoint

https://msdn.microsoft.com/en-us/library/ee535491

## List Schema

https://msdn.microsoft.com/en-us/library/office/aa543477(v=office.15).aspx

## List Instances

https://msdn.microsoft.com/en-IN/library/ms478860(v=office.14).aspx

## How to: Provision a Document Set using CAML 
 
http://www.dotnetmafia.com/blogs/dotnettipoftheday/archive/2010/11/29/how-to-provision-a-document-set-using-caml.aspx

## SPListTemplateType enumeration

https://msdn.microsoft.com/en-us/library/microsoft.sharepoint.splisttemplatetype.aspx

## SPFieldType enumeration
 
https://msdn.microsoft.com/en-us/library/microsoft.sharepoint.spfieldtype.aspx

## Programmatically set value to the hyperlink field in SharePoint 2010
http://www.c-sharpcorner.com/blogs/programmatically-set-value-to-the-hyperlink-field-in-sharepoint-2010

## How to copy a Lookup field to another lookup field on another list?

http://sharepoint.stackexchange.com/questions/42769/how-to-copy-a-lookup-field-to-another-lookup-field-on-another-list

 
## Copy Multi-Lookups from Source to Destination Lists(CSOM C#)
  SPFieldLookupValueCollection lookupValues = (SPFieldLookupValueCollection)sourceItem["SourceLookup"];
   
  string col = lookupValues.ToString();   
  destinationItem["DestinationLookup"] = col;
 ## Copy Single-Lookups from Source to Destination Lists(CSOMC#)
 
 destinationItem["DestinationLookup"] = sourceItem["SourceLookup"].ToString();
 
 Pattern for Lookups: 1;#lookup1;2;#lookup2;3;#lookup(n)
 
## Combine Two ListItemCollection objects
 
http://sharepoint.stackexchange.com/questions/146242/combine-two-listitemcollection-objects

  ## CAML and the Client Object Model

https://karinebosch.wordpress.com/2012/02/03/caml-and-the-client-object-model/ 

## SharePoint: A Complete Guide to Getting and Setting Fields using C#

https://social.technet.microsoft.com/wiki/contents/articles/21801.sharepoint-a-complete-guide-to-getting-and-setting-fields-using-c.aspx

## Query All Folders and Files in Document Library

   SPList list = web.Lists.TryGetList("DocLib");
   
   SPQuery query = new SPQuery();//Query Library : All
   
   query.ViewAttributes = "Scope='RecursiveAll'";
   
   SPListItemCollection coll = list.GetItems(query);

## How to Change Column Type in SharePoint List using PowerShell

http://www.sharepointdiary.com/2013/09/change-column-type-in-list-using-powershell.html

## How to do a CAML Query through PowerShell

https://gallery.technet.microsoft.com/office/How-to-do-a-CAML-Query-6f5260cf

## CAML query to get the checked out files of the logedin user?

https://social.msdn.microsoft.com/Forums/en-US/8c0afd46-0f12-4251-aa65-29bfd446e8c4/caml-query-to-get-the-checked-out-files-of-the-logedin-user?forum=sharepointdevelopmentlegacy

## How to get all checked out files in SharePoint client object model c#?

http://sharepoint.stackexchange.com/questions/152852/how-to-get-all-checked-out-files-in-sharepoint-client-object-model-c

## How to: Create, Update, and Delete List Items(Client)

https://msdn.microsoft.com/en-us/library/office/ee539976(v=office.14).aspx


## How to: Add or Delete List Items(Object Model)

https://msdn.microsoft.com/en-us/library/office/ms467435(v=office.14).aspx

## Calculated Field Formulas

https://msdn.microsoft.com/en-us/library/office/bb862071(v=office.14).aspx

## DateRangesOverlap CAML Query Element 

http://www.provokesolutions.com/our-story/our-blog/using-the-daterangesoverlap-caml-query-element

## CamlQuery and Calendar Recurrence

https://social.technet.microsoft.com/Forums/sharepoint/en-US/c6e48820-52ab-4ea1-a41d-e13599abf35d/camlquery-and-calendar-recurrence?forum=sharepointdevelopment

## Create and configure a new Document Set content type

https://support.office.com/en-us/article/Create-and-configure-a-new-Document-Set-content-type-9db6d6dc-c23a-4dcd-a359-3e4bbbc47fc1

## Power BI 

https://powerbi.microsoft.com/en-us/integrations/sharepoint/

## Specify ListUrl for Event receiver

https://sharepoint.stackexchange.com/questions/153247/specify-listurl-for-event-receiver

## PowerShell Script for Setting the Welcome Page View of a document set

https://social.msdn.microsoft.com/Forums/sqlserver/en-US/d0371eb1-ead4-4311-b750-2189e93171c1/powershell-script-for-setting-the-welcome-page-view-of-a-document-set?forum=sharepointdevelopment

## Programmatically creating views for a SharePoint discussion forum

http://sunstriketechnology.blogspot.com/2009/11/programmatically-creating-views-for.html?m=1

## Managing, creating and deleting SharePoint list views with PowerShell

http://get-spscripts.com/2012/02/managing-creating-and-deleting.html
