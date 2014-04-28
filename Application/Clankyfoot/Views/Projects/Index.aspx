<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Dashboard.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Clankyfoot.Models.Project>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Project Dashboard
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div>
        <ul>
            <% foreach(Clankyfoot.Models.Project item in Model) { %>
                <li id="<%: item.id %>">
                     <h4>Project Name:</h4> <%: item.name %><br />
                     <h4>Team Leader: </h4><%: item.teamLead %><br />
                     <p>Date Created: <%: item.dateCreated %></p>
                </li>
            <% } %>
        </ul>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
