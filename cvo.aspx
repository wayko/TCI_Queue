<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="cvo.aspx.vb" Inherits="WebApplication1.cvo" %>
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
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
          ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
          SelectCommand="SELECT * FROM [FA_CLosed_vw]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
    SelectCommand="SELECT * FROM [FA_CLosed_vw]"></asp:SqlDataSource>
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
<br />
    <table>
                          <tr>
                            <td ><asp:Label ID="Label1" runat="server" Text="John"></asp:Label></td>
                           <td><asp:Label ID="lbljohn" runat="server"></asp:Label></td>
                            <td><asp:Label ID="lbljohnts" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lbljohn1" runat="server"></asp:Label></td>
                            <td class="style2" ><asp:Label ID="lbljohnts1" runat="server"></asp:Label></td>
                          </tr>
                           <tr>
                             
                            
                           <td><asp:Label ID="Label30" runat="server" Text="Alexis"></asp:Label></td>
                           <td><asp:Label ID="lblalexis" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lblalexists" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lblalexis1" runat="server"></asp:Label></td>
                           <td class="style2"><asp:Label ID="lblalexists1" runat="server"></asp:Label></td>
                           
                           </tr>                          
                        <tr> 
                           <td><asp:Label ID="Label18" runat="server" Text="Carol"></asp:Label></td>
                           <td><asp:Label ID="lblcarol" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lblcarolts" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lblcarol1" runat="server"></asp:Label></td>
                           <td class="style2"><asp:Label ID="lblcarolts1" runat="server"></asp:Label></td>
                           
                           
                            
                           </tr>                                       
                          
                           <tr>
                           <td><asp:Label ID="Label15" runat="server" Text="Tamika" ForeColor="#3366FF"></asp:Label></td>
                           <td><asp:Label ID="lbltamika" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lbltamikats" runat="server"></asp:Label></td>
                            <td><asp:Label ID="lbltamika1" runat="server"></asp:Label></td>
                             <td class="style2"><asp:Label ID="lbltamikats1" runat="server"></asp:Label></td>
                             
                            
                          </tr>
                               <tr>
                          <td><asp:Label ID="Label20" runat="server" Text="Jessica" ForeColor="#3366FF"></asp:Label></td>
                           <td><asp:Label ID="lbljessica" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lbljessicats" runat="server"></asp:Label></td>
                           <td><asp:Label ID="lbljessica1" runat="server"></asp:Label></td>
                           <td class="style2"><asp:Label ID="lbljessicats1" runat="server"></asp:Label></td>
                              
                           </tr>
                         <tr>
                         <td><asp:Label ID="Label35" runat="server"></asp:Label></td>
                             
                           
                         </tr>
                           </table>
                           <table>
                           <tr>
                             <td class="one">
                             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                 ShowFooter="False">
                                 <HeaderTemplate>
                                    <h1 class="style4">
                                     <span class="style5" style="text-align: center">
                                      <strong>NEW</strong> 
                                      </span>
                                      <br /> <asp:Label ID="cntNewCVO" runat="server" class="style51a" 
                                            style="text-align: center"/>
              <span class="style51a" style="text-align: center"><strong>&nbsp</strong></span>
                                      </h1>
                                 </HeaderTemplate>
                                 <ItemTemplate>
                                     &nbsp;<asp:Label ID="StuNumLabel" runat="server" Text='<%# Eval("StuNum") %>' />
                                     <asp:Label ID="QueueNumLabel" runat="server" Text='<%# Eval("QueueNum") %>' />
                                     <asp:LinkButton ID="LinkButton1" runat="server">Call</asp:LinkButton>
                                 </ItemTemplate>
                             </asp:DataList>
                             </td>
                             <td class="two">
                             <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                 <HeaderTemplate>
                                    <h1 class="style42">
                                        <span class="style53" style="text-align: center"> 
                                            <strong>PRP Issues</strong>
                                         </span>
                                         <br />
                       <asp:Label ID="cntNewLN3" runat="server" Text=" " class="style571" style="text-align: center"/>
                                        <asp:Label ID="cntPRPCVO" runat="server" class="style57"></asp:Label>
                                      </h1>
                                 </HeaderTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="StuNumLabel" runat="server" Text='<%# Eval("StuNum") %>' />
                                     <asp:Label ID="QueueNumLabel" runat="server" Text='<%# Eval("QueueNum") %>' />
                                     <asp:LinkButton ID="LinkButton2" runat="server">Call</asp:LinkButton>
                                 </ItemTemplate>
                                 </asp:DataList>
                             </td>
                             <td class="four" style="width: 121px">
                             <asp:DataList ID="DataList3" runat="server" DataKeyField="CmEventID" 
                                     DataSourceID="SqlDataSource3">
                                 <HeaderTemplate>
                                     <h1 class="style44">
               <span class="style572" style="text-align: center"><strong>TESTING</strong></span>
                                         <asp:Label ID="cntTestCVO" runat="server" class="style573" style="text-align: center"></asp:Label>
               </h1>
                                 </HeaderTemplate>
                                 <ItemTemplate>
                                     CmTemplateCode:
                                     <asp:Label ID="CmTemplateCodeLabel" runat="server" 
                                         Text='<%# Eval("CmTemplateCode") %>' />
                                     <br />
                                     CmEventStatusDescrip:
                                     <asp:Label ID="CmEventStatusDescripLabel" runat="server" 
                                         Text='<%# Eval("CmEventStatusDescrip") %>' />
                                     <br />
                                     StuNum:
                                     <asp:Label ID="StuNumLabel" runat="server" Text='<%# Eval("StuNum") %>' />
                                     <br />
                                     SyStaffCode:
                                     <asp:Label ID="SyStaffCodeLabel" runat="server" 
                                         Text='<%# Eval("SyStaffCode") %>' />
                                     <br />
                                     DateLstMod:
                                     <asp:Label ID="DateLstModLabel" runat="server" 
                                         Text='<%# Eval("DateLstMod") %>' />
                                     <br />
                                     Priority:
                                     <asp:Label ID="PriorityLabel" runat="server" Text='<%# Eval("Priority") %>' />
                                     <br />
                                     CmEventID:
                                     <asp:Label ID="CmEventIDLabel" runat="server" Text='<%# Eval("CmEventID") %>' />
                                     <br />
<br />
                                 </ItemTemplate>
                             </asp:DataList>
                             </td>
                             <td class="five">
                                 <asp:DataList ID="DataList4" runat="server" DataKeyField="CmEventID" 
                                     DataSourceID="SqlDataSource4">
                                     <HeaderTemplate>
                                         <h1 class="style45">
                     <span class="style574"><strong>Re-Testing</strong></span>
                     
                    <br/>
                    <asp:Label ID="cntReTestCVO" runat="server" Text='' class="style574a" style="text-align: center"/>
                        </h1>
                                         
                                     </HeaderTemplate>
                                     <ItemTemplate>
                                         CmTemplateCode:
                                         <asp:Label ID="CmTemplateCodeLabel" runat="server" 
                                             Text='<%# Eval("CmTemplateCode") %>' />
                                         <br />
                                         CmEventStatusDescrip:
                                         <asp:Label ID="CmEventStatusDescripLabel" runat="server" 
                                             Text='<%# Eval("CmEventStatusDescrip") %>' />
                                         <br />
                                         StuNum:
                                         <asp:Label ID="StuNumLabel" runat="server" Text='<%# Eval("StuNum") %>' />
                                         <br />
                                         SyStaffCode:
                                         <asp:Label ID="SyStaffCodeLabel" runat="server" 
                                             Text='<%# Eval("SyStaffCode") %>' />
                                         <br />
                                         DateLstMod:
                                         <asp:Label ID="DateLstModLabel" runat="server" 
                                             Text='<%# Eval("DateLstMod") %>' />
                                         <br />
                                         Priority:
                                         <asp:Label ID="PriorityLabel" runat="server" Text='<%# Eval("Priority") %>' />
                                         <br />
                                         CmEventID:
                                         <asp:Label ID="CmEventIDLabel" runat="server" Text='<%# Eval("CmEventID") %>' />
                                         <br />
<br />
                                     </ItemTemplate>
                                 </asp:DataList>
                                 </td>
                           </tr>
                           
                           </table>
                           <asp:Timer ID="Timer3" runat="server">
                             </asp:Timer>
</asp:Content>
