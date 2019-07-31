<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LeisureInfo.aspx.vb" Inherits="Demo_LeisureInfo" MasterPageFile="MasterPage3.master" EnableEventValidation="false"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="scripts/OrderScript_FO.js" type="text/javascript"></script>
    <%--<script type="text/javascript" src="../AnimatedDiv/jquery.min.js"></script>
    <script type="text/javascript" src="../AnimatedDiv/animatedcollapse.js"></script>
    <script type="text/javascript" src="Cal/zapatec.js"></script>
    <script type="text/javascript" src="Cal/calendar.js"></script>
    <script type="text/javascript" src="Cal/calendar-en.js"></script>
    <link type="text/css" href="Cal/win2k.css" rel="stylesheet" />--%>
    <script>
        function SetActive() {
            try {

            }
            catch (err1)
            { }
        }
        function HideMore() {
            try {
                if (event.target.id != 'ctl00_lblWelcome') {
                    if (document.getElementById('Drpdwnaction') != null) {
                        document.getElementById('Drpdwnaction').setAttribute('class', 'DropDown');
                        document.getElementById('ctl00_lblWelcome').setAttribute("class", "MenuTtl ArrwDA FA-Icon User");
                    }
                }
                if (event.target.id != 'DropDownArrow') {
                    if (document.getElementById('ActionDropDown') != null) {
                        if (document.getElementById('ActionDropDown').getAttribute('class') == 'DropDown Active') {
                            document.getElementById('ActionDropDown').setAttribute('class', 'DropDown');
                            document.getElementById('DropDownArrow').setAttribute("class", "MenuTtl ArrwDA FA-Icon Company");
                        }
                    }
                }
                if (event.target.id != 'DropDownArrow2') {
                    if (document.getElementById('ActionDropDown2') != null) {
                        if (document.getElementById('ActionDropDown2').getAttribute('class') == 'DropDown Active') {
                            document.getElementById('ActionDropDown2').setAttribute('class', 'DropDown');
                            document.getElementById('DropDownArrow2').setAttribute("class", "MenuTtl ArrwDA FA-Icon Reports");
                        }
                    }
                }
            }
            catch (err1)
            { }
        }
        function CheckTitleLeisure() {
            ddlGender = document.getElementById('ctl00_ContentPlaceHolder1_ddlGender');
            ddlTitle = document.getElementById('ctl00_ContentPlaceHolder1_ddlTitle');


            if (!(ddlGender == 'undefined' || ddlGender == null) && !(ddlTitle == 'undefined' || ddlTitle == null)) {
                if (ddlGender.selectedIndex != 0) {

                    if (ddlGender.options[ddlGender.selectedIndex].text == 'Male' || ddlGender.options[ddlGender.selectedIndex].text == 'ذكر') {

                        if (ddlTitle.options[ddlTitle.selectedIndex].text == 'Mr.' || ddlTitle.options[ddlTitle.selectedIndex].text == 'Mstr') {
                            return true;
                        }
                        else {
                            if (document.getElementById('ctl00_FlghtMLink').textContent == 'Flights') {
                                document.getElementById('ctl00_ContentPlaceHolder1_lblErrormsg1').textContent = 'Please select the proper title';
                            }
                            else {
                                document.getElementById('ctl00_ContentPlaceHolder1_lblErrormsg1').textContent = 'يرجى تحديد العنوان المناسب';
                            }
                            
                            document.getElementById('ctl00_ContentPlaceHolder1_lblErrormsg1').style.display = ''
                            document.getElementById('ctl00_ContentPlaceHolder1_ErrorUL1').setAttribute('class', 'Page-Error-Message');
                            document.getElementById('ctl00_ContentPlaceHolder1_ErrorUL1').style.display = ''; window.scroll(0, 0);
                            return false;
                        }
                    }
                    else if ((ddlTitle.options[ddlTitle.selectedIndex].text == 'Ms.') || (ddlTitle.options[ddlTitle.selectedIndex].text == 'Mrs.') || (ddlTitle.options[ddlTitle.selectedIndex].text == 'Miss.')) {
                        return true;
                    }
                    else {
                        if (document.getElementById('ctl00_FlghtMLink').textContent == 'Flights') {
                            document.getElementById('ctl00_ContentPlaceHolder1_lblErrormsg1').textContent = 'Please select the proper title';
                        }
                        else {
                            document.getElementById('ctl00_ContentPlaceHolder1_lblErrormsg1').textContent = 'يرجى تحديد العنوان المناسب';
                        }
                        document.getElementById('ctl00_ContentPlaceHolder1_lblErrormsg1').style.display = ''
                        document.getElementById('ctl00_ContentPlaceHolder1_ErrorUL1').setAttribute('class', 'Page-Error-Message');
                        document.getElementById('ctl00_ContentPlaceHolder1_ErrorUL1').style.display = ''; window.scroll(0, 0);
                        return false;
                    }
                }
            }
        }
        function AllowNumsOnly(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            else
                return true;
        }
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
        function phoneval() {
            var e = document.getElementById("ctl00_ContentPlaceHolder1_ddlCountryCode1")
            var mobileCode = document.getElementById("ctl00_ContentPlaceHolder1_ddlCountryCode")
         
            var flag = true;
            if (mobileCode.options[mobileCode.selectedIndex].value == 0) {
                document.getElementById("ctl00_ContentPlaceHolder1_rq1").style.display = ""
                return false;
            }
            if (document.getElementById("ctl00_ContentPlaceHolder1_txtOfficeNo").value != "" && e.options[e.selectedIndex].value == 0) {
                document.getElementById("ctl00_ContentPlaceHolder1_lblerrorph").style.display = ""
                document.getElementById("ctl00_ContentPlaceHolder1_lblerrorph").textContent = "Please select country code"
                flag = false;
            }
            else if (document.getElementById("ctl00_ContentPlaceHolder1_txtOfficeNo").value == "" && e.options[e.selectedIndex].value != 0) {
                document.getElementById("ctl00_ContentPlaceHolder1_lblpherror").style.display = ""
                document.getElementById("ctl00_ContentPlaceHolder1_lblpherror").textContent = "Enter phone number"
                flag = false;
            }
            else {
                document.getElementById("ctl00_ContentPlaceHolder1_lblerrorph").style.display = "none"
                document.getElementById("ctl00_ContentPlaceHolder1_lblpherror").style.display = "none"
                flag = true;
            }
            return flag;
            
        }
    </script>


    <div class="AppSiteWidth">
     
        <div class="AppFeatures">
             <ul id="ErrorUL1" runat="server" style="display: none" class="Page-Error-Message">
                <li class="Font-Icon">
                       <asp:Label ID="lblErrormsg1" runat="server" CssClass="Title"></asp:Label>
                </li>
            </ul>

            <div id="divCreate" runat="server">     
                <div class="SearchBoxTabs TabsLst">
                <div id="divOverview" class="Tab" >
                    <asp:LinkButton ID="lnkOverview" runat="server"  CssClass="Lnk">Overview</asp:LinkButton>
                </div><div id="divPersonalInfo" class="Tab">                    
                    <asp:LinkButton ID="lnkPersonalInfo" runat="server"  CssClass="Lnk Active">Personal Info</asp:LinkButton>
                </div><div id="divTravelers" class="Tab">
                   <asp:LinkButton ID="lnkTravelers" runat="server"  CssClass="Lnk">Travelers</asp:LinkButton>
                </div><div id="divTraveldoc" class="Tab">
                   <asp:LinkButton ID="lnkTraveldoc" runat="server"  CssClass="Lnk">Documents</asp:LinkButton>
                </div><div id="divEmail" class="Tab" style="display:none;" >
                    <asp:LinkButton ID="lnkEmail" runat="server"  CssClass="Lnk">Email and Password</asp:LinkButton>
                </div><div id="divSplDates" class="Tab" >
                    <asp:LinkButton ID="lnkSplDates" runat="server"  CssClass="Lnk">Special Dates</asp:LinkButton>
                </div><div id="divTravelPref" class="Tab" >
                    <asp:LinkButton ID="lnkTravelPref" runat="server"  CssClass="Lnk">Preferences</asp:LinkButton>
                </div><div id="divTravelPat" class="Tab" >
                    <asp:LinkButton ID="lnkTravelPtner" runat="server"  CssClass="Lnk">Travel Partners</asp:LinkButton>
                </div><div id="divMarketing" class="Tab" >
                    <asp:LinkButton ID="lnkMarketing" runat="server"  CssClass="Lnk">Interests</asp:LinkButton>
                </div>
            </div>            
                    <span class="Title GenInfo" id="spBasicInfo" runat="server" >Basic Info</span>               
                <div class="SearchBox MnInfo" id="divBasicInfo" runat="server">
                    <div class="Holder HldrOnTnth">
                        <span class="InrTtl">Title</span>
                        <div class="InptHldr ArrwDA FA-Icon">
                            <asp:DropDownList ID="ddlTitle" runat="server" CssClass="Input">
                                  <asp:ListItem Value="0">Mr.</asp:ListItem>
                                        <asp:ListItem Value="1">Mrs.</asp:ListItem>
                                        <asp:ListItem Value="2">Ms.</asp:ListItem>
                                        <asp:ListItem Value="3">Miss.</asp:ListItem>
                                        <asp:ListItem Value="4">Mstr</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div><div class="Holder HldrThrTnth">
                        <span class="InrTtl Mnd">First Name</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtFName" runat="server" CssClass="Input" placeholder="First Name"></asp:TextBox>                            
                        </div><div class="ErrDv">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" Display="Dynamic" CssClass="FldError" ErrorMessage="Enter First Name" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </div>
                        </div><div class="Holder HldrThrTnth">
                        <span class="InrTtl Mnd">Last Name</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtLName" runat="server" CssClass="Input" placeholder="Last Name"></asp:TextBox>                            
                            </div><div class="ErrDv">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName" Display="Dynamic" CssClass="FldError" ErrorMessage="Enter Last Name" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </div>
                    </div><div class="Holder HldrThrTnth">
                        <span class="InrTtl Mnd">Gender</span>
                        <div class="InptHldr ArrwDA FA-Icon">
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="Input">
                                <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                    <asp:ListItem Value="2">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div><div class="Holder HldrThrTnth DateHldr">
                        <span class="InrTtl Mnd">Date of Birth</span>
                        <div class="DteFld">
                            <div class="InptHldr ArrwDA FA-Icon">
                                <asp:DropDownList ID="ddlDay" runat="server" CssClass="Input"  ><asp:ListItem Value="0" Text="Day"></asp:ListItem></asp:DropDownList>                           
                            </div><div class="ErrDv">                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlDay" Display="Dynamic" CssClass="FldError" ErrorMessage="Please Select Day" ValidationGroup="g1" InitialValue="0"></asp:RequiredFieldValidator>
                        </div>
                        </div><div class="DteFld">
                            <div class="InptHldr ArrwDA FA-Icon">
                                 <asp:DropDownList ID="ddlMonth" runat="server" CssClass="Input"  DataTextField = "Text"  DataValueField = "Value" ></asp:DropDownList>                           
                            </div><div class="ErrDv">                         
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlMonth" Display="Dynamic" CssClass="FldError" ErrorMessage="Please Select Month" ValidationGroup="g1" InitialValue="0"></asp:RequiredFieldValidator>
                           </div>
                        </div><div class="DteFld">
                            <div class="InptHldr ArrwDA FA-Icon">
                                <asp:DropDownList ID="ddlyear" runat="server"  CssClass="Input"><asp:ListItem Value="0" Text="Year"></asp:ListItem></asp:DropDownList>                           
                            </div><div class="ErrDv">                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlyear" Display="Dynamic" CssClass="FldError" ErrorMessage="Please Select Year" ValidationGroup="g1" InitialValue="0"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div><div class="Holder HldrQtr">
                        <span class="InrTtl Mnd">Nationality</span>
                        <div class="InptHldr ArrwDA FA-Icon">
                            <asp:DropDownList ID="ddlNationality" runat="server" CssClass="Input"></asp:DropDownList>
                            <cc1:CascadingDropDown ID="CascadingDropDown5" runat="server" BehaviorID="CascadingDropDown5"
                                Category="Make" LoadingText="[Loading Countries...]" PromptText="Please select a Country" PromptValue="0"
                                ServiceMethod="GetCountries" ServicePath="~/WebService.asmx" TargetControlID="ddlNationality">
                            </cc1:CascadingDropDown>                           
                        </div><div class="ErrDv">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlNationality" Display="Dynamic" CssClass="FldError" ErrorMessage="Please select Nationality" ValidationGroup="g1" InitialValue="0"></asp:RequiredFieldValidator>
                            </div>
                    </div>
                </div>
                <div class="BttnHldr Btn">
                    <asp:Button ID="btnSaveBasic" runat="server" Text="Save Change" CssClass="Bttn" ValidationGroup="g1" OnClientClick="return CheckTitleLeisure();"/><%--OnClientClick="javascript:return ValidateDob();"--%>
                </div>
                <span class="Title Addrs" id="spAddress" runat="server" >Address</span>
                <div class="SearchBox MnInfo" id="divAddress" runat="server">
                    <div class="Holder HldrFll">
                        <span class="InrTtl">Address 1</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="Input"></asp:TextBox>
                        </div>
                    </div><div class="Holder HldrFll">
                        <span class="InrTtl">Address 2</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="Input"></asp:TextBox>
                        </div>
                    </div><div class="Holder HldrHlf">
                        <span class="InrTtl">Country</span>
                        <div class="InptHldr ArrwDA FA-Icon">
                            <asp:DropDownList ID="ddlcountry" runat="server" CssClass="Input"></asp:DropDownList>
                            <cc1:CascadingDropDown ID="CascadingDropDown1" runat="server" BehaviorID="CascadingDropDown1"
                                Category="Make" LoadingText="[Loading Countries...]" PromptText="Please select a Country" PromptValue="0"
                                ServiceMethod="GetCountries" ServicePath="~/WebService.asmx" TargetControlID="ddlcountry">
                            </cc1:CascadingDropDown>
                        </div>
                    </div><div class="Holder HldrHlf">
                        <span class="InrTtl">State</span>
                        <div class="InptHldr ArrwDA FA-Icon">
                            <asp:DropDownList ID="ddlState" runat="server" CssClass="Input"></asp:DropDownList>
                            <cc1:CascadingDropDown ID="CascadingDropDown2" runat="server" BehaviorID="CascadingDropDown2"
                                Category="Make" LoadingText="[Loading States...]" PromptText="Please select a State" PromptValue="0" ParentControlID="ddlcountry"
                                ServiceMethod="GetStates" ServicePath="~/WebService.asmx" TargetControlID="ddlState">
                            </cc1:CascadingDropDown>
                        </div>
                    </div><div class="Holder HldrHlf">
                        <span class="InrTtl">City</span>
                        <div class="InptHldr ArrwDA FA-Icon">
                            <asp:DropDownList ID="ddlCity" runat="server" CssClass="Input"></asp:DropDownList>
                            <cc1:CascadingDropDown ID="CascadingDropDown6" runat="server" BehaviorID="CascadingDropDown6"
                                Category="Model" LoadingText="[Loading Cities...]" ParentControlID="ddlcountry"
                                PromptText="Please select a City" PromptValue="0" ServiceMethod="GetCities" ServicePath="~/WebService.asmx"
                                TargetControlID="ddlCity">
                            </cc1:CascadingDropDown>
                        </div>
                    </div><div class="Holder HldrHlf">
                        <span class="InrTtl">Postal/ Zip Code</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtZipCode" runat="server" CssClass="Input" onkeypress="return AllowNumsOnly(event);"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="BttnHldr Btn">
                    <asp:Button ID="btnSaveAddress" runat="server" Text="Save Change" CssClass="Bttn" ValidationGroup="g2" OnClientClick="topFunction();"/><%--OnClientClick="javascript:return ValidateDob();"--%>
                </div>
                <span class="Title Cntct" id="spContact" runat="server" >Contact</span>
                <div class="SearchBox MnInfo" id="divContact" runat="server">
                    <%--<div class="Holder HldrQtr">
                        <span class="InrTtl">Email</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtEmailContact" runat="server" CssClass="Input"></asp:TextBox>
                            
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailContact" Display="Dynamic" CssClass="FldError" ErrorMessage="Please enter valid email address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </div>--%>
                    <div class="Holder HldrQtr">
                        <span class="InrTtl Mnd">Country code</span>                       
                            <div class="InptHldr ArrwDA FA-Icon">
                                <asp:DropDownList ID="ddlCountryCode" runat="server" CssClass="Input" Visible="true">
                        </asp:DropDownList><cc1:CascadingDropDown ID="CascadingDropDown3" runat="server" BehaviorID="CascadingDropDown3" Category="Make" LoadingText="[Loading Countries...]" PromptText="Please select country code" PromptValue="0" ServiceMethod="GetIsdcodes" ServicePath="../WebService.asmx" TargetControlID="ddlCountryCode"></cc1:CascadingDropDown>                                    
                           </div>
                             <div class="ErrDv">
                                  <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="ddlCountryCode" ErrorMessage="Please select country code" ValidationGroup="g3" Display="Dynamic"  CssClass="FldError NoPadd"></asp:RequiredFieldValidator>
                             </div>                                                   
                    </div><div class="Holder HldrQtr">
                        <span class="InrTtl Mnd">Mobile</span>     
                                <div class="InptHldr">
                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="Input" onkeypress="return AllowNumsOnly(event);"></asp:TextBox>  
                                    
                                </div>
                        <div class="ErrDv">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" Display="Dynamic" ControlToValidate="txtMobile" runat="server" ValidationExpression="[0-9]{9,15}$" ErrorMessage="<%$ Resources:Resource, Please_input_correct_phone_format %>" CssClass="FldError NoPadd" ValidationGroup="g3"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ControlToValidate="txtMobile"   ValidationGroup="g3" CssClass="FldError NoPadd" ErrorMessage="<%$ Resources:Resource, Please_enter_a_valid_contact_number %>"></asp:RequiredFieldValidator>
                                    </div>
                          </div><div class="Holder HldrHlf">
                              <div class="Holder HldrHlf NoPadd">
                                  <span class="InrTtl">Country Code</span>
                                <div class="InptHldr ArrwDA FA-Icon">
                                <asp:DropDownList ID="ddlCountryCode1" runat="server" CssClass="Input" Visible="true">
                        </asp:DropDownList><cc1:CascadingDropDown ID="CascadingDropDown4" runat="server" BehaviorID="CascadingDropDown4" Category="Make" LoadingText="[Loading Countries...]" PromptText="Please select country code" PromptValue="0" ServiceMethod="GetIsdcodes" ServicePath="../WebService.asmx" TargetControlID="ddlCountryCode1"></cc1:CascadingDropDown>                                  
                           </div>
                                   <div class="ErrDv"> 
                                 <asp:Label ID="lblerrorph" runat="server" CssClass="FldError Clr" style="display:none"></asp:Label>     
                                         </div> 
                                  </div><div class="Holder HldrHlf NoPadd">
                                      <span class="InrTtl">Alternate Phone No.</span>
                                <div class="InptHldr">
                                    <asp:TextBox ID="txtOfficeNo" runat="server" CssClass="Input" onkeypress="return AllowNumsOnly(event);"></asp:TextBox>
                                </div>
                                      <div class="ErrDv">
                                     <asp:Label ID="lblpherror" runat="server" CssClass="FldError Clr" style="display:none"></asp:Label> 
                                        </div> 
                          </div>      
                    </div>
                </div>
                <div class="BttnHldr Btn">
                    <asp:Button ID="btnSaveContact" runat="server" Text="Save Change" CssClass="Bttn" ValidationGroup="g3" OnClientClick="javascript:return phoneval();" /><%--OnClientClick="javascript:return ValidateDob();"--%>
                </div>
                <span class="Title Cntct" style="display:none">Login Information</span>
                <div class="SearchBox MnInfo" id="divLogin" runat="server"  visible="false">
                    <div class="Holder HldrQtr">
                        <span class="InrTtl">Email</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtEmailAdd" runat="server" CssClass="Input" disabled="disabled"></asp:TextBox>                            
                        </div>
                        <div class="ErrDv">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailAdd" Display="Dynamic" CssClass="FldError" ErrorMessage="Please enter valid email address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g4"></asp:RegularExpressionValidator>
                        </div>
                    </div><div class="Holder HldrQtr">
                        <span class="InrTtl">Password</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtPwd" runat="server" CssClass="Input" TextMode="Password" ></asp:TextBox>
                        </div>
                    </div><div class="Holder HldrQtr">
                        <span class="InrTtl">Confirm Password</span>
                        <div class="InptHldr">
                            <asp:TextBox ID="txtCnfPwd" runat="server" CssClass="Input" TextMode="Password"></asp:TextBox>                            
                        </div>
                        <div class="ErrDv">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="FldError" ControlToCompare="txtCnfPwd" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Password should match with confirm password" Operator="Equal"  Type="String" ValidationGroup="g4" ></asp:CompareValidator> 
                        </div>
                         
                    </div><div class="Holder HldrQtr" style="display:none;">
                        <span class="InrTtl">Reset Password in Days</span>
                        <div class="InptHldr">
                            <asp:DropDownList ID="ddlDays" runat="server" CssClass="Input"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="BttnHldr Btn" style="display:none;">
                    <asp:Button ID="btnSaveLogin" runat="server" Text="Save Change" CssClass="Bttn" ValidationGroup="g4" OnClientClick="topFunction();"/><%--OnClientClick="javascript:return ValidateDob();"--%>
                </div>
                <div class="BttnHldr Btn" style="display:none;">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="Bttn" ValidationGroup="g1" OnClientClick="topFunction();phoneval();"/><%--OnClientClick="javascript:return ValidateDob();"--%>
                </div>
              
               
            </div>
        </div>
    </div>
</asp:Content>
