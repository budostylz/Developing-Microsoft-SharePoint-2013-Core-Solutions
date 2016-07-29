using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;

namespace AddressFieldType
{
  public class NaAddressField : SPFieldMultiColumn
  {
    public NaAddressField(SPFieldCollection fields, string fieldName)
      : base(fields, fieldName) { }

    public NaAddressField(SPFieldCollection fields, string typeName, string displayName)
      : base(fields, typeName, displayName) { }

    public override object GetFieldValue(string value)
    {
      return string.IsNullOrEmpty(value) ? null : new NaAddressFieldValue(value);
    }

    public override BaseFieldControl FieldRenderingControl
    {
      get
      {
        BaseFieldControl control = new NaAddressFieldControl()
        {
          FieldName = this.InternalName
        };
        return control;
      }
    }

    public override string GetValidatedString(object value)
    {
      if (value == null)
      {
        // if nothing in the field and it's reqired, throw SP error
        if (this.Required) throw new SPFieldValidationException("Invalid value for required field.");
        return string.Empty;
      }
      else
      {
        NaAddressFieldValue field = value as NaAddressFieldValue;
        // if no value returned, error in the field
        if (field == null) throw new ArgumentException("Invalid Value.");

        // if the field is required...
        if (this.Required)
        {
          // ensure that the street 1, city, state & zip are included
          //    street 2 is always optional
          if (string.IsNullOrEmpty(field.Street1) || string.IsNullOrEmpty(field.City) ||
                string.IsNullOrEmpty(field.StateCode) || string.IsNullOrEmpty(field.ZipCode))
            throw new SPFieldValidationException("Street1, City, State and Zip must be completed as a minimal requirement for this field.");
        }
        else
        {
          // not required... so check if anything is filled in... 
          //    if so, make sure the minimal fields are filled in
          if (!string.IsNullOrEmpty(field.Street1) || !string.IsNullOrEmpty(field.Street2) ||
                !string.IsNullOrEmpty(field.City) || !string.IsNullOrEmpty(field.StateCode) ||
                !string.IsNullOrEmpty(field.ZipCode))
          {
            // something was filled in... 
            //  so make sure that at least the minimal ones are filled in
            if (string.IsNullOrEmpty(field.Street1) || string.IsNullOrEmpty(field.City) ||
                  string.IsNullOrEmpty(field.StateCode) || string.IsNullOrEmpty(field.ZipCode))
              throw new SPFieldValidationException("Street1, City, State and Zip must be completed as a minimal requirement for this field.");
          }
        }

        // else everything is good to kick back the string value of the field
        return field.ToString();
      }
    }
  }
}