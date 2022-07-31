***Settings***
Documentation       Page Objects 


*** Variables ***
#################################
### Info: Users And Passwords ###
#################################
${Web_User}     QA Tester
${Web_Pass}     12345


#####################################
### Info: Login page objects List ###
#####################################
${LoginPage_InputField_Username}        id=email
${LoginPage_InputField_Password}        id=password
${LoginPage_Button_Login}               id=buttonLoginSkills
${LoginPage_Button_LoginSSO}            id=buttonLoginSsoSkills

${LoginPage_LoginErrorNotification}     xpath=//div[4]/div/div[2]

${LoginPage_LoginToYourAccountlabel}    xpath=//h3

#####################################
### Info: Home page objects List ###
#####################################

${HomePage_UserLogged}                  xpath=//li[@id='iconProfile']/a/span

${HomePage_UserLogged_LogOutbtn}        xpath=//li[4]/ul/li[2]/a 

###SidebarMenu###
${Sidebar_HomePage}                     xpath=//div/div/i
${Sidebar_Clients}                      css=.menu-icon-no-margin-left
${Sidebar_Reports}                      xpath=//dx-menu[@id='dxMenuComponent']/div/ul/li[3]/div/div[3]
${Sidebar_ReportsALL}                   xpath=//li[2]/div/div/span
${Sidebar_Files}                        xpath=//dx-menu[@id='dxMenuComponent']/div/ul/li[4]/div/div/i



########################################
### Info: Clients page objects List ###
#######################################

${ClientsPage_Clientslabel}                 xpath=//header/div/div/div/div[2]/div/div

${ClientPage_ClientNestle}                  xpath=//td/div/div/div/span