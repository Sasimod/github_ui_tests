*** Settings ***
Resource    ../resources/imports.robot
Resource    ../keywords/github/github_keywords.robot
Test Setup    Open browser
Test Teardown    Close browser

*** Test Cases ***
TC_GH_1 User is able to search for a repository
    Given Login to github
    When Search '${bitcoin.repo}' repository
    Then Verify repository '${bitcoin.repo}' from '${bitcoin.org}' is shown on page

TC_GH_2 User is able to star or unstar a repository
    Given User go to '${bitcoin.repo}' repository page
    When User stars and then unstars the repository
    Then Verify star button should show up

TC_GH_3 User is able to search for a file in a repository
    Given User go to '${bitcoin.repo}' repository page
    When Serch 'readme' file
    Then Verify 'readme' file should be the first result