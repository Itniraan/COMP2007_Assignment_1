using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment_1
{
    public partial class gameControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String winLossResult
        {
            get
            {
                return rblResult.SelectedValue;
            }
        }
        public Decimal pointsScoredResult
        {
            get
            {
                return Convert.ToDecimal(txtPointsScored.Text);
            }
        }
        public Decimal pointAllowedResult
        {
            get
            {
                return Convert.ToDecimal(txtPointsAllowed.Text);
            }
        }
        public Decimal spectatorsResult
        {
            get
            {
                return Convert.ToDecimal(txtSpectators.Text);
            }
        }
    }
}