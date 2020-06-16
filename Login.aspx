<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FlowC.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="jumbotron" style="width:100%">
        <div class="jumbotron" style="width:50%; margin: 0 auto; text-align:center; background-color:lightgray">
            <img src="Content/FlowBadge.png" alt="FLoW badge" style="width:289px;height:100px">
            <br><br>
            <p class="lead">Welcome to FLoW!</p>
           

            <div>
                <table style="width:25%; margin:2px auto">
                    <tr>
                        <td style="vertical-align:central;text-align:right;font-family:monospace">ID:</td>
                        <td style="vertical-align:central"><asp:TextBox ID="LogonID" runat="server" Width="100px" MaxLength="5" ToolTip="Your UMSWEB ID" TabIndex-="1"></asp:TextBox><br /></td>
                        <td style="vertical-align:central" rowspan="2"></td>
                        <td style="vertical-align:central" rowspan="2"><asp:Button ID="LogonBTN" runat="server" Width="70px" CssClass="btn btn-primary btn-sm" Text="Logon" TabIndex="4" ToolTip="Click this to Log In" OnClick="LogonBTN_Click" /></td>
                    </tr>
                    <tr>
                        <td style="vertical-align:central;text-align:right;font-family:monospace">PIN:</td>
                        <td style="vertical-align:central"><asp:TextBox ID="LogonPin" runat="server" Width="100px" MaxLength="4" TabIndex="2" TextMode="Password" ToolTip="Your UMSWEB Pin"></asp:TextBox> <br /></td>
                    </tr>

                </table>

            </div>
                
                <br />
            or<br />
                <asp:Button ID="RegisterBTN" runat="server" Width="25%" CssClass="btn btn-primary btn-sm" padding="10px" Text="Register" TabIndex="3" ToolTip="Click this to Register" />
                
            <br />
                
            <br />
            <asp:Panel ID="NotifPanel" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Inset" Height="75px" style="margin-bottom: 0px" Visible="False">
                <div class="text-center" style="height:75px">
                    <strong>NOTE<br /> </strong>
                    <asp:Label ID="NotifLabel" runat="server" Text="The notification sub seems to have been sent an incorrect value!"></asp:Label>
                    <strong>
				<br />
				    </strong>
                </div>
            </asp:Panel>
                
    </div>
    
    </div>
</asp:Content>