*** Settings ***
Library    OperatingSystem
Library    String
Library    Collections
Library    SeleniumLibrary
Library    RequestsLibrary
Variables   configs/${ENV}/env_config.yaml
Variables   testdata/common/repository.yaml
Variables   element/github_element.yaml
Resource    ../keywords/common/common_keywords.robot