**Settings***
Documentation       Suite de Testes de Login
Library             BuiltIn
Library             SeleniumLibrary
Library             RequestsLibrary
#Library             Collection
#Library             Collections
#Library             JSONLibrary
Resource            ../resources/PageObjects.robot
#Run get info
#Test Setup     Start Browser Session
***Variables***
# QA
# DEV
${To_Execute_at_Env}        QA
${base_urlQA}                 https://playground-dev-we.skillsworkflow.com/login
#Test Setup     Start Browser Session
***Test Cases***
01.01 - TestCase: Login with invalid credentials

    BuiltIn.Run Keyword If                            "${To_Execute_at_Env}" == "QA"  SeleniumLibrary.Open Browser      ${base_urlQA}      
    ...  ELSE IF     "${To_Execute_at_Env}" == "DEV"   SeleniumLibrary.Open Browser     ${base_urlDEV}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_InputField_Username}
    BuiltIn.Log                                        ${Web_User} 
    BuiltIn.Log                                        ${LoginPage_InputField_Username}
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Username}    InvalidUser 
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Password}    InvalidPass
    SeleniumLibrary.Click Element                      ${LoginPage_Button_Login}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_LoginErrorNotification}
    SeleniumLibrary.Element Text Should Be             ${LoginPage_LoginErrorNotification}      Incorrect User Name or Password.
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser

01.02 - TestCase: Login with valid credentials should navigate to homepage

    BuiltIn.Run Keyword If                            "${To_Execute_at_Env}" == "QA"  SeleniumLibrary.Open Browser      ${base_urlQA}      
    ...  ELSE IF     "${To_Execute_at_Env}" == "DEV"   SeleniumLibrary.Open Browser     ${base_urlDEV}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_InputField_Username}
    BuiltIn.Log                                        ${Web_User} 
    BuiltIn.Log                                        ${LoginPage_InputField_Username}
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Username}    ${Web_User} 
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Password}    ${Web_Pass}
    SeleniumLibrary.Click Element                      ${LoginPage_Button_Login}
    SeleniumLibrary.Wait Until Element Is Visible      ${HomePage_UserLogged}
    SeleniumLibrary.Element Text Should Be             ${HomePage_UserLogged}      QA Tester
    Sleep                                              3
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser

01.03 - TestCase: Login and and test navigation access to Clients list

    BuiltIn.Run Keyword If                            "${To_Execute_at_Env}" == "QA"  SeleniumLibrary.Open Browser      ${base_urlQA}      
    ...  ELSE IF     "${To_Execute_at_Env}" == "DEV"   SeleniumLibrary.Open Browser     ${base_urlDEV}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_InputField_Username}
    BuiltIn.Log                                        ${Web_User} 
    BuiltIn.Log                                        ${LoginPage_InputField_Username}
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Username}    ${Web_User} 
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Password}    ${Web_Pass}
    SeleniumLibrary.Click Element                      ${LoginPage_Button_Login}
    SeleniumLibrary.Wait Until Element Is Visible      ${HomePage_UserLogged}
    SeleniumLibrary.Element Text Should Be             ${HomePage_UserLogged}      QA Tester
    SeleniumLibrary.Click Element                      ${Sidebar_Clients}
    SeleniumLibrary.Wait Until Element Is Visible      ${ClientsPage_Clientslabel}
    SeleniumLibrary.Element Text Should Be             ${ClientsPage_Clientslabel}      Clients
    Sleep                              4
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser
01.04 - TestCase: Login, navigate to Client List and access first available Client

    BuiltIn.Run Keyword If                            "${To_Execute_at_Env}" == "QA"  SeleniumLibrary.Open Browser      ${base_urlQA}      
    ...  ELSE IF     "${To_Execute_at_Env}" == "DEV"   SeleniumLibrary.Open Browser     ${base_urlDEV}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_InputField_Username}
    BuiltIn.Log                                        ${Web_User} 
    BuiltIn.Log                                        ${LoginPage_InputField_Username}
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Username}    ${Web_User} 
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Password}    ${Web_Pass}
    SeleniumLibrary.Click Element                      ${LoginPage_Button_Login}
    SeleniumLibrary.Wait Until Element Is Visible      ${HomePage_UserLogged}
    SeleniumLibrary.Element Text Should Be             ${HomePage_UserLogged}      QA Tester
    SeleniumLibrary.Click Element                      ${Sidebar_Clients}
    SeleniumLibrary.Wait Until Element Is Visible      ${ClientsPage_Clientslabel}
    SeleniumLibrary.Element Text Should Be             ${ClientsPage_Clientslabel}      Clients
    Sleep                                              1
    SeleniumLibrary.Wait Until Element Is Visible      ${ClientPage_ClientNestle}
    SeleniumLibrary.Element Text Should Be             ${ClientPage_ClientNestle}      Nestlé / NEST
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser


01.05 - TestCase: Login and Logout operation

    BuiltIn.Run Keyword If                            "${To_Execute_at_Env}" == "QA"  SeleniumLibrary.Open Browser      ${base_urlQA}      
    ...  ELSE IF     "${To_Execute_at_Env}" == "DEV"   SeleniumLibrary.Open Browser     ${base_urlDEV}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_InputField_Username}
    BuiltIn.Log                                        ${Web_User} 
    BuiltIn.Log                                        ${LoginPage_InputField_Username}
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Username}    ${Web_User} 
    SeleniumLibrary.Input Text                         ${LoginPage_InputField_Password}    ${Web_Pass}
    SeleniumLibrary.Click Element                      ${LoginPage_Button_Login}
    SeleniumLibrary.Wait Until Element Is Visible      ${HomePage_UserLogged}
    SeleniumLibrary.Element Text Should Be             ${HomePage_UserLogged}      QA Tester
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Click Element                      ${HomePage_UserLogged}
    SeleniumLibrary.Wait Until Element Is Visible      ${HomePage_UserLogged_LogOutbtn}
    SeleniumLibrary.Click Element                      ${HomePage_UserLogged_LogOutbtn}
    SeleniumLibrary.Wait Until Element Is Visible      ${LoginPage_LoginToYourAccountlabel}
    SeleniumLibrary.Element Text Should Be             ${LoginPage_LoginToYourAccountlabel}      Login to your account
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser