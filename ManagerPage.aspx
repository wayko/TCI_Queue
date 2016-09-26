<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManagerPage.aspx.vb" Inherits="WebApplication1.ManagerPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
    
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QueueConnectionString1 %>" 
            
                SelectCommand="SELECT CmTemplateCode, StudentCount FROM FA_CounselorSum_vw">
                </asp:SqlDataSource>
                <br />
    
            </div>
            <table>
                <tr>
                    <td><asp:Label ID="lblakis" runat="server" Text=""></asp:Label></td>
                    <td ><asp:Label ID="Label16" runat="server" Text="AKishore"></asp:Label></td>
                    <td></td>
                    <td><asp:Label ID="lblasal" runat="server" Text=""></asp:Label></td>
                    <td ><asp:Label ID="Label31" runat="server" Text="ASalazar"></asp:Label></td>
                    <td></td>
                    <td><asp:Label ID="lbldmar" runat="server" Text=""></asp:Label></td>
                    <td ><asp:Label ID="Label4" runat="server" Text="DMartinez"></asp:Label></td>
                    <td></td>
                    <td><asp:Label ID="lbldmen" runat="server" Text=""></asp:Label></td>
                    <td ><asp:Label ID="Label23" runat="server" Text="DMenor"></asp:Label></td>
                          
                </tr>
                <tr>
                    <td><asp:Label ID="lbldrog" runat="server" Text=""></asp:Label></td>
                    <td ><asp:Label ID="Label29" runat="server" Text="DRogers"></asp:Label></td>
                      <td></td>    
                    <td><asp:Label ID="lblerom" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label30" runat="server" Text="ERoman"></asp:Label></td>
                       <td></td>    
                    <td><asp:Label ID="lbleyak" runat="server" Text=""></asp:Label>
                    <td><asp:Label ID="Label34" runat="server" Text="EYakubova"></asp:Label>
                           <td></td>
                    <td><asp:Label ID="lblirod" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label27" runat="server" Text="IRodriquez"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lbljrod" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label28" runat="server" Text="JRodriquez"></asp:Label></td>
                           
                           
                </tr>                          
                <tr> 
                    <td><asp:Label ID="lblkdav" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label9" runat="server" Text="KDavis"></asp:Label></td>
                         <td></td> 
                    <td><asp:Label ID="lblkles" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label18" runat="server" Text="KLesane"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblkt" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label33" runat="server" Text="KTorres"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblliang" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label19" runat="server" Text="LLiang"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblmmat" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label22" runat="server" Text="MMattis"></asp:Label></td>
                           
                           
                </tr>                                       
                <tr>
                    <td><asp:Label ID="lblmrey" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label26" runat="server" Text="MReyes"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblrpin" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label24" runat="server" Text="RPinar"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblsdav" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label8" runat="server" Text="SDavid"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblvrob" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text="VRobinson"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblykom" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label13" runat="server" Text="YKomrakov"></asp:Label></td>
                           
                           
                </tr>
                <tr>
                    <td><asp:Label ID="lblakha" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label15" runat="server" Text="AKhasidova" ForeColor="#3366FF"></asp:Label></td>
                         <td></td>  
                    <td><asp:Label ID="lblChen" runat="server" Text=""></asp:Label></td>
                    <td ><asp:Label ID="Label5" runat="server" Text="CChen" ForeColor="#3366FF"></asp:Label></td>
                          <td></td>   
                    <td><asp:Label ID="lblcfek" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label1" runat="server" Text="CFekaris" ForeColor="#3366FF"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblefar" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label10" runat="server" Text="EFaracco" ForeColor="#3366FF"></asp:Label></td>
                           <td></td>
                    <td><asp:Label ID="lblmcru" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label7" runat="server" Text="MCruz" ForeColor="#3366FF"></asp:Label></td>
                           
                           
                            
                </tr>
                <tr>
                    <td><asp:Label ID="lblmmad" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label20" runat="server" Text="MMadera" ForeColor="#3366FF"></asp:Label></td>
                    <td></td>        
                    <td><asp:Label ID="lblmman" runat="server" Text=""></asp:Label></td>
                    <td><asp:Label ID="Label21" runat="server" Text="MMangual" ForeColor="#3366FF"></asp:Label></td>         
                </tr>         
            </table>
        </form>
    </body>
</html>
