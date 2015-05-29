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
</asp:Content>
