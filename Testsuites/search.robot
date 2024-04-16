*** settings ***
Library  SeleniumLibrary
Resource    ../Resources/login.robot
Resource    ../Resources/regesterandlogin.robot
Resource    ../Resources/search1.robot


*** variables ***
${url}   https://demo.nopcommerce.com/
${baseurl}   chrome
*** test cases ***
add_to_wishlist
    login
    ${title}    get title
#    log to console   ${title}
#    Run Keyword if   '${title}'!='nopCommerce demo store'     regesterandlogin
    ${register_status}=    Run Keyword And Return Status   page should contain     Login was unsuccessful. Please correct the errors and try again.
    IF     '${register_status}'=='True'
            regesterandlogin
    ELSE
              Log  user login successfully
    END
    search_valid_input
    empty_search_input
    spaces_input
    invalid_input
    spellingmistake_input


