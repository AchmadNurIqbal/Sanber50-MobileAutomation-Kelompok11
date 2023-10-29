*** Settings ***
Resource        ../pageObject/signIn/signIn.robot
Resource        ../pageObject/base.robot

*** Test Cases ***
Verify Failed Login (Wrong Username)
    Open Flight Application
    homePage.Verify Homepage Appears
    signIn.Click SignIn
    signIn.Verify Loginpage Appears
    signIn.Wrong Input Username
    signIn.Input Password
    signIn.Click Login

Verify Failed Login (Wrong Password)
    Open Flight Application
    homePage.Verify Homepage Appears
    signIn.Click SignIn
    signIn.Verify Loginpage Appears
    signIn.Input Username
    signIn.Wrong Input Password
    signIn.Click Login

Successfully login
    Open Flight Application
    homePage.Verify Homepage Appears
    signIn.Click SignIn
    signIn.Verify Loginpage Appears
    signIn.Input Username
    signIn.Input Password
    signIn.Click Login
