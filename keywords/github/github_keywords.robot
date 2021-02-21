*** Keywords ***
#### action ####
Search '${repo_name}' repository
    Wait until element is visible  ${search_input}
    Click element   ${search_input}
    Input text    ${search_input}    ${repo_name}
    Press keys    ${search_input}    ENTER
    Wait until element is visible    ${first_element_in_search_results}

User go to '${repo_name}' repository page
    Login to github
    Search '${repo_name}' repository
    Click element    ${first_element_in_search_results}
    ${current_url}    Get location
    Should be equal as strings    ${current_url}    ${github.host}/${bitcoin.org}/${bitcoin.repo}

User stars and then unstars the repository
    Wait until element is visible    ${star_btn}
    Click element   ${star_btn}
    Element should not be visible    ${star_btn}
    Wait until element is visible    ${unstar_btn}
    Click element   ${unstar_btn}

Serch '${search_file_name}' file
    Click element    ${go_to_file_btn}
    Wait until element is visible    ${search_file_input}
    Input text    ${search_file_input}    ${search_file_name}

Verify repository '${repo}' from '${org}' is shown on page
    ${first_repo}    Get text    ${first_element_in_search_results}
    should be equal as strings    ${first_repo}    ${org}/${repo}

#### verify ####
Verify star button should show up
    Element should be visible    ${star_btn}

Verify '${file_name}' file should be the first result
    Wait until element is visible  ${first_element_in_file_tree_browser}
    ${frist_file_name}   Get text    ${first_element_in_file_tree_browser}
    ${frist_file_name_lowercased}   Convert to lowercase    ${frist_file_name}
    Should contain  ${frist_file_name_lowercased}    ${file_name}
