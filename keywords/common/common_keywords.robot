*** Keywords ***
Run with open browser
    Create webdriver    ${browser.safari}
    Go to    ${github.host}

Run without browser
    ${mobile_emulation}    Create dictionary    deviceName=iPhone 7
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Run keyword if    "${env}"!="local"    Call method    ${chrome_options}   add_argument    headless
    Create webdriver    ${browser.chrome}    chrome_options=${chrome_options}
    Go to    ${github.host}

Go to ${page} page
    Go to    ${github.host}${${page}_url}

Login to github
    Go to login page
    Input text    ${username_field}    ${username}
    Input text    ${password_field}    ${password}
    click element    ${signin_btn}

Close recurring web
    Close browser
    Run  pkill chromedriver
#    Run  pkill Safari