*** settings ***
Library   Seleniumlibrary
*** variables ***
${url}   https://demo.nopcommerce.com/
${baseurl}      chrome
*** keywords ***
login
    Open Browser    ${url}   ${baseurl}
    Maximize Browser Window
    set selenium speed   2
    CLick Element    class:ico-login
    input text  ID:Email     rakesh1234@gmail.com
    input text  ID:Password     ramesh123@
    click button    xpath://button[@class='button-1 login-button']