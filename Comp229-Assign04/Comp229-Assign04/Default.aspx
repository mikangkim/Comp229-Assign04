<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <a href="Model.aspx">
        <img src="image/main.gif"/></a>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Wrath of Kings is</h2>
            <p>
                A miniatures war game, where players take command of the armies of one of the five kingdoms of Arikania! Scalable from 10 to 50 models per side, now you can vie for the throne of the Ancient King!</p>
            <p>
                <a class="btn btn-default" href="http://wrathofkings.com/ks/overview/">More Information &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get Your Models</h2>
 
             <table>
        <asp:Repeater ID="library" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# string.Format("~/Model.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>' >
                            <asp:Label runat="server" Text='<%# Eval("name")%>' ForeColor="Black">  </asp:Label>
                        </asp:HyperLink>
                    </td>
                    <td>

                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
</table>
            <p>
                <a class="btn btn-default" href="Model.aspx">Check More &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Media</h2>
<iframe width="350" height="250" src="https://www.youtube.com/embed/cm_Xz1-hJ5k"></iframe>

        </div>
    </div>

</asp:Content>
