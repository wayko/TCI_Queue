<%@ Page Title="" Language="vb" AutoEventWireup="false"  MasterPageFile="~/Site2.Master" CodeBehind="QueueTest.aspx.vb" Inherits="WebApplication1.QueueOutput1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
            SelectCommand="SELECT QueueNumber, StuNum, FaQueueOutputID, CreateDate FROM FaQueueOutput WHERE (Active = 1) AND (DATEDIFF(dd, CONVERT (varchar(16), CreateDate, 101), CONVERT (varchar(16), { fn NOW() }, 101)) = 0) ORDER BY FaQueueOutputID" 
            ProviderName="<%$ ConnectionStrings:QueueConnectionString1.ProviderName %>">
    </asp:SqlDataSource>
    <asp:Timer ID="Timer3" runat="server" Interval="30000">
    </asp:Timer>
    <asp:Label ID="Welcome" runat="server" ForeColor="#ffffff" Font-Bold="True" 
            style="font-size: xx-large">Now Serving</asp:Label>
         

    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
    <img src="Images/loader.gif" alt="Load Icon" style="width: 64px; height: 55px" />
    <asp:Label runat="server" Text="Updating........." style="color: #ffffff" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label> 
    </ProgressTemplate>
    </asp:UpdateProgress>
     
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:DataList ID="DataList1" runat="server" BackColor="Black" 
    BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" Width="72px" 
        EnableTheming="False" RepeatColumns="2" RepeatDirection="Horizontal" 
        ShowFooter="False" Font-Size="XX-Large">
        <FooterStyle BackColor="#000000" ForeColor="#ff0000" />
        <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="#ff0000" />
        <ItemStyle BackColor="#000000" ForeColor="#ff0000" />
        <ItemTemplate>
            <asp:Label ID="QueueNumberLabel" runat="server" 
            Text='<%# Eval("QueueNumber") %>' />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
    </asp:DataList>
    </ContentTemplate>
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID="Timer3" EventName="Tick" />
    </Triggers>
    </asp:UpdatePanel>   
       
       
           
       
            
       
</asp:Content>
