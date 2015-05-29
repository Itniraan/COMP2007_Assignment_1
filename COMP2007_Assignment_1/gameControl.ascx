<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="gameControl.ascx.cs" Inherits="COMP2007_Assignment_1.gameControl" %>

<asp:Panel ID="game" runat="server">
    <div>
        <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Must choose a result, win or lose!" CssClass="label label-danger" ControlToValidate="rblResult" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RadioButtonList ID="rblResult" runat="server">
            <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
            <asp:ListItem Value="Lose" Text="Lose"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>
        <asp:Label ID="lblPointsScored" runat="server" Text="Points Scored: "></asp:Label>
        <asp:TextBox ID="txtPointsScored" runat="server" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required!" CssClass="label label-danger" ControlToValidate="txtPointsScored" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="This field must be numeric, and must be between 0 and 100" CssClass="label label-danger" ControlToValidate="txtPointsScored" Display="Dynamic" MinimumValue="0" MaximumValue="100" Type="Integer"></asp:RangeValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Points Scored and Points Allowed must not be the same. No ties!" CssClass="label label-danger" Display="Dynamic" ControlToValidate="txtPointsScored" ControlToCompare="txtPointsAllowed" Operator="NotEqual"></asp:CompareValidator>
    </div>
    <div>
        <asp:Label ID="lblPointsAllowed" runat="server" Text="Points Allowed: "></asp:Label>
        <asp:TextBox ID="txtPointsAllowed" runat="server" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required!" CssClass="label label-danger" ControlToValidate="txtPointsAllowed" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="This field must be numeric, and must be between 0 and 100" CssClass="label label-danger" ControlToValidate="txtPointsAllowed" Display="Dynamic" MinimumValue="0" MaximumValue="100" Type="Integer"></asp:RangeValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Points Scored and Points Allowed must not be the same. No ties!" CssClass="label label-danger" Display="Dynamic" ControlToValidate="txtPointsAllowed" ControlToCompare="txtPointsScored" Operator="NotEqual"></asp:CompareValidator>
    </div>
    <div>
        <asp:Label ID="lblSpectators" runat="server" Text="Spectators: "></asp:Label>
        <asp:TextBox ID="txtSpectators" runat="server" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required!" CssClass="label label-danger" ControlToValidate="txtSpectators" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="This field must be numeric, and must be between 0 and 10,000" CssClass="label label-danger" ControlToValidate="txtSpectators" Display="Dynamic" MinimumValue="0" MaximumValue="10000" Type="Integer"></asp:RangeValidator>
    </div>
</asp:Panel>