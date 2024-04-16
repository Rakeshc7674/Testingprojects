*** settings ***
Library   Seleniumlibrary
*** keywords ***
addwishlist
     click element   xpath://a[@href='/computers']
     click element   xpath://img[@src='https://demo.nopcommerce.com/images/thumbs/0000002_desktops_450.jpg']
     click element   xpath://a[@href='/build-your-own-computer']
     Select From List By value   product_attribute_2     4
     Page Should Contain Radio Button    xpath://input[@name='product_attribute_3']
     Select Radio Button      product_attribute_3     6
     Click Button    ID:add-to-wishlist-button-1

     click element   xpath://a[@href='/electronics']
     click element   xpath://img[@src='https://demo.nopcommerce.com/images/thumbs/0000007_cell-phones_450.jpeg']
     click element   xpath://a[@href='/htc-one-m8-android-l-50-lollipop']
     Click Button    ID:add-to-wishlist-button-18

     click element   xpath://a[@href='/apparel']
     click element   xpath://img[@src='https://demo.nopcommerce.com/images/thumbs/0000010_shoes_450.jpeg']
     click element   xpath://a[@href='/adidas-consortium-campus-80s-running-shoes']
     Select From List By value   product_attribute_9     22
     Click Button    ID:add-to-wishlist-button-25

     Capture Page Screenshot     added_product_to_wishlist.png

#