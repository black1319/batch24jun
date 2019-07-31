<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LeisureLogin.aspx.vb" Inherits="Demo_LeisureLogin" MasterPageFile="MasterPage3.master" EnableEventValidation="false" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="LeisureLoginUH.ascx" TagPrefix="uc1" TagName="LeisureLoginUH" %>
<%@ Register Src="LeisureLoginLH.ascx" TagPrefix="uc1" TagName="LeisureLoginLH" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <script src="Scripts/CustomJS.js" type="text/javascript"></script>
    <%--<script type="text/javascript">
        var submitcount = 0;

        function disableSubmit() {
            debugger;
            if (typeof (Page_ClientValidate) == 'function') {
                if (Page_ClientValidate() == true) {
                    return checkSubmit();
                }
                else {
                    return true;
                }
            }
            else {
                return checkSubmit();
            }
        }

        function checkSubmit() {
            if (submitcount == 0) {
                submitcount++; return true;
            }
            else {
                alert('This form has already been submitted.'); return false;
            }
        }
    </script>--%>
    <script type="text/javascript">
        var Objid = 'ctl00_ContentPlaceHolder1_';
        function HideMore() {
            try {
                var ver = getInternetExplorerVersion();
                if (ver > -1 && ver <= 11.0) {

                    if (event.srcElement.id == "ctl00_txtPrefLang" || event.srcElement.id == "ctl00_ltlLanguages" || event.srcElement.id == "ctl00_divLangOpt" || event.srcElement.id == "DivLanguages") {
                        if (event.srcElement.id == "ctl00_txtPrefLang" && document.getElementById("DivLanguages").style.display == "") {
                            document.getElementById("DivLanguages").style.display = "none";
                        }
                        else {
                            document.getElementById("DivLanguages").style.display = "";
                        }
                    } else {
                        if (document.getElementById("DivLanguages") != null) {
                            document.getElementById("DivLanguages").style.display = "none";
                        }
                    }
                    var x = document.getElementsByClassName("calendar");

                    //                for (i = 0; i <= x.length - 1; i++) {
                    //                    x[i].style.display = 'none';
                    //                }
                }
                else {

                    if (event.target.id == "ctl00_txtPrefLang" || event.target.id == "ctl00_ltlLanguages" || event.target.id == "ctl00_divLangOpt" || event.target.id == "DivLanguages") {
                        if (event.target.id == "ctl00_txtPrefLang" && document.getElementById("DivLanguages").style.display == "") {
                            document.getElementById("DivLanguages").style.display = "none";
                        }
                        else {
                            document.getElementById("DivLanguages").style.display = "";
                        }
                    } else {
                        if (document.getElementById("DivLanguages") != null) {
                            document.getElementById("DivLanguages").style.display = "none";
                        }

                    }
                    var x = document.getElementsByClassName("calendar");

                    //                for (i = 0; i <= x.length - 1; i++) {
                    //                    x[i].style.display = 'none';
                    //                }
                }

                return true;
            }
            catch (err1)
            { }
        }
        function getInternetExplorerVersion() {
            var rv = -1;  //Return value assumes failure.
            if (navigator.appName == 'Microsoft Internet Explorer') {
                var ua = navigator.userAgent;
                var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
                if (re.exec(ua) != null)
                    rv = parseFloat(RegExp.$1);
            }
            return rv;
        }

        function SetActive() {
            try {

            } catch (e) {

            }
        }
        function isOnlyNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (48 <= charCode && charCode <= 57 || charCode == 8 || charCode == undefined) {
                return true;
            }
            else {
                if (charCode == 8 || charCode == 46 || charCode == undefined) {
                    return true;
                }
                return false;
            }
        }

       

        
    </script>
    <uc1:LeisureLoginUH runat="server" ID="LeisureLoginUH" /><div id="LLTaNefer" runat="server"  class="LoginFldsDv Active">
          <div class="SiteWidth">
              <asp:Panel ID="TaneferPanel" runat="server" DefaultButton="btnTanLogin">
              <div id="divTanLogin" runat="server" class="LeisureLoginDV SignIn">
                   <asp:Label ID="Label1" runat="server" CssClass="LoginHeading">Login</asp:Label>
            <div class="Hldr">
                <span class="Txt">Email</span>
                <%--<div class="Txt">
                    Username
                </div>--%><div class="InptHldr">
                    <asp:TextBox ID="txtTanUsername" runat="server" placeholder="User Name" CssClass="Input" ValidationGroup="TanValidation" TabIndex="1"></asp:TextBox>
                </div>
                <div class="ErrDv">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTanUsername" Display="Dynamic" ErrorMessage="Enter User ID" ValidationGroup="TanValidation" CssClass="FldErr"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTanUsername" Display="Dynamic" CssClass="FldErr" ErrorMessage="Enter valid email address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="TanValidation"></asp:RegularExpressionValidator>
                </div>
            </div><div class="Hldr">
                <span class="Txt">Password</span>
                <%--<div class="Txt">
                    Password
                </div>--%><div class="InptHldr">
                    <asp:TextBox ID="txtTanpwd" placeholder="Password" runat="server" TextMode="Password" CssClass="Input" ValidationGroup="TanValidation" TabIndex="2"></asp:TextBox>
                </div>
                <div class="ErrDv">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTanpwd" Display="Dynamic" ErrorMessage="Enter Password" ValidationGroup="TanValidation" CssClass="FldErr"></asp:RequiredFieldValidator>
                </div>
            </div><div class="Hldr Err">
                <asp:Label ID="LBMSG" runat="server" CssClass="Login-Error"></asp:Label>
            </div>
           <div id="divcaptcha" runat="server" class="Fld Captcha" style="display:none;">
            <div class="Cntnr">
                <span class="SCTtl">Security Check</span>
                <img src="Handler.ashx" id="imgCaptcha" />
                <span class="SCTxt">Please enter the text below</span>
                <asp:TextBox ID="txtRefresh" runat="server" TabIndex="1" Text="" Visible="false" CssClass="Input"></asp:TextBox><div class="ErrDv">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRefresh" Display="Dynamic" ErrorMessage="Enter Required Captcha"  CssClass="FldErr"></asp:RequiredFieldValidator>
                </div><div class="InvldCptcha">
                        <a href="#" onclick="javascript:RefreshCaptcha();" class="Link Font-Icon"></a>                          
                        <%--<asp:Label ID="lblCaptcha" runat="server" Text="Label" class="Txt"></asp:Label> --%> 
                    </div>         
                </div>
        </div><div id="divtanloginbtnhltr" runat="server" ><div class="Hldr Bttn">
                <asp:Button ID="btnTanLogin" runat="server" Text="Sign in" ValidationGroup="TanValidation" CssClass="Login Btn" OnClick="btnTanLogin_Click" TabIndex="3" />
            </div><div class="Hldr Links">                
                   <asp:LinkButton ID="lnkTanForgotPwd" runat="server" OnClick="lnkTanForgotPwd_Click" CssClass="ForgotPwd" TabIndex="4">Forgot Password?</asp:LinkButton><span class="Txt NewUser">New User? <asp:LinkButton ID="lnkregister" runat="server" OnClick="lnkregister_Click" CssClass="Lnk" TabIndex="5">Sign up Today</asp:LinkButton>!</span>
               <%-- <asp:Button ID="btnTanForgotPwd" runat="server" Text="Forgot Password" CssClass="Forgot Btn" OnClick="btnTanForgotPwd_Click" />--%>
            </div></div>
              </div>
        <%--</div>--%>
              </asp:Panel>
               <%--<div id="divcaptcha" runat="server" class="Fld Captcha" style="display:none;">
            <div class="Cntnr">
                <span class="SCTtl">Security Check</span>
                <img src="Handler.ashx" id="imgCaptcha" />
                <span class="SCTxt">Please enter the text below</span>
                <asp:TextBox ID="txtRefresh" runat="server" TabIndex="1" Text="" Visible="false" CssClass="Input"></asp:TextBox><a href="#" onclick="javascript:RefreshCaptcha();" class="Link Font-Icon"></a>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btnCaptcha_Click"/>          
                <asp:Label ID="lblCaptcha" runat="server" Text="Label"></asp:Label>           
                </div>
        </div>--%>
              <asp:Panel ID="FotgotPwdPanel" runat="server" DefaultButton="BtnForgotpassword">
              <div id="tblForgotpassword" runat="server" class="LeisureLoginDV ForgotPassword" visible="false">
            <div class="Hldr">
                <span class="Ttl">Forgot your Password?</span>
                <span class="Txt">Enter your email below to receive instructions to reset your password.</span>
                <div class="InptHldr">
                    <asp:TextBox ID="txtFUserName" runat="server" CssClass="Input" ></asp:TextBox>
                </div>
                <div class="ErrDv">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFUserName" Display="Dynamic" ErrorMessage="Enter User ID" ValidationGroup="ForgotPwd" CssClass="FldErr"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFUserName" Display="Dynamic" ErrorMessage="Enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ForgotPwd" CssClass="FldErr"></asp:RegularExpressionValidator>
                </div>
                <%--<span class="Hnt">Your Email ID is your User ID</span>--%>
            </div>
            <div class="Hldr Bttn">
                <asp:Button ID="BtnForgotpassword" runat="server" Text="Submit" OnClick="BtnForgotpassword_Click" ValidationGroup="ForgotPwd" CssClass="Btn ForgotSbmt" /><asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click"  CssClass="Btn ForgotBck" />
            </div>
            <div class="Hldr Err" id="divInvalidEmail" runat="server" visible="false" >
                <span class="Txt Login-Error">This email id is not registered with us.<asp:LinkButton ID="lnkregister1" runat="server" OnClick="lnkregister1_Click" CssClass="Lnk">Sign Up now</asp:LinkButton>!</span>
            </div>
        </div>
              </asp:Panel>
        
        <div id="LoginAgain" runat="server" visible="false" class="LeisureLoginDV TryAgain">
            <span class="Ttl">Thank you!</span>
            <span class="Txt">A link to reset your password has been sent to your email address <asp:LinkButton ID="lnkloginagain" runat="server" OnClick="lnkloginagain_Click" CssClass="Lnk" Visible="false"></asp:LinkButton>.</span>
        </div>
              </div>
    </div>
    <div id="divValidateOtp" runat="server" class="RegistrationSection" visible="false" >
            <asp:Panel ID="Panel1" runat="server" DefaultButton="Lnkregister">
              <asp:Panel ID="Panel2" runat="server" DefaultButton="LnkReqOTP">  
                 <ul class="RgstrtnFrmUl" id="ulPhone" runat="server" >
                     <li class="Hlf">  
                          <div class="TxtDv Mnd">
                               Country Code
                           </div> 
                         <div class="InptDv ArrwDA FA-Icon">                             
                                 <asp:DropDownList ID="ddlCountryCode" runat="server" CssClass="InputField" Visible="true" onclick="ChangeddlCSS(this.id)"></asp:DropDownList>
                                 <cc1:CascadingDropDown ID="CascadingDropDown6" runat="server" BehaviorID="CascadingDropDown6" Category="Make" LoadingText="[Loading Countries...]" PromptText="Please select a Country code" ServiceMethod="GetIsdcodes" ServicePath="../WebService.asmx" TargetControlID="ddlCountryCode"></cc1:CascadingDropDown>
                             
                        </div>
                         <div class="ErrDv">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" ControlToValidate="ddlCountryCode" ErrorMessage="Please select country code" ValidationGroup="BtnOtp" Display="Dynamic"  CssClass="FldError NoPadd">
                             </asp:RequiredFieldValidator>                            
                              <asp:Label ID="lblMsg"  runat="server" CssClass="FldError Clr" Visible="false" ></asp:Label>
                         </div>
                      </li><li class="Hlf">
                          <div class="TxtDv Mnd">
                               Mobile Number
                           </div> 
                             <div class="InptDv">
                                 <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="InputField MN" Placeholder= "" onkeypress="return isOnlyNumberKey(event)" ></asp:TextBox>
                             </div>
                             <div class="ErrDv">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" Display="Dynamic" ControlToValidate="txtPhoneNo" ErrorMessage="Please enter mobile number." CssClass="FldError NoPadd AlgnRgt" ValidationGroup="BtnOtp"></asp:RequiredFieldValidator>
                             </div>
                       </li>
                 </ul>
                
                <div class="RegFldHldr" id="divNexmoOtp" runat="server"  style="display:none">                      
                      <ul class="RgstrtnFrmUl">
                          <li class="Hlf" id="linexmootp" runat="server">                              
                              <div class="TxtDv">
                                  Please enter verification code
                              </div>
                              <div class="InptDv">
                                  <asp:TextBox ID="txtOTPNexmo" runat="server" Placeholder="" MinLength="8" CssClass="InputField" onkeypress="return isOnlyNumberKey(event)"></asp:TextBox>
                              </div>
                              <div class="ErrDv">
                                  <asp:Label ID="lblError" runat="server" Text ="Invalid Code, please try again" CssClass="FldError Clr" Visible="false" ></asp:Label>
                                  </div>
                              <div class="Hnt">You will receive a mobile verification code on your mobile number. <br />If you have not received the code, please <asp:LinkButton ID="lnkResend" runat="server" Text ="click"></asp:LinkButton> here to resend OTP or <asp:LinkButton ID="lnkReEnter" runat="server" Text ="click"></asp:LinkButton> here to re-enter the mobile number</div>
                              <div class="ErrDv">
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" Display="Dynamic" ControlToValidate="txtOTPNexmo" ErrorMessage="Please Enter OTP." CssClass="FldError NoPadd" ValidationGroup="OTP"></asp:RequiredFieldValidator>
                              </div>                             
                          </li>
                         <li class="Fll">
                            <div class="Button">
                                <asp:LinkButton ID="LnkReg" runat="server" Text="Confirm" CssClass="Btn" ValidationGroup="BtnOtp" Visible="false"></asp:LinkButton>
                                </div>
                      </ul>
                  </div>
                  </asp:Panel>
         
                <div class="RegFldHldr" id="div2" runat="server">   
               
                <ul class="RgstrtnFrmUl">
                        <li class="Fll">
                            <div class="Button">
                                <asp:LinkButton ID="LnkReqOTP" runat="server" Text="Request OTP" CssClass="Btn" ValidationGroup="BtnOtp"  OnClientClick="javascript: return disableSubmit();"></asp:LinkButton>
                            </div>
                            </li>
                    </ul>
                     
                </div>
                </asp:Panel>  
              
            
                   
        </div>
    <div class="RegistrationSection">
        <div class="Hldr">
                <asp:Label ID="lblEmailerror"  runat="server" CssClass="Txt" Visible="false" ></asp:Label>             
            <asp:LinkButton ID="lnkReEmail" runat="server" Visible="false" CssClass="MsgTxt" Text="Resend Verification Email" onclick="lnkReEmail_Click"></asp:LinkButton>    
            </div>     
                
        </div>
     <div id="DivRegistrationSuccessGeneral" runat="server" class ="RegistrationSection" style="display: none">
            <div class="RegistrationScssMsg">
                <span class="InrTxt Title"></span>
                <span class="InrTxt">A confirmation link has been sent to  your email. Once confirmed,please login to continue</span>
                <ul class="RgstrtnFrmUl">
                    <li class="Fll Btn">
                        <div class="Button">
                            <asp:LinkButton ID="btnLoginLeisure" runat="server" Text="Login" CssClass="Btn" onclick="btnLoginLeisure_Click"></asp:LinkButton>
                        </div>
                    </li>
                </ul>
                </div>
        </div>



    <asp:HiddenField ID="hdnUsername" runat="server" />
     <asp:HiddenField ID="hdnpassword" runat="server" />
    <uc1:LeisureLoginLH runat="server" ID="LeisureLoginLH" />
    <script type="text/javascript">
        function RefreshCaptcha() {
            var img = document.getElementById("imgCaptcha");
            img.src = "Handler.ashx?query=" + Math.random();
            if (document.getElementById('ctl00_ContentPlaceHolder1_txtRefresh') != null)
                document.getElementById('ctl00_ContentPlaceHolder1_txtRefresh').value = '';
                           }
</script>
</asp:Content>
