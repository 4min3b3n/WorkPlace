<div id="fre-post-project-3 step-payment" class="fre-post-project-step step-wrapper step-payment">
    <div class="fre-post-project-box">
        <div class="step-edit-project">
            <p>Your posted project has been saved and waiting for the payment to become available on site.</p>
            <a class="fre-btn-o fre-post-project-previous-btn fre-btn-previous" href="">Edit</a>
        </div>
    </div>
    <div class="fre-post-project-box">
        <div class="step-choose-payment">
                        <div class="show_select_package">
                <p class="package_title">Your package: <strong>Standard</strong></p>
                <p class="package_description">$10.00 for 10 projects, displaying in 10 days. This plan includes 105 projects. Each project will be displayed as normal for 30 days.</p>
            </div>
            <div class="show_had_package" style="display:none;">
                <p>Your post(s) left: 0</p>
                <p>If you want to get more posts, you can directly move to purchase page by clicking the next button.</p>
                            </div>
            <h2>Payment Method<br><span>Select your most appropriate payment method</span></h2>
                        <form method="post" action="" id="checkout_form">
                <div class="payment_info"></div>
                <div style="position:absolute; left : -7777px; ">
                    <input type="submit" id="payment_submit">
                </div>
            </form>

            <ul id="fre-payment-accordion" class="fre-payment-list panel-group">
                                    <li class="panel">
                        <span class="title-plan" data-type="paypal">
                            Paypal                            <span>Send your payment via Paypal.</span>
                        </span>
                        <a data-toggle="collapse" data-parent="#fre-payment-accordion" href="#fre-payment-paypal" class="btn collapsed select-payment" data-type="paypal">Select</a>
                    </li>
                                    <li>
                        <span class="title-plan" data-type="2checkout">
                            2Checkout                            <span>Send your payment via 2Checkout.</span>
                        </span>
                        <a href="#" class="btn collapsed btn-submit-price-plan select-payment" data-type="2checkout" data-original-title="" title="">Select</a>
                    </li>
                                    <li class="panel">
                        <span class="title-plan" data-type="cash">
                            Cash                            <span>Transfer money directly to our bank account.</span>
                        </span>
                        <a data-toggle="collapse" data-type="cash" data-parent="#fre-payment-accordion" href="#fre-payment-cash" class="btn collapsed other-payment">Select</a>
                        <div id="fre-payment-cash" class="panel-collapse collapse fre-payment-proccess">
                            <div class="fre-payment-cash">
                                <p>
                                    Amount need to be transferred:                                    <br>
                                    <span class="cash_amount">...</span>
                                </p>
                                <p>
                                    Transfer to bank account:                                    <br>
                                    <span class="info_cash">
                                                                            </span>
                                </p>
                                <strong class="cash-message"><p><span style="line-height: 22.4px;">Please send your payment to account number: XXXX. Once payment has been verified, admin will approve your post or request.</span></p></strong>
                            </div>
                            <a href="#" class="fre-btn select-payment" data-type="cash">Make Payment</a>    
                        </div>
                    </li>
                	<li class="panel">
		<span class="title-plan select-payment" data-type="molpay">
			MOLPay			<span>Send your payment via MOLPay.</span>
		</span>
		<a href="#" class="btn collapsed select-payment" data-type="molpay">Select</a>
	</li>
    <li class="panel">
        <span class="title-plan payf-payment" data-type="payf">
            PayFast            <span>Send your payment to our PayFast account</span>
        </span>
        <a href="#" class="btn collapsed select-payment" data-type="payf">Select</a>
    </li>

	    <li class="panel">
        <span class="title-plan payu-payment" data-type="payu">
            PayU            <span>Send your payment to our PayUMoney account</span>
        </span>
        <!-- <a href="#" class="btn btn-submit-price-plan other-payment" data-type="payu">Select</a> -->
        <a data-toggle="collapse" data-type="payu" data-parent="#fre-payment-accordion" href="#fre-payment-payu" class="btn collapsed other-payment">Select</a>
        <div id="fre-payment-payu" class="panel-collapse collapse fre-payment-proccess">
    <form class="modal-form" id="payu_form" action="#" method="POST" autocomplete="on" novalidate="novalidate">
        <div class="fre-input-field">
            <label class="fre-field-title" for="">First Name</label>
            <input tabindex="20" id="payu_firstname" name="payu_firstname" type="text" size="20" class="bg-default-input not_empty required" placeholder="Your first name">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Last Name</label>
            <input tabindex="20" id="payu_lastname" name="payu_lastname" type="text" size="20" class="bg-default-input not_empty" placeholder="Your last name">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Email</label>
            <input tabindex="20" id="payu_email" type="email" name="payu_email" size="20" class="bg-default-input not_empty" placeholder="e.g exemple@enginethemes.com">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Phone</label>
            <input tabindex="20" id="payu_phone" type="text" size="20" class="bg-default-input not_empty" placeholder="0123456789">
        </div>
        <div class="fre-proccess-payment-btn">
            <button class="fre-btn" id="button_payu">Make Payment</button>
        </div>
    </form>
    <div style="display: none; height: 0; width:0;">
        <form method="post" action="#" id="payu_hidden_form">
            <input type="hidden" name="key" id="payu_key">
            <input type="hidden" name="hash" id="payu_hash">
            <input type="hidden" name="txnid" id="payu_txnid">
            <input type="hidden" name="firstname" id="payu_firstname_h">
            <input type="hidden" name="productinfo" id="payu_productinfo">
            <input type="hidden" name="email" id="payu_email_h">
            <input type="hidden" name="phone" id="payu_phone_h">
            <input type="hidden" name="amount" id="payu_amount">
            <input type="hidden" name="surl" id="payu_surl">
            <input type="hidden" name="furl" id="payu_furl">
            <input type="hidden" name="curl" id="payu_curl">
            <input type="hidden" name="service_provider" value="ae_payment">
            <button type="submit" class="btn  btn-primary" id="button_payu_h">Submit </button>
    </form>
    </div>
</div>    </li>

	<li class="panel">
		<span class="title-plan pin-payment" data-type="pin">
			Pin			<span>Send your payment to our Pin account</span>
		</span>
		<!-- <a href="#" class="btn btn-submit-price-plan other-payment" data-type="pin">select		</a> -->
		<a data-toggle="collapse" data-type="pin" data-parent="#fre-payment-accordion" href="#fre-payment-pin" class="btn collapsed other-payment">Select</a>
        <div id="fre-payment-pin" class="panel-collapse collapse fre-payment-proccess">
	<form class="modal-form" id="pin_form" novalidate="novalidate" autocomplete="on" data-ajax="false">
		<div class="fre-input-field">
	        <label class="fre-field-title" for="">Name on card</label>
	        <input tabindex="23" name="" id="cc-name" value="Roland C Robot" data-pin="name" class="bg-default-input not_empty" type="text">
	    </div>
	    <div class="row card-number-wrap">
	        <div class="col-lg-8 col-md-7 col-sm-7">
	            <div class="fre-input-field">
	                <label class="fre-field-title" for="">Card number:Card number</label>
	                <input tabindex="20" id="cc-number" type="text" value="5520000000000000" size="20" data-pin="number" class="bg-default-input not_empty" placeholder="???? &nbsp; &nbsp; &nbsp; ???? &nbsp; &nbsp; ???? &nbsp; &nbsp; &nbsp; ????">
	            </div>
	        </div>
	        <div class="col-lg-4 col-md-5 col-sm-5">
	            <div class="fre-input-field fre-card-expiry">
	                <label class="fre-field-title " for="">Expiry date</label>
	                <input tabindex="22" type="text" value="5" size="4" data-pin="exp-year" placeholder="MM" class="fre-card-expiry-month bg-default-input not_empty" id="cc-expiry-month">
			      	<input tabindex="21" type="text" value="16" size="2" data-pin="exp-month" placeholder="YY" class="fre-card-expiry-year bg-default-input not_empty" id="cc-expiry-year">
	            </div>
	        </div>
	    </div>
	    <div class="fre-input-field">
	        <label class="fre-field-title" for="">Card code</label>
	        <input tabindex="23" name="" id="cc-name" value="Roland C Robot" data-pin="name" class="bg-default-input not_empty" type="text">
	    </div>
	    <div class="fre-input-field">
	        <label class="fre-field-title" for="">Address line</label>
	        <input tabindex="23" name="" id="address-line" value="gfda" data-pin="address" class="bg-default-input not_empty" type="text">
	    </div>
	    <div class="fre-input-field">
	        <label class="fre-field-title" for="">City</label>
	        <input tabindex="23" name="" id="address-city" value="bd" data-pin="city" class="bg-default-input not_empty" type="text">
	    </div>
	    <div class="fre-input-field">
	        <label class="fre-field-title" for="">State</label>
	        <input tabindex="24" type="text" size="3" value="db" data-pin="state" class="bg-default-input not_empty input-cvc " placeholder="CVC" id="address-state">
	    </div>
	    <div class="fre-input-field">
	        <label class="fre-field-title" for="">Country</label>
	        <select class="form-control-pin fre-chosen-single" id="address-country" name="address-country" style="display: none;">
				<script type="text/javascript">
                    document.write(getCountryOptionsListHtml("GB"));
                </script><option value="">Please select...</option>
<option value="GB" selected="">United Kingdom</option>
<option value="AF">Afghanistan</option>
<option value="AX">Aland Islands</option>
<option value="AL">Albania</option>
<option value="DZ">Algeria</option>
<option value="AS">American Samoa</option>
<option value="AD">Andorra</option>
<option value="AO">Angola</option>
<option value="AI">Anguilla</option>
<option value="AQ">Antarctica</option>
<option value="AG">Antigua and Barbuda</option>
<option value="AR">Argentina</option>
<option value="AM">Armenia</option>
<option value="AW">Aruba</option>
<option value="AU">Australia</option>
<option value="AT">Austria</option>
<option value="AZ">Azerbaijan</option>
<option value="BS">Bahamas</option>
<option value="BH">Bahrain</option>
<option value="BD">Bangladesh</option>
<option value="BB">Barbados</option>
<option value="BY">Belarus</option>
<option value="BE">Belgium</option>
<option value="BZ">Belize</option>
<option value="BJ">Benin</option>
<option value="BM">Bermuda</option>
<option value="BT">Bhutan</option>
<option value="BO">Bolivia</option>
<option value="BA">Bosnia and Herzegovina</option>
<option value="BW">Botswana</option>
<option value="BV">Bouvet Island</option>
<option value="BR">Brazil</option>
<option value="IO">British Indian Ocean Territory</option>
<option value="BN">Brunei Darussalam</option>
<option value="BG">Bulgaria</option>
<option value="BF">Burkina Faso</option>
<option value="BI">Burundi</option>
<option value="KH">Cambodia</option>
<option value="CM">Cameroon</option>
<option value="CA">Canada</option>
<option value="CV">Cape Verde</option>
<option value="KY">Cayman Islands</option>
<option value="CF">Central African Republic</option>
<option value="TD">Chad</option>
<option value="CL">Chile</option>
<option value="CN">China</option>
<option value="CX">Christmas Island</option>
<option value="CC">Cocos (Keeling) Islands</option>
<option value="CO">Colombia</option>
<option value="KM">Comoros</option>
<option value="CG">Congo</option>
<option value="CD">Congo, The Democratic Republic of the</option>
<option value="CK">Cook Islands</option>
<option value="CR">Costa Rica</option>
<option value="CI">C?te d'Ivoire</option>
<option value="HR">Croatia</option>
<option value="CU">Cuba</option>
<option value="CY">Cyprus</option>
<option value="CZ">Czech Republic</option>
<option value="DK">Denmark</option>
<option value="DJ">Djibouti</option>
<option value="DM">Dominica</option>
<option value="DO">Dominican Republic</option>
<option value="EC">Ecuador</option>
<option value="EG">Egypt</option>
<option value="SV">El Salvador</option>
<option value="GQ">Equatorial Guinea</option>
<option value="ER">Eritrea</option>
<option value="EE">Estonia</option>
<option value="ET">Ethiopia</option>
<option value="FK">Falkland Islands (Malvinas)</option>
<option value="FO">Faroe Islands</option>
<option value="FJ">Fiji</option>
<option value="FI">Finland</option>
<option value="FR">France</option>
<option value="GF">French Guiana</option>
<option value="PF">French Polynesia</option>
<option value="TF">French Southern Territories</option>
<option value="GA">Gabon</option>
<option value="GM">Gambia</option>
<option value="GE">Georgia</option>
<option value="DE">Germany</option>
<option value="GH">Ghana</option>
<option value="GI">Gibraltar</option>
<option value="GR">Greece</option>
<option value="GL">Greenland</option>
<option value="GD">Grenada</option>
<option value="GP">Guadeloupe</option>
<option value="GU">Guam</option>
<option value="GT">Guatemala</option>
<option value="GG">Guernsey</option>
<option value="GN">Guinea</option>
<option value="GW">Guinea-Bissau</option>
<option value="GY">Guyana</option>
<option value="HT">Haiti</option>
<option value="HM">Heard Island and McDonald Islands</option>
<option value="VA">Holy See (Vatican City State)</option>
<option value="HN">Honduras</option>
<option value="HK">Hong Kong</option>
<option value="HU">Hungary</option>
<option value="IS">Iceland</option>
<option value="IN">India</option>
<option value="ID">Indonesia</option>
<option value="IR">Iran, Islamic Republic of</option>
<option value="IQ">Iraq</option>
<option value="IE">Ireland</option>
<option value="IM">Isle of Man</option>
<option value="IL">Israel</option>
<option value="IT">Italy</option>
<option value="JM">Jamaica</option>
<option value="JP">Japan</option>
<option value="JE">Jersey</option>
<option value="JO">Jordan</option>
<option value="KZ">Kazakhstan</option>
<option value="KE">Kenya</option>
<option value="KI">Kiribati</option>
<option value="KP">Korea, Democratic People's Republic of</option>
<option value="KR">Korea, Republic of</option>
<option value="KW">Kuwait</option>
<option value="KG">Kyrgyzstan</option>
<option value="LA">Lao People's Democratic Republic</option>
<option value="LV">Latvia</option>
<option value="LB">Lebanon</option>
<option value="LS">Lesotho</option>
<option value="LR">Liberia</option>
<option value="LY">Libyan Arab Jamahiriya</option>
<option value="LI">Liechtenstein</option>
<option value="LT">Lithuania</option>
<option value="LU">Luxembourg</option>
<option value="MO">Macao</option>
<option value="MK">Macedonia, The Former Yugoslav Republic of</option>
<option value="MG">Madagascar</option>
<option value="MW">Malawi</option>
<option value="MY">Malaysia</option>
<option value="MV">Maldives</option>
<option value="ML">Mali</option>
<option value="MT">Malta</option>
<option value="MH">Marshall Islands</option>
<option value="MQ">Martinique</option>
<option value="MR">Mauritania</option>
<option value="MU">Mauritius</option>
<option value="YT">Mayotte</option>
<option value="MX">Mexico</option>
<option value="FM">Micronesia, Federated States of</option>
<option value="MD">Moldova</option>
<option value="MC">Monaco</option>
<option value="MN">Mongolia</option>
<option value="ME">Montenegro</option>
<option value="MS">Montserrat</option>
<option value="MA">Morocco</option>
<option value="MZ">Mozambique</option>
<option value="MM">Myanmar</option>
<option value="NA">Namibia</option>
<option value="NR">Nauru</option>
<option value="NP">Nepal</option>
<option value="NL">Netherlands</option>
<option value="AN">Netherlands Antilles</option>
<option value="NC">New Caledonia</option>
<option value="NZ">New Zealand</option>
<option value="NI">Nicaragua</option>
<option value="NE">Niger</option>
<option value="NG">Nigeria</option>
<option value="NU">Niue</option>
<option value="NF">Norfolk Island</option>
<option value="MP">Northern Mariana Islands</option>
<option value="NO">Norway</option>
<option value="OM">Oman</option>
<option value="PK">Pakistan</option>
<option value="PW">Palau</option>
<option value="PS">Palestinian Territory, Occupied</option>
<option value="PA">Panama</option>
<option value="PG">Papua New Guinea</option>
<option value="PY">Paraguay</option>
<option value="PE">Peru</option>
<option value="PH">Philippines</option>
<option value="PN">Pitcairn</option>
<option value="PL">Poland</option>
<option value="PT">Portugal</option>
<option value="PR">Puerto Rico</option>
<option value="QA">Qatar</option>
<option value="RE">R?union</option>
<option value="RO">Romania</option>
<option value="RU">Russian Federation</option>
<option value="RW">Rwanda</option>
<option value="BL">Saint Barth?lemy</option>
<option value="SH">Saint Helena</option>
<option value="KN">Saint Kitts and Nevis</option>
<option value="LC">Saint Lucia</option>
<option value="MF">Saint Martin</option>
<option value="PM">Saint Pierre and Miquelon</option>
<option value="VC">Saint Vincent and the Grenadines</option>
<option value="WS">Samoa</option>
<option value="SM">San Marino</option>
<option value="ST">Sao Tome and Principe</option>
<option value="SA">Saudi Arabia</option>
<option value="SN">Senegal</option>
<option value="RS">Serbia</option>
<option value="SC">Seychelles</option>
<option value="SL">Sierra Leone</option>
<option value="SG">Singapore</option>
<option value="SK">Slovakia</option>
<option value="SI">Slovenia</option>
<option value="SB">Solomon Islands</option>
<option value="SO">Somalia</option>
<option value="ZA">South Africa</option>
<option value="GS">South Georgia and the South Sandwich Islands</option>
<option value="ES">Spain</option>
<option value="LK">Sri Lanka</option>
<option value="SD">Sudan</option>
<option value="SR">Suriname</option>
<option value="SJ">Svalbard and Jan Mayen</option>
<option value="SZ">Swaziland</option>
<option value="SE">Sweden</option>
<option value="CH">Switzerland</option>
<option value="SY">Syrian Arab Republic</option>
<option value="TW">Taiwan, Province of China</option>
<option value="TJ">Tajikistan</option>
<option value="TZ">Tanzania, United Republic of</option>
<option value="TH">Thailand</option>
<option value="TL">Timor-Leste</option>
<option value="TG">Togo</option>
<option value="TK">Tokelau</option>
<option value="TO">Tonga</option>
<option value="TT">Trinidad and Tobago</option>
<option value="TN">Tunisia</option>
<option value="TR">Turkey</option>
<option value="TM">Turkmenistan</option>
<option value="TC">Turks and Caicos Islands</option>
<option value="TV">Tuvalu</option>
<option value="UG">Uganda</option>
<option value="UA">Ukraine</option>
<option value="AE">United Arab Emirates</option>
<option value="GB" selected="">United Kingdom</option>
<option value="US">United States</option>
<option value="UM">United States Minor Outlying Islands</option>
<option value="UY">Uruguay</option>
<option value="UZ">Uzbekistan</option>
<option value="VU">Vanuatu</option>
<option value="VE">Venezuela</option>
<option value="VN">Viet Nam</option>
<option value="VG">Virgin Islands, British</option>
<option value="VI">Virgin Islands, U.S.</option>
<option value="WF">Wallis and Futuna</option>
<option value="EH">Western Sahara</option>
<option value="YE">Yemen</option>
<option value="ZM">Zambia</option>
<option value="ZW">Zimbabwe</option>

            </select><div class="chosen-container chosen-container-single form-control-pin fre-chosen-single" title="" id="address_country_chosen" style="width: 100%;"><a class="chosen-single">
  <span>United Kingdom</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
	    </div>
	    <div class="fre-input-field">
	        <label class="fre-field-title" for="">Postcode</label>
	        <input tabindex="24" type="text" size="3" value="2600" data-pin="postcode" class="bg-default-input not_empty input-cvc " placeholder="CVC" id="address-postcode">
	    </div>
	    <div class="fre-proccess-payment-btn">
	        <button class="fre-btn">Make Payment</button>
	    </div>
	</form>
</div>	</li>
    <li class="panel">
        <span class="title-plan sagepay-payment" data-type="sagepay">
            Sagepay            <span>Send your payment to our Sagepay gateway</span>
        </span>
        <!-- <a href="#" class="btn btn-submit-price-plan other-payment" data-type="sagepay">Select</a> -->
        <a data-toggle="collapse" data-type="sagepay" data-parent="#fre-payment-accordion" href="#fre-payment-sagepay" class="btn collapsed other-payment">Select</a>
        <div id="fre-payment-sagepay" class="panel-collapse collapse fre-payment-proccess">
    <form class="modal-form" id="sagepay_form" action="#" method="POST" autocomplete="on" novalidate="novalidate">
        <div class="fre-input-field">
            <label class="fre-field-title" for="">First Name</label>
            <input tabindex="20" id="sagepay_firstname" name="sagepay_firstname" type="text" size="20" class="form-control bg-default-input not_empty required" placeholder="Jonh">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Last Name</label>
            <input tabindex="20" id="sagepay_lastname" name="sagepay_lastname" type="text" size="20" class="form-control bg-default-input not_empty" placeholder="Smith">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Address</label>
            <input tabindex="20" id="sagepay_billingadress" name="sagepay_billingadress" type="text" size="20" class="form-control bg-default-input not_empty" placeholder="">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">City</label>
            <input tabindex="20" id="sagepay_billingcity" name="sagepay_billingcity" type="text" size="20" class="form-control bg-default-input not_empty" placeholder="">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Post/Zip Code</label>
            <input tabindex="20" id="sagepay_postcode" name="sagepay_postcode" type="text" size="20" class="form-control bg-default-input not_empty" placeholder="">
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">Country</label>
            <select class=" fre-chosen-single" id="sagepay_country" name="sagepay_country" style="display: none;">
                <script type="text/javascript">
                    document.write(getCountryOptionsListHtml("GB"));
                </script><option value="">Please select...</option>
<option value="GB" selected="">United Kingdom</option>
<option value="AF">Afghanistan</option>
<option value="AX">Aland Islands</option>
<option value="AL">Albania</option>
<option value="DZ">Algeria</option>
<option value="AS">American Samoa</option>
<option value="AD">Andorra</option>
<option value="AO">Angola</option>
<option value="AI">Anguilla</option>
<option value="AQ">Antarctica</option>
<option value="AG">Antigua and Barbuda</option>
<option value="AR">Argentina</option>
<option value="AM">Armenia</option>
<option value="AW">Aruba</option>
<option value="AU">Australia</option>
<option value="AT">Austria</option>
<option value="AZ">Azerbaijan</option>
<option value="BS">Bahamas</option>
<option value="BH">Bahrain</option>
<option value="BD">Bangladesh</option>
<option value="BB">Barbados</option>
<option value="BY">Belarus</option>
<option value="BE">Belgium</option>
<option value="BZ">Belize</option>
<option value="BJ">Benin</option>
<option value="BM">Bermuda</option>
<option value="BT">Bhutan</option>
<option value="BO">Bolivia</option>
<option value="BA">Bosnia and Herzegovina</option>
<option value="BW">Botswana</option>
<option value="BV">Bouvet Island</option>
<option value="BR">Brazil</option>
<option value="IO">British Indian Ocean Territory</option>
<option value="BN">Brunei Darussalam</option>
<option value="BG">Bulgaria</option>
<option value="BF">Burkina Faso</option>
<option value="BI">Burundi</option>
<option value="KH">Cambodia</option>
<option value="CM">Cameroon</option>
<option value="CA">Canada</option>
<option value="CV">Cape Verde</option>
<option value="KY">Cayman Islands</option>
<option value="CF">Central African Republic</option>
<option value="TD">Chad</option>
<option value="CL">Chile</option>
<option value="CN">China</option>
<option value="CX">Christmas Island</option>
<option value="CC">Cocos (Keeling) Islands</option>
<option value="CO">Colombia</option>
<option value="KM">Comoros</option>
<option value="CG">Congo</option>
<option value="CD">Congo, The Democratic Republic of the</option>
<option value="CK">Cook Islands</option>
<option value="CR">Costa Rica</option>
<option value="CI">C?te d'Ivoire</option>
<option value="HR">Croatia</option>
<option value="CU">Cuba</option>
<option value="CY">Cyprus</option>
<option value="CZ">Czech Republic</option>
<option value="DK">Denmark</option>
<option value="DJ">Djibouti</option>
<option value="DM">Dominica</option>
<option value="DO">Dominican Republic</option>
<option value="EC">Ecuador</option>
<option value="EG">Egypt</option>
<option value="SV">El Salvador</option>
<option value="GQ">Equatorial Guinea</option>
<option value="ER">Eritrea</option>
<option value="EE">Estonia</option>
<option value="ET">Ethiopia</option>
<option value="FK">Falkland Islands (Malvinas)</option>
<option value="FO">Faroe Islands</option>
<option value="FJ">Fiji</option>
<option value="FI">Finland</option>
<option value="FR">France</option>
<option value="GF">French Guiana</option>
<option value="PF">French Polynesia</option>
<option value="TF">French Southern Territories</option>
<option value="GA">Gabon</option>
<option value="GM">Gambia</option>
<option value="GE">Georgia</option>
<option value="DE">Germany</option>
<option value="GH">Ghana</option>
<option value="GI">Gibraltar</option>
<option value="GR">Greece</option>
<option value="GL">Greenland</option>
<option value="GD">Grenada</option>
<option value="GP">Guadeloupe</option>
<option value="GU">Guam</option>
<option value="GT">Guatemala</option>
<option value="GG">Guernsey</option>
<option value="GN">Guinea</option>
<option value="GW">Guinea-Bissau</option>
<option value="GY">Guyana</option>
<option value="HT">Haiti</option>
<option value="HM">Heard Island and McDonald Islands</option>
<option value="VA">Holy See (Vatican City State)</option>
<option value="HN">Honduras</option>
<option value="HK">Hong Kong</option>
<option value="HU">Hungary</option>
<option value="IS">Iceland</option>
<option value="IN">India</option>
<option value="ID">Indonesia</option>
<option value="IR">Iran, Islamic Republic of</option>
<option value="IQ">Iraq</option>
<option value="IE">Ireland</option>
<option value="IM">Isle of Man</option>
<option value="IL">Israel</option>
<option value="IT">Italy</option>
<option value="JM">Jamaica</option>
<option value="JP">Japan</option>
<option value="JE">Jersey</option>
<option value="JO">Jordan</option>
<option value="KZ">Kazakhstan</option>
<option value="KE">Kenya</option>
<option value="KI">Kiribati</option>
<option value="KP">Korea, Democratic People's Republic of</option>
<option value="KR">Korea, Republic of</option>
<option value="KW">Kuwait</option>
<option value="KG">Kyrgyzstan</option>
<option value="LA">Lao People's Democratic Republic</option>
<option value="LV">Latvia</option>
<option value="LB">Lebanon</option>
<option value="LS">Lesotho</option>
<option value="LR">Liberia</option>
<option value="LY">Libyan Arab Jamahiriya</option>
<option value="LI">Liechtenstein</option>
<option value="LT">Lithuania</option>
<option value="LU">Luxembourg</option>
<option value="MO">Macao</option>
<option value="MK">Macedonia, The Former Yugoslav Republic of</option>
<option value="MG">Madagascar</option>
<option value="MW">Malawi</option>
<option value="MY">Malaysia</option>
<option value="MV">Maldives</option>
<option value="ML">Mali</option>
<option value="MT">Malta</option>
<option value="MH">Marshall Islands</option>
<option value="MQ">Martinique</option>
<option value="MR">Mauritania</option>
<option value="MU">Mauritius</option>
<option value="YT">Mayotte</option>
<option value="MX">Mexico</option>
<option value="FM">Micronesia, Federated States of</option>
<option value="MD">Moldova</option>
<option value="MC">Monaco</option>
<option value="MN">Mongolia</option>
<option value="ME">Montenegro</option>
<option value="MS">Montserrat</option>
<option value="MA">Morocco</option>
<option value="MZ">Mozambique</option>
<option value="MM">Myanmar</option>
<option value="NA">Namibia</option>
<option value="NR">Nauru</option>
<option value="NP">Nepal</option>
<option value="NL">Netherlands</option>
<option value="AN">Netherlands Antilles</option>
<option value="NC">New Caledonia</option>
<option value="NZ">New Zealand</option>
<option value="NI">Nicaragua</option>
<option value="NE">Niger</option>
<option value="NG">Nigeria</option>
<option value="NU">Niue</option>
<option value="NF">Norfolk Island</option>
<option value="MP">Northern Mariana Islands</option>
<option value="NO">Norway</option>
<option value="OM">Oman</option>
<option value="PK">Pakistan</option>
<option value="PW">Palau</option>
<option value="PS">Palestinian Territory, Occupied</option>
<option value="PA">Panama</option>
<option value="PG">Papua New Guinea</option>
<option value="PY">Paraguay</option>
<option value="PE">Peru</option>
<option value="PH">Philippines</option>
<option value="PN">Pitcairn</option>
<option value="PL">Poland</option>
<option value="PT">Portugal</option>
<option value="PR">Puerto Rico</option>
<option value="QA">Qatar</option>
<option value="RE">R?union</option>
<option value="RO">Romania</option>
<option value="RU">Russian Federation</option>
<option value="RW">Rwanda</option>
<option value="BL">Saint Barth?lemy</option>
<option value="SH">Saint Helena</option>
<option value="KN">Saint Kitts and Nevis</option>
<option value="LC">Saint Lucia</option>
<option value="MF">Saint Martin</option>
<option value="PM">Saint Pierre and Miquelon</option>
<option value="VC">Saint Vincent and the Grenadines</option>
<option value="WS">Samoa</option>
<option value="SM">San Marino</option>
<option value="ST">Sao Tome and Principe</option>
<option value="SA">Saudi Arabia</option>
<option value="SN">Senegal</option>
<option value="RS">Serbia</option>
<option value="SC">Seychelles</option>
<option value="SL">Sierra Leone</option>
<option value="SG">Singapore</option>
<option value="SK">Slovakia</option>
<option value="SI">Slovenia</option>
<option value="SB">Solomon Islands</option>
<option value="SO">Somalia</option>
<option value="ZA">South Africa</option>
<option value="GS">South Georgia and the South Sandwich Islands</option>
<option value="ES">Spain</option>
<option value="LK">Sri Lanka</option>
<option value="SD">Sudan</option>
<option value="SR">Suriname</option>
<option value="SJ">Svalbard and Jan Mayen</option>
<option value="SZ">Swaziland</option>
<option value="SE">Sweden</option>
<option value="CH">Switzerland</option>
<option value="SY">Syrian Arab Republic</option>
<option value="TW">Taiwan, Province of China</option>
<option value="TJ">Tajikistan</option>
<option value="TZ">Tanzania, United Republic of</option>
<option value="TH">Thailand</option>
<option value="TL">Timor-Leste</option>
<option value="TG">Togo</option>
<option value="TK">Tokelau</option>
<option value="TO">Tonga</option>
<option value="TT">Trinidad and Tobago</option>
<option value="TN">Tunisia</option>
<option value="TR">Turkey</option>
<option value="TM">Turkmenistan</option>
<option value="TC">Turks and Caicos Islands</option>
<option value="TV">Tuvalu</option>
<option value="UG">Uganda</option>
<option value="UA">Ukraine</option>
<option value="AE">United Arab Emirates</option>
<option value="GB" selected="">United Kingdom</option>
<option value="US">United States</option>
<option value="UM">United States Minor Outlying Islands</option>
<option value="UY">Uruguay</option>
<option value="UZ">Uzbekistan</option>
<option value="VU">Vanuatu</option>
<option value="VE">Venezuela</option>
<option value="VN">Viet Nam</option>
<option value="VG">Virgin Islands, British</option>
<option value="VI">Virgin Islands, U.S.</option>
<option value="WF">Wallis and Futuna</option>
<option value="EH">Western Sahara</option>
<option value="YE">Yemen</option>
<option value="ZM">Zambia</option>
<option value="ZW">Zimbabwe</option>

            </select><div class="chosen-container chosen-container-single  fre-chosen-single" title="" id="sagepay_country_chosen" style="width: 100%;"><a class="chosen-single">
  <span>United Kingdom</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
        </div>
        <div class="fre-input-field">
            <label class="fre-field-title" for="">State Code (U.S only)</label>
            <select class=" fre-chosen-single" aria-describedby="helpBlock" id="sagepay_state" style="display: none;">
                <script type="text/javascript">
                    document.write(getUsStateOptionsListHtml(""));
                </script><option value="">Please select...</option>
<option value="AL">Alabama</option>
<option value="AK">Alaska</option>
<option value="AZ">Arizona</option>
<option value="AR">Arkansas</option>
<option value="CA">California</option>
<option value="CO">Colorado</option>
<option value="CT">Connecticut</option>
<option value="DE">Delaware</option>
<option value="FL">Florida</option>
<option value="GA">Georgia</option>
<option value="HI">Hawaii</option>
<option value="ID">Idaho</option>
<option value="IL">Illinois</option>
<option value="IN">Indiana</option>
<option value="IA">Iowa</option>
<option value="KS">Kansas</option>
<option value="KY">Kentucky</option>
<option value="LA">Louisiana</option>
<option value="ME">Maine</option>
<option value="MD">Maryland</option>
<option value="MA">Massachusetts</option>
<option value="MI">Michigan</option>
<option value="MN">Minnesota</option>
<option value="MS">Mississippi</option>
<option value="MO">Missouri</option>
<option value="MT">Montana</option>
<option value="NE">Nebraska</option>
<option value="NV">Nevada</option>
<option value="NH">New Hampshire</option>
<option value="NJ">New Jersey</option>
<option value="NM">New Mexico</option>
<option value="NY">New York</option>
<option value="NC">North Carolina</option>
<option value="ND">North Dakota</option>
<option value="OH">Ohio</option>
<option value="OK">Oklahoma</option>
<option value="OR">Oregon</option>
<option value="PA">Pennsylvania</option>
<option value="RI">Rhode Island</option>
<option value="SC">South Carolina</option>
<option value="SD">South Dakota</option>
<option value="TN">Tennessee</option>
<option value="TX">Texas</option>
<option value="UT">Utah</option>
<option value="VT">Vermont</option>
<option value="VA">Virginia</option>
<option value="WA">Washington</option>
<option value="WV">West Virginia</option>
<option value="WI">Wisconsin</option>
<option value="WY">Wyoming</option>

            </select><div class="chosen-container chosen-container-single  fre-chosen-single" title="" id="sagepay_state_chosen" style="width: 100%;"><a class="chosen-single">
  <span>Please select...</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>  
        </div>
        <div class="fre-proccess-payment-btn">
            <button class="fre-btn" id="button_sagepay">Make Payment</button>
        </div>
    </form>
</div>        <div class="clearfix"></div>
    </li>

                <li class="panel">
                    <span class="title-plan braintree-payment" data-type="braintree">
                        Braintree                        <span>Send your payment to our Braintree account</span>
                    </span>
                    <a data-toggle="collapse" data-type="braintree" data-parent="#fre-payment-accordion" href="#fre-payment-braintree" class="btn collapsed other-payment">Select</a>
                    <div id="fre-payment-braintree" class="panel-collapse collapse fre-payment-proccess">
    <div class="form-group">
		<div id="dropin-container"></div>
	</div>
	<form id="checkout-form">
		<div class="content">
			<input type="hidden" id="braintree-payment-nonce" name="braintree-payment-nonce">
		</div>
		<div class="button">
			<button class="btn-sumary orange-dark box-shadow-button-orange btn-submit" type="submit">
				Make Payment			</button>
		</div>
	</form>

	<form id="braintree_form" style="display: none;">
		<div class="content">
			<input type="hidden" id="braintree-payment-nonce" name="braintree-payment-nonce">
		</div>
		<div class="button">
			<button class="btn-sumary fre-btn btn-submit" type="submit" id="submit_braintree">	
				Make Payment			</button>
		</div>
	</form>
</div>                </li>
            <li class="panel fre-credit-payment-onsite not-money">
          <span class="title-plan fre-credit-payment" data-type="frecredit">
              Credit              <span>Your available balance: <strong>$0.00</strong></span>
              <span class="error" style=""><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>Your balance is not enough to proceed the payment.</span>
          </span>
          <a data-toggle="collapse" data-type="frecredit" data-parent="#fre-payment-accordion" href="" class="btn collapsed btn-not-money">Select</a>
          <div id="fre-payment-frecredit" class="panel-collapse collapse fre-payment-proccess">
	<form class="modal-form" id="submit_fre_credit_form" novalidate="novalidate" autocomplete="on" data-ajax="false">
		<div class="fre-input-field">
			<label class="title-name">Your balance will be deducted:</label>
			<span class="package_price fee-package">--</span>
		</div>
		<div class="fre-input-field">
			<label class="title-name">Estimated balance after payment:</label>
			<span class="estimate_balance fee-package"></span>	
		</div>
		        <div class="fre-proccess-payment-btn">
            <button class="fre-btn btn-pay-balance" "="" id="submit_fre_credit">PAY TO YOUR BALANCE</button>
        </div>
	</form>
</div>
        <!--     <a href="#!" class="btn btn-submit-price-plan btn-fre-credit-payment" data-toggle="popover" data-content="Your balance is not enough for this plan" data-type="frecredit">Select</a> -->
        </li>
            </ul>
                    </div>
    </div>
</div>