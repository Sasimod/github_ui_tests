*** Keywords ***
Open browser
    Create webdriver    ${browser}
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