*** Settings ***
Library    Selenium2Library
Resource    action.robot

*** Test Cases ***
AccessAllPage
   AccessTheLangingPage
   AccessTheListPage
   AccessTheAddPage
   AccessTheEditPage
   AccessTheDeletePage
AddVehicleData
    AccessTheAddPage
    AddVehicleData
    SubmitAddVehicle
CheckAddData
    AccessTheListPage
    FindAddData
EditVehicleData
    AccessTheEditPage
    FindAddData
    ClickEditAtVehicle
    EditVehicleData
    SubmitEditVehicle
DeleteVehicleData
    AccessTheDeletePage
    FindEditData
    ClickDeleteAtVehicle
    DeleteVehicleData