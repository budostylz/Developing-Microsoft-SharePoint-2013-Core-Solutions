using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using System.Web.UI.WebControls;

namespace AddressFieldType
{
  public class NaAddressFieldControl : BaseFieldControl
  {
    private const string RENDERING_TEMPLATE = "NaAddressFieldControlTemplate";

    protected override string DefaultTemplateName
    {
      get { return RENDERING_TEMPLATE; }
    }

    protected TextBox Street1TextBox;
    protected TextBox Street2TextBox;
    protected TextBox CityTextBox;
    protected TextBox StateTextBox;
    protected TextBox ZipTextBox;

    protected override void CreateChildControls()
    {
      if (this.Field == null
          || this.ControlMode == SPControlMode.Display
          || this.ControlMode == SPControlMode.Invalid)
        return;

      base.CreateChildControls();

      Street1TextBox = TemplateContainer.FindControl("Street1TextBox") as TextBox;
      if (Street1TextBox == null)
        throw new ArgumentNullException("Street 1 textbox not found. Please check the control template.");

      Street2TextBox = TemplateContainer.FindControl("Street2TextBox") as TextBox;
      if (Street2TextBox == null)
        throw new ArgumentNullException("Street 2 textbox not found. Please check the control template.");

      CityTextBox = TemplateContainer.FindControl("CityTextBox") as TextBox;
      if (CityTextBox == null)
        throw new ArgumentNullException("City textbox not found. Please check the control template.");

      StateTextBox = TemplateContainer.FindControl("StateTextBox") as TextBox;
      if (StateTextBox == null)
        throw new ArgumentNullException("State textbox not found. Please check the control template.");

      ZipTextBox = TemplateContainer.FindControl("ZipTextBox") as TextBox;
      if (ZipTextBox == null)
        throw new ArgumentNullException("zip textbox not found. Please check the control template.");
    }

    public override object Value
    {
      get
      {
        EnsureChildControls();
        NaAddressFieldValue fieldValue = new NaAddressFieldValue()
        {
          Street1 = Street1TextBox.Text,
          Street2 = Street2TextBox.Text,
          City = CityTextBox.Text,
          StateCode = StateTextBox.Text,
          ZipCode = ZipTextBox.Text
        };
        return fieldValue;
      }
      set
      {
        EnsureChildControls();

        if (value != null && !string.IsNullOrEmpty(value.ToString()))
        {
          NaAddressFieldValue fieldValue = new NaAddressFieldValue(value.ToString());
          Street1TextBox.Text = fieldValue.Street1;
          Street2TextBox.Text = fieldValue.Street2;
          CityTextBox.Text = fieldValue.City;
          StateTextBox.Text = fieldValue.StateCode;
          ZipTextBox.Text = fieldValue.ZipCode;
        }
      }
    }

  }
}
