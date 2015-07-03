<%@ Page Title="Your Trainer Profile" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="trainer-profile.aspx.cs" Inherits="Trainarea_solution.Account.trainer_profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Page.Title %></h1>
    <telerik:RadWizard ID="wizTrainer" runat="server">
        <WizardSteps>

            <telerik:RadWizardStep ID="wizStepBasic" Title="Basic" runat="server" StepType="Start" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
                <div class="container">
                    <i class="glyphicon glyphicon-user"></i>
                    <span>Enter your basic details</span>
                </div>
                <hr />
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblFirstName" runat="server" Text="First Name *" AssociatedControlID="txtFirstName"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtFirstName" runat="server"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="reqtxtFirstName" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblLastName" runat="server" Text="Last Name *" AssociatedControlID="txtLastName"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtLastName" runat="server"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="reqtxtLastName" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblTitle" runat="server" Text="Title" AssociatedControlID="cboTitle"></asp:Label>
                                <br />
                                <telerik:RadComboBox ID="cboTitle" runat="server" DataTextField="Country" DataValueField="CountryId">
                                    <Items>
                                        <telerik:RadComboBoxItem Value="0" Text="Designer" />
                                        <telerik:RadComboBoxItem Value="1" Text="Developer" />
                                    </Items>
                                </telerik:RadComboBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth" AssociatedControlID="datDateOfBirth"></asp:Label>
                                <br />
                                <telerik:RadDatePicker ID="datDateOfBirth" runat="server"></telerik:RadDatePicker>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblAddress" runat="server" Text="Address" AssociatedControlID="txtAddress"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtAddress" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblCountry" runat="server" Text="Country" AssociatedControlID="cboCountry"></asp:Label>
                                <br />
                                <asp:SqlDataSource ID="sqlDataCountry" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CountryId], [Country] FROM [Countries] ORDER BY [Country]"></asp:SqlDataSource>
                                <telerik:RadComboBox ID="cboCountry" runat="server" DataSourceID="sqlDataCountry" DataTextField="Country" DataValueField="CountryId">
                                </telerik:RadComboBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblCity" runat="server" Text="City" AssociatedControlID="txtCity"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtCity" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblStreetName" runat="server" Text="Street Name" AssociatedControlID="txtStreetName"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtStreetName" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblZipCode" runat="server" Text="Zip Code" AssociatedControlID="txtZipCode"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtZipCode" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblUploadProfilePicture" runat="server" Text="Upload profile picture" AssociatedControlID="profilePicturePreview"></asp:Label>
                                <br />
                                <telerik:RadAsyncUpload ID="uploadProfilePicture" runat="server" Localization-Select="Browse">
                                </telerik:RadAsyncUpload>
                                <telerik:RadBinaryImage ImageUrl="http://www.clker.com/cliparts/A/Y/O/m/o/N/placeholder-hi.png" Width="120px" ID="profilePicturePreview" runat="server" CssClass="img-thumb" />
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblUploadCV" runat="server" Text="Upload CV" AssociatedControlID="uploadCV"></asp:Label>
                                <br />
                                <telerik:RadAsyncUpload ID="uploadCV" runat="server" Localization-Select="Browse"></telerik:RadAsyncUpload>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblDescription" runat="server" Text="Description" AssociatedControlID="txtDescription"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtDescription" runat="server" TextMode="MultiLine"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </telerik:RadWizardStep>
            <telerik:RadWizardStep ID="wizStepContact" Title="Contact" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
                <div class="container">
                    <i class="glyphicon glyphicon-envelope"></i>
                    <span>Enter your basic details</span>
                </div>
                <hr />
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtEmail" runat="server"></telerik:RadTextBox>
                                <asp:RegularExpressionValidator ID="regtxtEmail" runat="server" ErrorMessage="invalid email" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblAdditionalPhone" runat="server" Text="Additional Phone" AssociatedControlID="txtAdditionalPhone"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtAdditionalPhone" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblWebsite" runat="server" Text="Website" AssociatedControlID="txtWebsite"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtWebsite" runat="server" CssClass="website"></telerik:RadTextBox>
                                <asp:RegularExpressionValidator ID="regtxtWebsite" runat="server" ErrorMessage="Invalid Url" Display="Dynamic" ControlToValidate="txtWebsite" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblFacebook" runat="server" Text="Facebook" AssociatedControlID="txtFacebook"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtFacebook" runat="server" CssClass="facebook"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblLinkedIn" runat="server" Text="LinkedIn" AssociatedControlID="txtLinkedIn"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtLinkedIn" runat="server" CssClass="linkedIn"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblMsn" runat="server" Text="MSN" AssociatedControlID="txtMsn"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtMsn" runat="server" CssClass="msn"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblAol" runat="server" Text="AOL" AssociatedControlID="txtAol"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtAol" runat="server" CssClass="aol"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblPhone" runat="server" Text="Phone" AssociatedControlID="txtPhone"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtPhone" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblFax" runat="server" Text="Fax" AssociatedControlID="txtFax"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtFax" runat="server"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblSkype" runat="server" Text="Skype" AssociatedControlID="txtSkype"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtSkype" runat="server" CssClass="skype"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblTwitter" runat="server" Text="Twitter" AssociatedControlID="txtTwitter"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtTwitter" runat="server" CssClass="twitter"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblYahoo" runat="server" Text="Yahoo" AssociatedControlID="txtYahoo"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtYahoo" runat="server" CssClass="yahoo"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblXing" runat="server" Text="Xing" AssociatedControlID="txtXing"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtXing" runat="server" CssClass="xing"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                            <div class="col-md-offset-2">
                                <asp:Label ID="lblIcq" runat="server" Text="ICQ" AssociatedControlID="txtIcq"></asp:Label>
                                <br />
                                <telerik:RadTextBox ID="txtIcq" runat="server" CssClass="icq"></telerik:RadTextBox>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </telerik:RadWizardStep>
            <telerik:RadWizardStep ID="wizStepKnowledge" Title="Knowledge" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
                <div class="container">
                    <i class="glyphicon glyphicon glyphicon-bookmark"></i>
                    <span>Enter your degrees</span>
                </div>
                <hr />
                <div class="container">
                    <i class="glyphicon glyphicon glyphicon-user"></i>
                    <span>Enter your certifications</span>
                </div>
                <hr />
                <div class="container">
                    <i class="glyphicon glyphicon glyphicon-equalizer"></i>
                    <span>Domain Known</span>
                </div>
                <hr />
                <div class="container">
                    <i class="glyphicon glyphicon glyphicon-duplicate"></i>
                    <span>Publications</span>
                </div>
                <hr />
                
            </telerik:RadWizardStep>
            <telerik:RadWizardStep ID="wizStepServices" Title="Services" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
            </telerik:RadWizardStep>
            <telerik:RadWizardStep ID="wizStepReferences" Title="References" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
            </telerik:RadWizardStep>
        </WizardSteps>
    </telerik:RadWizard>

    <telerik:RadAutoCompleteBox ID="RadAutoCompleteBox1" runat="server"></telerik:RadAutoCompleteBox>

</asp:Content>
