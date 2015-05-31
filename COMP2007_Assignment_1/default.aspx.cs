using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment_1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSummary_Click(object sender, EventArgs e)
        {
            // Variables for totals
            int gamesWon = 0;
            int gamesLost = 0;
            Decimal totalPointsScored = 0;
            Decimal totalPointsAllowed = 0;
            Decimal totalSpectators = 0;


            // This section checks the win/loss results of all four games, and totals them into two variables (a win total, and a loss total)
            if (gameControl1.winLossResult == "Win")
            {
                gamesWon++;
            }
            else 
            {
                gamesLost++;
            }
            if (gameControl2.winLossResult == "Win")
            {
                gamesWon++;
            }
            else 
            {
                gamesLost++;
            } 
            if (gameControl3.winLossResult == "Win")
            {
                gamesWon++;
            }
            else 
            {
                gamesLost++;
            }
            if (gameControl4.winLossResult == "Win")
            {
                gamesWon++;
            }
            else
            {
                gamesLost++;
            }

            // Total up total points scored, total points allowed, and total spectators
            totalPointsScored = (gameControl1.pointsScoredResult + gameControl2.pointsScoredResult + gameControl3.pointsScoredResult + gameControl4.pointsScoredResult);
            totalPointsAllowed = (gameControl1.pointAllowedResult + gameControl2.pointAllowedResult + gameControl3.pointAllowedResult + gameControl4.pointAllowedResult);
            totalSpectators = (gameControl1.spectatorsResult + gameControl2.spectatorsResult + gameControl3.spectatorsResult + gameControl4.spectatorsResult);

            // Calculate win percentage, and add it to summary label
            lblWinPercent.Text = (Convert.ToDecimal(gamesWon) / 4).ToString();

            // Convert totals to strings, and add them to summary labels
            lblGamesWon.Text = gamesWon.ToString();
            lblGamesLost.Text = gamesLost.ToString();
            lblTotalPointsScored.Text = totalPointsScored.ToString();
            lblTotalPointsAllowed.Text = totalPointsAllowed.ToString();
            lblTotalSpectators.Text = totalSpectators.ToString();
            
            // Calculate point differential, and add it to summary label
            lblPointDifferential.Text = (totalPointsScored - totalPointsAllowed).ToString();
            // Calculate average number of spectators, and add it to summary label
            lblAverageSpectators.Text = (totalSpectators / 4).ToString();

            // Make the summary panel visible, once all calculations are complete
            pnlSummary.Visible = true;
        }
    }
}