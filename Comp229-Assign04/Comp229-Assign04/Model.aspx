<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Model" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
   
        <table>
            <tr>
                    <asp:Image runat="server" ID="modelimg" CssClass="img-thumbnail" Width="300px" />
            </tr> 
            <tr><td>Name:</td><td>
                    <asp:Label runat="server" ID="name"></asp:Label>
                </td></tr>
            <tr><td>Faction:</td><td>
                    <asp:Label runat="server" ID="faction"></asp:Label>
                </td> </tr>
            <tr><td>Rank:</td><td>
                    <asp:Label runat="server" ID="rank"></asp:Label>
                </td> </tr>
            <tr><td>Base:</td> <td>
                    <asp:Label runat="server" ID="_base"></asp:Label>
                </td> </tr>
            <tr><td>Size:</td><td>
                    <asp:Label runat="server" ID="size"></asp:Label>
                </td></tr>
            <tr><td>Deployment Zone:</td><td>
                    <asp:Label runat="server" ID="deployment"></asp:Label>
                </td></tr>
            <tr><td>Traits:</td><td>
                    <asp:Repeater runat="server" ID="traitsrep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater> </td></tr>
            <tr><td>Types:</td><td>
                    <asp:Repeater runat="server" ID="typerep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater></td> </tr>
            <tr><td>Mobility:</td><td>
                    <asp:Label runat="server" ID="mobility"></asp:Label>
                </td></tr>
            <tr><td>Will Power:</td> <td>
                    <asp:Label runat="server" ID="willpower"></asp:Label>
                </td> </tr>
            <tr><td>Resiliance:</td><td>
                    <asp:Label runat="server" ID="resiliance"></asp:Label>
                </td></tr>
            <tr><td>Wounds:</td><td>
                    <asp:Label runat="server" ID="wounds"></asp:Label>
                </td></tr>
        </table>

    </div>

    <div style="clear:both"></div>
        <div>
            <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" Width="150px" />
            <br />
            <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" Text="Delete" Width="150px" />
        </div>

</asp:Content>
