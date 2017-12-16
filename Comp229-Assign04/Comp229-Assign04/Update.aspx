<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div>
        <h4>Update Model.</h4>
         <div class="col-xs-12 col-md-4">
        <table>

        <tr><td>Name:</td><td>
        <asp:TextBox ID="modelName" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Faction:</td><td>
        <asp:TextBox ID="modelFaction" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Rank:</td><td>
        <asp:TextBox ID="modelRank" runat="server" CssClass="table" Width="150px" Enabled="false" /></td></tr>

        <tr><td>Base:</td><td>
        <asp:TextBox ID="modelBase" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Size:</td><td>
        <asp:TextBox ID="modelSize" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Deployment Zone:</td><td>
        <asp:TextBox ID="modelDeploymentZone" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Traits:</td><td>
        <asp:Repeater runat="server" ID="traitsrep">
            <ItemTemplate>
                <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
            <br />
            </ItemTemplate>
        </asp:Repeater></td></tr>

        <tr><td>Types:</td><td>
        <asp:Repeater runat="server" ID="typerep">
            <ItemTemplate>
                <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
            <br />
            </ItemTemplate>
        </asp:Repeater></td></tr>

        <tr><td>Mobility:</td><td>
        <asp:TextBox ID="modelMobility" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Will Power:</td><td>
        <asp:TextBox ID="modelWillpower" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Resiliance:</td><td>
        <asp:TextBox ID="modelResiliance" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td>Wounds:</td><td>
        <asp:TextBox ID="modelWounds" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>
        </table>

        <div style="clear:both"></div>
        
        <div>
        <table>
            <asp:Button ID="update" runat="server" Text="Update Changes" OnClick="update_Click" />
            <asp:Label ID="updateLabel" runat="server"></asp:Label>
        </table>
        </div>

        </div>
    </div>

</asp:Content>
