*** settings ***
Library   Seleniumlibrary
*** variables ***
${url}   https://demo.nopcommerce.com/
${baseurl}      chrome

*** keywords ***
regesterandlogin
    click element    xpath://a[@href='/register?returnUrl=%2F']
    input text      id:FirstName     rakesh
    input text    id:LastName    c
    input text    name:Email     rakesh1234@gmail.com
    input text   name:Password   ramesh123@
    input text   name:ConfirmPassword    ramesh123@
    click element    id:register-button
    CLick Element    class:ico-login
    input text  ID:Email     rakesh1234@gmail.com
    input text  ID:Password     ramesh123@
    click button    xpath://button[@class='button-1 login-button']
