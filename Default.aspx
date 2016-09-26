<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
   
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
        
    <asp:Button ID="Button1" runat="server" Text="Goto CVO" class="buttons"/>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Goto Financial Aid"  class="buttons"/>
    <br />
    <asp:Button ID="Button3" runat="server" Text="Goto Student Queue" class="buttons" />
    <br />
    <asp:Button ID="Button4" runat="server" Text="Goto Texting Apps" class="buttons" />
    </asp:Content>
