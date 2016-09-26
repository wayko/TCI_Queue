<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="StudentLoanServ.aspx.vb" Inherits="WebApplication1.StudentLoanServ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="Stylesheet" type="text/css" href="FAQueueCSS.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
    
        SelectCommand="SELECT StuNum, QueueNum FROM FA_NewMgmtScreen_Vw ORDER BY SortOrder">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
    
        SelectCommand="SELECT StuNum, QueueNum FROM fa_NewHighMgmtScreen_Vw ORDER BY SortOrder">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
        DeleteCommand="DELETE FROM FaQueueOutput WHERE (StuNum = @faqoid)" 
        InsertCommand="INSERT INTO FaQueueOutput(StuNum, QueueNumber, CreateDate, Active) VALUES (@stunum, @queuenum, { fn NOW() }, 1)" 
        SelectCommand="SELECT StuNum, QueueNumber, Active FROM FaQueueOutput_Get_vw WHERE (Active = 1) ORDER BY FaQueueOutputID">
        <DeleteParameters>
            <asp:Parameter Name="faqoid" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stunum" Type="String" />
            <asp:Parameter Name="queuenum" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
        SelectCommand="SELECT StuNum, CmTemplateCode, Timespent, StudentType FROM FA_CounselorMgmtScreen_Vw">
    </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
        SelectCommand="SELECT StuNum FROM FA_CLosed_vw"></asp:SqlDataSource>
    <asp:Timer ID="Timer3" runat="server" Interval="30000">
</asp:Timer>
    <br />
    <br />
    <table>
                          <tr>
                           <td ><asp:Label ID="Label16" runat="server" Text="AKishore"></asp:Label></td>
                           <td><asp:Label ID="lblakis" runat="server" Text=""></asp:Label></td>
                            <td><asp:Label ID="lblakists" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lblakis1" runat="server" Text=""></asp:Label></td>
                            <td ><asp:Label ID="lblakists1" runat="server" Text=""></asp:Label></td>
                                <td ><asp:Label ID="Label31" runat="server" Text="ASalazar"></asp:Label></td>
                           <td><asp:Label ID="lblasal" runat="server" Text=""></asp:Label></td>
                            <td><asp:Label ID="lblasalts" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lblasal1" runat="server" Text=""></asp:Label></td>
                            <td><asp:Label ID="lblasalts1" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                            <td ><asp:Label ID="Label23" runat="server" Text="DMenor"></asp:Label></td>
                           <td><asp:Label ID="lbldmen" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lbldments" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lbldmen1" runat="server" Text=""></asp:Label></td>
                           <td ><asp:Label ID="lbldments1" runat="server" Text=""></asp:Label></td>
                           <td ><asp:Label ID="Label29" runat="server" Text="DRogers"></asp:Label></td>
                           <td><asp:Label ID="lbldrog" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lbldrogts" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lbldrog1" runat="server" Text=""></asp:Label></td>
                           <td><asp:Label ID="lbldrogts1" runat="server" Text=""></asp:Label></td>
                          </tr>
                          <tr>
                         <td><asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></td>
                         </tr>
                          </table>
    <br />
    <br />
     <table>           
           <tr>
            <td >
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Width="162px" height="5px" style="text-align: center;overflow:hidden" ShowFooter="False">
        <HeaderTemplate>
            <h1 class="style4">
              <span class="style5" style="text-align: center"><strong style="text-align: left">Student Loan Service</strong></span>
             <%-- <br /> <asp:Label ID="cntNewLN" runat="server" Text='' class="style51a" style="text-align: center"/>
              <span class="style51a" style="text-align: center"><strong>Low &amp; Normal</strong></span>--%>
              </h1>
        </HeaderTemplate>
        <ItemTemplate>
           <asp:Label ID="StuNumLabel" runat="server" Text='<%# Eval("StuNum") %>' />
           <asp:Label ID="QueueNumLabel" runat="server" Text='<%# Eval("QueueNum") %>' />
           <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">Call</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
    </td>
   
            <td class="one">
            
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
               Width="162px" style="text-align: center">
                <HeaderTemplate>
                    <h1 class="style41">
              <span class="style6"><strong>AR Services</strong> </span>
             
                  <br />
                  <%-- <asp:Label ID="cntNewLN1" runat="server" Text='' class="style61" style="text-align: center"/>
                        <span class="style61"><strong>High</strong></span></h1>--%>
                </HeaderTemplate>
        <ItemTemplate>
           <asp:Label ID="StuNumLabel" runat="server" Text='<%# Eval("StuNum") %>' />
           <asp:Label ID="QueueNumLabel" runat="server" Text='<%# Eval("QueueNum") %>' />
            <asp:LinkButton ID="lnkEdit1" runat="server" CommandName="Edit">Call</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList></td>
    </table>
</asp:Content>
