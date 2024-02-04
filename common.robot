*** Variables ***
${browser}    chrome
${url_Home}    http://localhost:3000
${url_View}    http://localhost:3000/view
${url_Add}    http://localhost:3000/add
${url_Edit}    http://localhost:3000/edit
${url_Delete}    http://localhost:3000/delete

${click_element_Add}     //*[contains(text(),'Add Vehicle')]
${click_link_Edit}     xpath=//a[@href="/edit/AB-1234"]
${click_element_Edit}    //*[contains(text(),'Edit Vehicle')]
${click_link_Delete}    xpath=//a[@href="/delete/AB-1234_EDITED"]
${click_element_Delete}    //*[contains(text(),'Delete this Vehicle?')]

${expected_result_Home}    Welcome to vehicle management system
${expected_result_View}    List all of vehicle
${expected_result_Add}    Add vehicle
${expected_result_Edit}    Please select the vehicle
${expected_result_Edit2}    Edit vehicle
${expected_result_Delete}    Please select the vehicle
${expected_result_Delete2}    Please check the information

${Add_vehicle_License}    AB-1234
${Add_vehicle_Brand}    Haupcar
${Add_vehicle_Model}    ModelA
${Add_vehicle_Note}    Testing Robot
${Add_vehicle_Etc}    Using Selenium2Library

${Add_EDITED_Text}    _EDITED
${Add_vehicle_License_Edit}    AB-1234_EDITED
${Add_vehicle_Brand_Edit}    Haupcar_EDITED
${Add_vehicle_Model_Edit}    ModelA_EDITED
${Add_vehicle_Note_Edit}    Testing Robot_EDITED
${Add_vehicle_Etc_Edit}    Using Selenium2Library_EDITED