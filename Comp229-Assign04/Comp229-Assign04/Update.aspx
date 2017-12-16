<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div>
        <h4>Update Model.</h4>
         <div class="col-xs-12 col-md-4">
        <table>
            <tr><td>Name of the Model:</td><td>
                    <asp:TextBox runat="server" ID="name"></asp:TextBox>
                </td></tr>
            <tr><td>Faction:</td><td>
                    <asp:TextBox runat="server" ID="faction"></asp:TextBox>
                </td> </tr>
            <tr><td>Rank:</td><td>
                    <asp:TextBox runat="server" ID="rank"></asp:TextBox>
                </td> </tr>
            <tr><td>Base:</td> <td>
                    <asp:TextBox runat="server" ID="_base"></asp:TextBox>
                </td> </tr>
            <tr><td>Size:</td><td>
                    <asp:TextBox runat="server" ID="size"></asp:TextBox>
                </td></tr>
            <tr><td>Deployment Zone:</td><td>
                    <asp:TextBox runat="server" ID="deployment"></asp:TextBox>
                </td></tr>
            <tr><td>Traits:</td><td>
                    <asp:Repeater runat="server" ID="traitsrep">
                        <ItemTemplate>
                            <asp:TextBox runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:TextBox>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater> </td></tr>
            <tr><td>Types:</td><td>
                    <asp:Repeater runat="server" ID="typerep">
                        <ItemTemplate>
                            <asp:TextBox runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:TextBox>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater></td> </tr>
            <tr><td>Mobility:</td><td>
                    <asp:TextBox runat="server" ID="mobility"></asp:TextBox>
                </td></tr>
            <tr><td>Will Power:</td> <td>
                    <asp:TextBox runat="server" ID="willpower"></asp:TextBox>
                </td> </tr>
            <tr><td>Resiliance:</td><td>
                    <asp:TextBox runat="server" ID="resiliance"></asp:TextBox>
                </td></tr>
            <tr><td>Wounds:</td><td>
                    <asp:TextBox runat="server" ID="wounds"></asp:TextBox>
                </td></tr>
        </table>

    </div>
        </div>

</asp:Content>
