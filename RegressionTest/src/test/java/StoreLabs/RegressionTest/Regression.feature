      
 @tag
 Feature: Sign-up flow
 
 @Background
 Given: Storelab Android application is installed
 
 @Regression 
## TC_01
 Scenario: User can sign-up with valid and unique credentials
 Given: User is on home screen of the application
 When:  Tap on Profile button from the horizontal tabs at the bottom of the application
 And:   Tap Sign in button from Account screen
 And:   Tap Sign up button from Sign In screen
 Then:  Sign up screen appears
 
 
 ## TC_02
 Scenario Outline: User can sign-up with valid and unique credentials
 Given: User is on sign-up screen of the application
 When: Input valid credentials First Name <First Name>, Last Name <Last Name>, Email <Email>, Password <Password> 
       and Confiem Password <Confirm Password>
 When: Tap on sign up button
 Then: User completes sign up
 
 
 Examples: 
      
      |First Name  |  Last Name   |  Email                |  Password |  Confirm Password |
      |Aswani      |  Kishore     | aswanitester@gmail.com|  Hello123 |  Hello123         | 
      
 
 
 
 ##TC_03
 Scenario Outline: User cannot sign-up with email id already registered
 Given: User is on sign-up screen of the application
 When:  Enter valid First Name<First Name>, Last Name<Last Name>, email id already registered <Email>, Password <Password> and Confirm password<Confirm Password>y
 And:   Tap sign-up button
 Then:  Error message "Email has already been taken" appears
 
 
 Examples: 
      
      |First Name  |  Last Name   |  Email                |  Password |  Confirm Password |
      |Aswani      |  Kishore     | aswanitester@gmail.com|  Hello123 |  Hello123         | 
      
      
      
## TC_04
Scenario Outline: Test the upperlimit of all the text boxes in Sign up screen
Given: User is on sign-up screen of the application
When:  Enter First Name<First Name>, Last Name<Last Name>, email id <Email> in sign up screen
And:   Count the maximum characters user can enter in each text box
Then:  Maximum character limit shoul not exceed 50

Examples: 

  |First Name                                                             |  Last Name                                                 |  Email                                                                              |
  |Aswanigggfhfyewbdcsbnbcbcsbdnsbvfnsvfjshdvfsvfbsnfvnsbfvnbsfvsnbvfsfsf |  Kishoretwwytqeffgcvbcxcbcvzbc bvcbvcbsvcbnsvbncvzbvcz     | aswanitestevfdfdtf678sfnsfnvvxnbc bxcvxvcbnxc bvcbxvcbnxvcnbxvcbnvcbnxvcr@gmail.com|
 
 
##TC_05
Scenario Outline: Sign up fields can be cleared and new details can be re-entered
Given: User is on sign-up screen of the application
When:  Enter First Name <First Name>, Last Name <Last Name>, Email <Email>, Password <Password> 
       and Confiem Password <Confirm Password>
And:   Clear First Name, Last Name, Email, Password and Confiem password fields
And:   Again try to enter First Name <First Name>, Last Name <Last Name>, Email <Email>, Password <Password> 
       and Confirm Password <Confirm Password>
Then:  Can enter characters again in each text boxes


      |First Name  |  Last Name   |  Email                |  Password |  Confirm Password |
      |Ted         |  Jack        | tedjack@gmail.com     |  Hello123 |  Hello123         | 
 
 
 
 ##TC_06
 Scenario:  Show/hide button in Password and Confirm password
 Given:     User is on sign-up screen of the application
 When:      Check show/hide button in password and confirm password text boxes
 Then:      Show/hide button is present
 
 
 
 ##TC_07
 Scenario Outline: Password and Confirm password fields are in encrypted format
 Given:  User is on sign-up screen of the application
 When:   Enter Password <Password> and Confirm password <Confirm Password>
 Then:   Password and Confirm password fields are in encrypted format
 
 Examples:
 
 |  Password |  Confirm Password |
 |  Hello321 |  Hello321         |

 
 
 ##TC_08
 Scenario Outline: Pop up message appears if user completes registration successfully
 Given: User is on sign-up screen of the application
 When:  Enter valid credentials First Name <First Name>, Last Name <Last Name>, Email <Email>, Password <Password> 
        and Confiem Password <Confirm Password>
 And:   Tap Sign up button
 Then:  Pop up message appears saying user to login 
 
 
      |First Name  |  Last Name   |  Email                |  Password |  Confirm Password |
      |Timm        |  Son         | timson@gmail.com      |  Hello123 |  Hello123         | 
      


##TC_09
Scenario Outline: User can login to the application successfully
Given: User is on Sign in screen
When:  Enter Email<Email> and Password <Password>  used to sign up
And:   Tap on Sign in button
Then:  User is logged in to the application successfully

Examples:
|  Email                |  Password | 
| timson@gmail.com      |  Hello123 |    
 
 
 
##TC_10
Scenario: User details entered while registeration is saved in the application
Given: User is logged in to the application
When: Go to accounts screen and tap on My details button
Then: User details in My details screen is same as that entered while registration



##TC_11
Scenario: Error messages appear if input fields are left blank
Given: User is on Sign-up screen of the application
When: Leave all the text boxes in sign up screen as blank
And:  Tap sign up button
Then: "Error messages" appear below each blank text box



##TC_12
Scenario Outline: Error messages appear if invalid characters or numbers are entered in First name and Last name fields
Given: User is on Sign-up screen of the application
When: Enter First Name <First Name> and Last Name <Last Name> 
And: Enter Email <Email>, Password<Password> and Confirm password <Confirm password>
And: Tap Sign up button
Then: "Invalid credentials" error message appears below First name and last name fields


Examples: 
  |First Name      |  Last Name        |  Email                  |  Password |  Confirm Password |
  |Timm@567        |  Son78***         | timson45@gmail.com      |  Hello123 |  Hello123         | 
  
  
  
##TC_13
Scenario Outline: Error messages appear if invalid email id entered
Given: User is on Sign-up screen of the application
When: Enter First Name <First Name>, Last Name <Last Name>, invalid email <Email>, Password<Password> and Confirm password <Confirm password>
And: Tap Sign up button
Then: "Please enter a valid email address" error message appears below Email field

Examples: 
|First Name      |  Last Name        |  Email                  |  Password |  Confirm Password |
|Tony            |  Richard          | tony45**@gmail.com      |  Hello986 |  Hello986         |
  
 
 
##TC_14
Scenario Outline: Error messages appear if password is less than 8 characters
Given: User is on Sign-up screen of the application
When: Enter First Name <First Name>, Last Name <Last Name>, invalid email <Email>, Password<Password> and Confirm password <Confirm password>
And: Tap Sign up button
Then: "The password needs to be atleast 8 characters long" error message appears below Password field

Examples: 
|First Name      |  Last Name        |  Email                  |  Password |  Confirm Password |
|Grace           |  Rony             | Grace78@gmail.com       |  He986    |  He986            |
 
 
 
 ##TC_15
Scenario Outline: Error message appears if password is without a digit and a letter
Given: User is on Sign-up screen of the application
When: Enter First Name <First Name>, Last Name <Last Name>, email <Email>, Password<Password> and Confirm password <Confirm password>
And: Tap Sign up button
Then: "The password needs to contain atleast one letter and digit" error message appears below Password field

Examples: 
|First Name      |  Last Name        |  Email                  |  Password  |  Confirm Password  |
|Harry           |  Don              |  Harrye78@gmail.com     |  *%&&&*    |   *%&&&*           |
 
 
 
 @tag1
 Feature: Verify the address form
 
 @Background
 Given: Storelab Android application is installed
 
 ##TC_16
 Scenario Outline: User can fill in all the details in Address form
 Given: User is logged in to the application
 When: Add to cart any product
 And: Go to cart screen and tap checkout button
 And: In checkout screen tap Add button next to Add shipping address
 And: Enter Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
      Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
 And: Select Country<Country> and Province <Province> from dropdown list
 And: Tap Save button
 Then: Address is saved
 
 
 Examples: 
|Address      |  Apartment  |  City         |  Country       |Province|  ZipCode  |  First Name  | Last Name  | Company  |  PhoneNumber  |
|34 Links Way |  Apart      | Croxley Green | United Kingdom |England |  WD33RQ   |  Aswani      | Kishore    | StoreLab |  07421821215|  
 
 
 
 ##TC_17
Scenario Outline: Address can contain combination of numeric, alphabetic and special characters
Given: User is on Address screen
When: Enter Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
      Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:  Select Country<Country> and Province <Province> from dropdown list
And:  Tap Save button
Then: Address is saved

Examples: 
|Address      |  Apartment  |  City          |  Country       |Province|  ZipCode  |  First Name  | Last Name  | Company  |  PhoneNumber  |
|34-Links Way |             | Croxley, Green | United Kingdom |England |  WD33RQ   |  Aswani      | Kishore    | StoreLab |  07421821215|  
 
 
 
##TC_18
Scenario Outline: Address fields can be cleared and new details can be re-entered
Given: User is on Address screen of the application
When:  Enter Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
       Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:   Select Country<Country> and Province <Province> from dropdown list
And:   Clear all the fields 
And:   Enter again Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
       Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
Then:  Can enter characters again in each text boxes


Examples: 
|Address      |  Apartment  |  City          |  Country       |Province|  ZipCode  |  First Name  | Last Name  | Company  |  PhoneNumber  |
|34-Links Way |  Apart      | Croxley, Green | United Kingdom |England |  WD33RQ   |  Aswani      | Kishore    | StoreLab |  07421821215|  
 


##TC_19
Scenario Outline: Address form can be saved after entering valid address details
Given: User is on Address screen of the application
When:  Enter valid Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
       Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:   Select Country<Country> and Province <Province> from dropdown list
And:   Tap Save button
Then:  Address is saved

 Examples: 
|Address      |  Apartment  |  City         |  Country       |Province|  ZipCode  |  First Name  | Last Name  | Company  |  PhoneNumber  |
|34 Links Way |             | Croxley Green | United Kingdom |England |  WD33RQ   |  Aswani      | Kishore    | StoreLab |  07421821215|  
 
 
 
##TC_20
Scenario: Error messages appear if address fields are left blank
Given: User is on address screen of the application
When: Leave all the text boxes in address screen as blank
And:  Tap save button
Then: "Error messages" appear below each blank text box 



##TC_21
Scenario Outline: Error message appears if invalid characters are entered in address form
Given: User is on address screen of the application
When: Enter invalid Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
       Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:   Select Country<Country> and Province <Province> from dropdown list
And:  Tap Save button
Then: "Error messages" appear below each text box

Examples: 
|Address          |  Apartment  |  City             |  Country       |Province|  ZipCode  |  First Name       | Last Name       | Company        |  PhoneNumber  |
|34••§¶ Links Way |  Apart^^^   | Croxley(&$@)Green | United Kingdom |England |  *7567$   |  Aswani&56&&      | Kishore£$%^&    | StoreLab*&%$%% |  0FGHJJ5      |  
 
 
 
 
##TC_22
Scenario Outline: Error message appears if invalid Zipcode is entered
Given: User is on address screen of the application
When:  Enter Address<Address>, Apartment<apartment>, City<City>, invalid ZipCode<ZipCode>, First Name<First Name>, 
       Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:   Select Country<Country> and Province <Province> from dropdown list
And:   Tap save button
Then:  "Invalid Zipcode" error message appears 


 Examples: 
|Address      |  Apartment  |  City         |  Country       | ZipCode  |  First Name  | Last Name  | Company  |  PhoneNumber  |
|34 Links Way |    Suite    | Croxley Green | Algeria        |  683585   |  Aswani      | Kishore    | StoreLab |  07421821215|  
 
 
 
##TC_23
Scenario Outline: Address entered is shown correctly in Saved address screen 
Given: User is on Checkout screen
When:  Tap on Add shipping address button
And:   Enter Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
       Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:   Select Country<Country> and Province <Province> from dropdown list
And:   Tap Save button
And:   Go to checkout screen and tap Add shipping address button
And:   Tap 'Select from Saved Addresses' button from Address screen
Then:  Address shown is correct in Saved address screen

Examples: 
|Address      |  Apartment  |  City         |  Country       |Province|  ZipCode  |  First Name  | Last Name  | Company  |  PhoneNumber|
|34 Links Way |   Apart33   | Croxley Green | United Kingdom |England |  WD33RQ   |  Aswani      | Kishore    | StoreLab |  07421821215|  
 
 
 
##TC_24
Scenario Outline: User can edit the address and saved correctly
Given: User is on Saved addresses screen
When: Tap edit button next to any address 
And:  Edit the address fields in Address screen by entering  Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
      Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
And:  Select Country<Country> and Province <Province> from dropdown list
And:  Tap Save button
Then: Address is saved
 
Examples: 
|Address      |  Apartment  |  City         |  Country       |  ZipCode  |  First Name  | Last Name  | Company    |  PhoneNumber  |
|64 BartonWay |   Suite     | Croxley       | France         |  WD33RQ   |  Aswani      | Kishore    | StoreLab2  |  074218788215|  
  
 
 
 ##TC_25
 Scenario Outline: User cannot add the shipping address of non-available countries
 Given: User is on checkout screen
 When:  Tap Add shipping address button
 And:   Enter Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
        Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
 And:   Select non-available Country<Country> and Province <Province> from dropdown list
 And:   Tap Save button
 Then:  Error message "Not available" is shown
 
 Examples: 
|Address      |  Apartment  |  City         |  Country       |Province    |  ZipCode  |  First Name  | Last Name  | Company    |  PhoneNumber  |
|64 BartonWay |   Suite     | Croxley       |  Egypt         | Suez       | 5464788   |  Aswani      | Kishore    | StoreLab2  |  074218788215 |  
  
  
  
 
 ##TC_26
 Scenario Outline: Shipping price is shown as per the country choosen
 Given: User is on checkout screen
 When:  Tap Add shipping address button
 And:   Enter Address<Address>, Apartment<apartment>, City<City>, ZipCode<ZipCode>, First Name<First Name>, 
        Last Name<Last Name>, Company<Company> and PhoneNumber<PhoneNumber>
 And:   Select non-available Country<Country> and Province <Province> from dropdown list
 And:   Tap Save button
 Then:  Sipping rate in checkout screen is as per the country choosen
 
  Examples: 
|Address       |  Apartment  |  City         |  Country           |Province       |  ZipCode  |  First Name  | Last Name  | Company    |  PhoneNumber  |
|28 Manor Road |   Suite     | Watford       |  Australia         |New South Wales|   2839    |  Rony        | Canner     |  StoreLab2  |  074218788215 |  
|29 Manor Road |   Suite     | Ontario       |  Canada            |Manitoba       |   R6W     |  Rony        | Canner     |  StoreLab3  |  074218788215 |  
    
 
 
 
 
 
      
