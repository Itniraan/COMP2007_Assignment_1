<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/GameCalculator.Master" CodeBehind="default.aspx.cs" Inherits="COMP2007_Assignment_1._default" %>
<%@ Register Src="~/gameControl.ascx" TagPrefix="uc1" TagName="gameControl" %>

<asp:Content ID="content2" ContentPlaceholderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:gameControl runat="server" id="gameControl1" />
    </div>
    <div>
        <uc1:gameControl runat="server" id="gameControl2" />
    </div>
    <div>
        <uc1:gameControl runat="server" id="gameControl3" />
    </div>
    <div>
        <uc1:gameControl runat="server" id="gameControl4" />
    </div>
    <div>
        <asp:Button ID="btnSummary" Text="Summary" runat="server" OnClick="btnSummary_Click" />
    </div>
    <asp:Panel ID="pnlSummary" runat="server" Visible="false">
        <div>
            Games Won:
            <asp:Label ID="lblGamesWon" runat="server"></asp:Label>
        </div>
        <div>
            Games Lost:
            <asp:Label ID="lblGamesLost" runat="server"></asp:Label>
        </div>
        <div>
            Win Percentage:
        <asp:Label ID="lblWinPercent" runat="server"></asp:Label>
        </div>
        <div>
            Total Points Scored:
                <asp:Label ID="lblTotalPointsScored" runat="server"></asp:Label>
        </div>
        <div>
            Total Points Allowed:
            <asp:Label ID="lblTotalPointsAllowed" runat="server"></asp:Label>
        </div>
        <div>
            Point Differential:
            <asp:Label ID="lblPointDifferential" runat="server"></asp:Label>
        </div>
        <div>
            Total Spectators:
            <asp:Label ID="lblTotalSpectators" runat="server"></asp:Label>
        </div>
        <div>
            Average # of Spectators:
            <asp:Label ID="lblAverageSpectators" runat="server"></asp:Label>
        </div>
    </asp:Panel>
</asp:Content>
