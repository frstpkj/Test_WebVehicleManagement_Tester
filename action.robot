*** Settings ***
Resource    common.robot

*** Keywords ***
AccessTheLangingPage
    Open Browser     ${url_Home}     ${browser}
    Wait Until Page Contains    ${expected_result_Home}
AccessTheListPage
    Open Browser     ${url_View}     ${browser}
    Wait Until Page Contains    ${expected_result_View}
AccessTheAddPage
    Open Browser     ${url_Add}     ${browser}
    Wait Until Page Contains    ${expected_result_Add}
AccessTheEditPage
    Open Browser     ${url_Edit}     ${browser}
    Wait Until Page Contains    ${expected_result_Edit}
AccessTheDeletePage
    Open Browser     ${url_Delete}     ${browser}
    Wait Until Page Contains    ${expected_result_Delete}

AddVehicleData
    Input Text    id=licensePlate    ${Add_vehicle_License}
    Input Text    id=vehicleBrand    ${Add_vehicle_Brand}
    Input Text    id=vehicleModel    ${Add_vehicle_Model}
    Input Text    id=note    ${Add_vehicle_Note}
    Input Text    id=etc    ${Add_vehicle_Etc}
    
SubmitAddVehicle
    Click Element    ${click_element_Add}
    Alert Should Be Present

FindAddData
    Wait Until Page Contains    ${Add_vehicle_License}
    Wait Until Page Contains    ${Add_vehicle_Brand}
    Wait Until Page Contains    ${Add_vehicle_Model}
    Wait Until Page Contains    ${Add_vehicle_Note}
    Wait Until Page Contains    ${Add_vehicle_Etc}

ClickEditAtVehicle
    Click Link    ${click_link_Edit}

EditVehicleData
    Wait Until Page Contains    ${expected_result_Edit2}
    Input Text    id=licensePlate    ${Add_EDITED_Text}
    Input Text    id=vehicleBrand    ${Add_EDITED_Text}
    Input Text    id=vehicleModel    ${Add_EDITED_Text}
    Input Text    id=note    ${Add_EDITED_Text}
    Input Text    id=etc    ${Add_EDITED_Text}

SubmitEditVehicle
    Click Element    ${click_element_Edit}
    Alert Should Be Present

FindEditData
    Wait Until Page Contains    ${Add_vehicle_License_Edit}
    Wait Until Page Contains    ${Add_vehicle_Brand_Edit}
    Wait Until Page Contains    ${Add_vehicle_Model_Edit}
    Wait Until Page Contains    ${Add_vehicle_Note_Edit}
    Wait Until Page Contains    ${Add_vehicle_Etc_Edit}

ClickDeleteAtVehicle
    Click Link    ${click_link_Delete}

DeleteVehicleData
    Wait Until Page Contains    ${expected_result_Delete2}
    Click Element    ${click_element_Delete}
    Alert Should Be Present
    