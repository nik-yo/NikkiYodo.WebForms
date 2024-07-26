using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NikkiYodo.UserControl
{
    public partial class SearchControl : System.Web.UI.UserControl
    {

        #region Properties
        public string Placeholder { get; set; }
        public string CssClass { get; set; }
        public string OnKeyUp { get; set; }
        public string OnClientSearchClick { get; set; }
        public string Text
        {
            get { return txtSearch.Text; }
            set { txtSearch.Text = value; }
        }
        #endregion

        #region Events
        public event EventHandler Search;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            txtSearch.Attributes.Add("placeholder", Placeholder);
            if (!string.IsNullOrEmpty(OnKeyUp))
            {
                txtSearch.Attributes.Add("onkeyup", OnKeyUp);
            }
            if ((Search == null) && (string.IsNullOrEmpty(OnClientSearchClick)))
            {
                btnSearch.Attributes.Add("onclick", "return false;");
            }
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            if (Search != null)
            {
                Search(sender, e);
            }                
        }
    }
}