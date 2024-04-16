*** settings ***
Library  SeleniumLibrary

*** variables ***


*** test cases ***
# Verify that a user can remove product from wishlist.
check_product_added_to_wishlist
    login
    ${title}    get title
    log to console   ${title}
    Run Keyword if   '${title}'!='true'     regesterandlogin
    click element   class:ico-wishlist
    Title Should Be     nopCommerce demo store. Wishlist
    click element   xpath:(//button[contains(@onclick,' (!window.__cfRLUnblockHandlers)')])[3]
    Capture Page Screenshot     remove_product.png

