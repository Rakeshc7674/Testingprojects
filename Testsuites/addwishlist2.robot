*** settings ***
Library  SeleniumLibrary

*** variables ***


*** test cases ***
# Verify that a user can add a product to their wishlist.
check_product_added_to_wishlist
    login
    ${title}    get title
    log to console   ${title}
    Run Keyword if   '${title}'!='true'     regesterandlogin
    click element   xpath://a[@href='/apparel']
    click element   xpath://img[@src='https://demo.nopcommerce.com/images/thumbs/0000010_shoes_450.jpeg']
    click element   xpath://a[@href='/adidas-consortium-campus-80s-running-shoes']
    Click Button    ID:add-to-wishlist-button-25
    Capture Page Screenshot     provide_size_to_product.png
