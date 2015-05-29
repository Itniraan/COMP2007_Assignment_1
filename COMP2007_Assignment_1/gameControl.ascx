<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="gameControl.ascx.cs" Inherits="COMP2007_Assignment_1.gameControl" %>

<asp:Panel ID="game" runat="server">
    <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label>
    <asp:RadioButtonList ID="rblResult" runat="server">
        <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
        <asp:ListItem Value="Lose" Text="Lose"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="lblPointsScored" runat="server" Text="Points Scored: "></asp:Label>
    <asp:TextBox ID="txtPointsScored" runat="server">

    </asp:TextBox>
    <asp:Label ID="lblPointsAllowed" runat="server" Text="Points Allowed: "></asp:Label>
    <asp:TextBox ID="txtPointsAllowed" runat="server">

    </asp:TextBox>
    <asp:Label ID="lblSpectators" runat="server" Text="Spectators: "></asp:Label>
    <asp:TextBox ID="txtSpectators" runat="server">

    </asp:TextBox>
</asp:Panel>