***Settings***
Documentation       API Tests
Library         data.py
Library         body.py
Library         FakerLibrary        
Library         RequestsLibrary
Library         SeleniumLibrary
Library         BuiltIn
Library         Collections
Library         OperatingSystem
Library         DateTime 
Library         DatabaseLibrary

#Suite Setup         
    
#Suite Teardown      Disconnect From Database 

***Variables***
${base_url}                 https://apiv2-playground-dev-we.skillsworkflow.com
${authToken}            



***Test Cases***

1.01 - TestCase: Client - GET
    ${headers}          Create Dictionary
    ...                 content-type=application/json
    ...                 authorization=${authToken}
    ${response}         RequestsLibrary.Get     url=${base_url}/GetExample/Endpoint
    ...                 headers=${headers}
    RequestsLibrary.Status Should Be    200
    #Mostrar se o retorno da lista é maior que 0, ou seja, se retornou algo
    ${size}     Get Length      ${response.json()}
    Should Be True      ${size} > 0 
    Log to console      ${response.status_code}
    Log to console      ${response.content}
    Log To Console      ${response}
    Log To Console      ${response.json()}


 
1.02 - TestCase: New Client - POST - Example 1 (Using the JSon in Python file)
    [tags]              3
    ${payload}          AddClient
    ${headers}          Create Dictionary
    ...                 content-type=application/json
    ...                 authorization=${authToken}

    ${response}         RequestsLibrary.Post     ${base_url}/PostExample/Endpoint
    ...                 json=${payload}
    ...                 headers=${headers}

    RequestsLibrary.Status Should Be    200
    Log To Console      ${response}
    Log To Console      ${response.json()}

     
1.03 - TestCase: New Employee - POST - Example 2 (Using the Json body inside the script)
    ${fname}=           FakerLibrary.Firstname
    
    ${payload}          BuiltIn.Catenate  {'CompanyID': '2', 'employeeName': '${fname}'}
    ${headers}          Create Dictionary
    ...                 content-type=application/json
    ...                 authorization=${authToken}
    BuiltIn.Log To Console      ${payload} 
    ${response}         RequestsLibrary.Post     ${base_url}/PostExample/AddEmployeeInClient
    ...                 data=${payload}
    ...                 json=${payload}
    ...                 headers=${headers}

    RequestsLibrary.Status Should Be    200
    Log To Console      ${response}
