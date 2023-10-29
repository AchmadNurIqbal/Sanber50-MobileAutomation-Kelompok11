*** Settings ***
Resource                    ../base.robot
Variables                    homepage-locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible           ${appLogo}
    Wait Until Element Is Visible           ${btnLogin}
    Wait Until Element Is Visible           ${btnSearch}
    Wait Until Element Is Visible           ${btnCheckIn}
