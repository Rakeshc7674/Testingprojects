*** settings ***
Library  SeleniumLibrary

*** variables ***


*** test cases ***
check_view_wishlist
    login
    ${title}    get title
    log to console   ${title}
    Run Keyword if   '${title}'!='true'     regesterandlogin
    click element   xpath://a[@href='/wishlist']
    Select Checkbox     11224
    select checkbox     11225
    click button    name:addtocartbutton

    Capture Page Screenshot     add_to_cart.png