<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Model" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
  
        <table>
        <tr><asp:Image runat="server" ID="modelImg" CssClass="img-thumbnail" Width="250px" /></tr>  
        
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

    </div>

    <div style="clear:both"></div>

    <div>
        <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" Width="150px" CssClass="btn brn-md btn-primary" />
        <br />
        <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Save" CssClass="btn brn-md btn-success" Visible="false" />                 ValidationGroup="Update"/>
        <br />
        <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" Text="Delete" Width="150px" />
    </div>

</asp:Content>
