<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/HomeMaster.mobile.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlowC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--wow comments are so weird thanks for making commenting such a hastle HTML-->

    <div class="jumbotron">

        <!-- Directory Panel -->
        <asp:Panel ID="DirectoryPanel" runat="server" Visible="false">

            <strong>Send Money to Who?</strong><br />
            <asp:ListBox ID="DirectoryListBox" runat="server" Height="139px" Width="197px"></asp:ListBox><br />
            <br />

            <asp:Button ID="DirectoryOK" runat="server" Style="margin-bottom: 6" Text="OK" Width="99px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="DirectoryCancel" runat="server" Text="Cancel" Width="92px" />
        </asp:Panel>

        <!-- SendMoney Panel -->
        <asp:Panel ID="SendMoneyPanel" runat="server" Visible="false" >
            <table style="border-style: none; width: 316px; margin: 0" align="center">
                <tr>
                    <td class="text-center" colspan="3" style="height: 21px"><strong>Send Money:</strong></td>
                </tr>

                <!-- From -->
                <tr>
                    <td class="text-left" style="width: 50px; height: 21px">From:</td>
                    <td style="height: 21px; width: 50px;">
                        <asp:Label ID="SendFromLBL" runat="server" Text="57174\"></asp:Label></td>

                    <!-- From Bank RBUTTON -->
                    <td style="height: 21px; width: 250px;">
                        <asp:RadioButton ID="UMSNBRButtonSend" runat="server" GroupName="SendFrom" Text="UMSNB" />&nbsp;
                        <asp:RadioButton ID="GBANKRButtonSend" runat="server" GroupName="SendFrom" Text="GBANK" />&nbsp;
                        <asp:RadioButton ID="RIVERRButtonSend" runat="server" GroupName="SendFrom" Text="RIVER" />
                    </td>
                </tr>

                <!-- To -->
                <tr>
                    <td class="text-left" style="width: 50px; height: 20px">To:</td>
                    <td style="height: 20px; width: 50px;">
                        <asp:Label ID="SendToLBL" runat="server" Text="Label"></asp:Label></td>

                    <!-- To BANK RBUTTON -->
                    <td style="height: 20px; width: 250px;">
                        <asp:RadioButton ID="UMSNBRButtonSendTo" runat="server" GroupName="SendTo" Text="UMSNB" />&nbsp;
                        <asp:RadioButton ID="GBANKRButtonSendTo" runat="server" GroupName="SendTo" Text="GBANK" />&nbsp;
                        <asp:RadioButton ID="RIVERRButtonSendTo" runat="server" GroupName="SendTo" Text="RIVER" />
                    </td>
                </tr>

                <!-- Buttons -->
                <tr>
                    <td class="text-left" style="width: 50px; height: 20px">Amount</td>
                    <td style="height: 20px; width: 50px;"></td>
                    <td style="height: 20px; width: 250px;"><strong>
                        <asp:TextBox ID="SendAmountTXB" runat="server" TextMode="Number" Width="200px"></asp:TextBox>
                    </strong></td>
                </tr>
            </table>
            <br />
                    <asp:Button ID="SendMoneyOK" runat="server" Text="OK" Width="92px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SendMoneyCancel" runat="server" Text="Cancel" Width="92px" />
            <br />
        </asp:Panel>

        <asp:Panel ID="TransferPanel" runat="server" Visible="False">
            <table align="center" style="margin: 0 auto">
                <tr>
                    <td class="text-center" colspan="2"><strong>Transfer Money:</strong></td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 82px">From:</td>
                    <td>
                        <asp:RadioButton ID="UMSNBRButtonTFrom" runat="server" GroupName="A" Text="UMSNB" />&nbsp;
                        <asp:RadioButton ID="GBANKRButtonTFrom" runat="server" GroupName="A" Text="GBANK" />&nbsp;
                        <asp:RadioButton ID="RIVERRButtonTFrom" runat="server" GroupName="A" Text="RIVER" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 82px; height: 20px">To:</td>
                    <td style="height: 20px">
                        <asp:RadioButton ID="UMSNBRButtonTTo" runat="server" GroupName="B" Text="UMSNB" />&nbsp;
                        <asp:RadioButton ID="GBANKRButtonTTo" runat="server" GroupName="B" Text="GBANK" />&nbsp;
                        <asp:RadioButton ID="RIVERRButtonTTo" runat="server" GroupName="B" Text="RIVER" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 22px; width: 82px">Amount:</td>
                    <td class="text-center" style="height: 22px">
                        <asp:TextBox ID="TransferAmountTXB" runat="server" TextMode="Number" ViewStateMode="Disabled" Width="199px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="TransferMoneyOK" runat="server" Text="OK" Width="92px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="TransferMoneyCancel" runat="server" Text="Cancel" Width="92px" />
            <br />
        </asp:Panel>


    </div>
</asp:Content>

<asp:Content ID="User" ContentPlaceHolderID="UserInfo" runat="server">
    <!--Oh jesus-->
    <div style="text-align: center">
        <table align="center" aria-orientation="horizontal" class="auto-style2" spellcheck="false" style="width: 75%">
            <tr>
                <td class="text-left" colspan="3" style="width: 100%"><span style="font-family: Arial; font-size: large"><strong>
                    <asp:Label ID="MainScreenUsernamelabel" runat="server" Style="font-size: xx-large" Text="THE SAINT JOHN PAUL II CHARITY (57174)"></asp:Label>
                </strong></span></td>
            </tr>
            <tr>
                <td class="text-left" style="height: 20px"><span style="font-family: Arial"><span style="font-size: small">
                    <asp:CheckBox ID="UMSNBCheck" runat="server" Enabled="False" Font-Size="Small" Style="background-color: #EEEEEE" Text=" " />
                    <asp:LinkButton ID="UMSNBHyperlink" runat="server">UMSNB</asp:LinkButton>
                    <span style="background-color: #EEEEEE">&nbsp; </span>
                    <asp:CheckBox ID="GBANKCheck" runat="server" Enabled="False" Font-Size="Small" Style="background-color: #EEEEEE" Text=" " />
                    <span style="background-color: #EEEEEE">
                        <asp:LinkButton ID="GBANKHyperlink" runat="server">GBANK</asp:LinkButton>
                        &nbsp; </span>
                    <asp:CheckBox ID="RIVERCheck" runat="server" Enabled="False" Font-Bold="False" Font-Size="Small" Style="background-color: #EEEEEE" Text=" " />
                    <asp:LinkButton ID="RIVERHyperlink" runat="server">RIVER</asp:LinkButton>
                    &nbsp;&nbsp;
                </span></span>&nbsp;&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Style="font-size:x-small margin-bottom: 6" Text="Refresh" Height="20px" /></td>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="3" style="height: 20px">
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="text-left" style="height: 20px">UMS National Bank</td>
                <td class="text-right" style="height: 20px;">
                    <asp:Label ID="UMSBLabel" runat="server" Text="Label"></asp:Label>
                    p</td>
            </tr>
            <tr>
                <td class="text-left" style="height: 20px">GBank</td>
                <td class="text-right" style="height: 20px;">
                    <asp:Label ID="GBANKBLabel" runat="server" Text="Label"></asp:Label>
                    p</td>
            </tr>
            <tr>
                <td class="text-left" style="height: 20px">Riverside Bank</td>
                <td class="text-right" style="height: 20px">
                    <asp:Label ID="RIVERBLabel" runat="server" Text="Label"></asp:Label>
                    p</td>
            </tr>
            <tr>
                <td class="text-right" style="">&nbsp;</td>
                <td class="text-right" style="">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" colspan="1" style="height: 20px;"><strong>Total</strong></td>
                <td class="text-right" style="height: 20px;">
                    <asp:Label ID="TotalBLabel" runat="server" Text="Label"></asp:Label>
                    p</td>
            </tr>
            <tr>
                <td class="text-center" colspan="3" style="height: 20px;">
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Button ID="SendMoneyButton" runat="server" Text="Send" Width="99px"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="TransferMoneyButton" runat="server" Text="Transfer" Width="99px" /> </td>
                <td class="text-center"><asp:Button ID="LogoutButton" runat="server" Style="margin-bottom: 6" Text="Logout" Width="99px" /></td>
            </tr>
            <tr>
                <td class="text-center"></td>
            </tr>
        </table>
    </div>

</asp:Content>
