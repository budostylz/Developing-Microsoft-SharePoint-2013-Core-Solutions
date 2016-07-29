using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint;

namespace AddressFieldType
{
  public class NaAddressFieldValue : SPFieldMultiColumnValue
  {
    private const int NumberOfColumns = 5;

    public NaAddressFieldValue() : base(NumberOfColumns) { }
    public NaAddressFieldValue(string value) : base(value) { }

    public string Street1
    {
      get { return this[0]; }
      set { this[0] = value; }
    }
    public string Street2
    {
      get { return this[1]; }
      set { this[1] = value; }
    }
    public string City
    {
      get { return this[2]; }
      set { this[2] = value; }
    }

    public string StateCode
    {
      get { return this[3]; }
      set { this[3] = value; }
    }

    public string ZipCode
    {
      get { return this[4]; }
      set { this[4] = value; }
    }

  }
}
