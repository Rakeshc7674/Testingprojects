*** settings ***
Library  SeleniumLibrary
Resource    ../Resources/login.robot
Resource    ../Resources/regesterandlogin.robot
Resource    ../Resources/add_wishlist.robot


*** variables ***
${url}   https://demo.nopcommerce.com/
${baseurl}   chrome
${title}    nopCommerce demo store
*** test cases ***
add_to_wishlist
    login
    ${title}    get title
    log to console   ${title}
    Run Keyword if   '${title}'!='true'     regesterandlogin
    addwishlist


