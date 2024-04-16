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
    Capture Page Screenshot     View_wishlist.png