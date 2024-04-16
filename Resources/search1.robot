*** settings ***
Library  SeleniumLibrary
*** keywords ***
search_valid_input
    input text   id:small-searchterms    shoes
    click element    xpath://button[@class='button-1 search-box-button']
    sleep   3
    Execute Javascript   window.scrollTo(0,500)
    Capture Page Screenshot     search.png
empty_search_input
    input text   id:small-searchterms    \
    click element    xpath://button[@class='button-1 search-box-button']
    Handle Alert     ACCEPT
#    Take Screenshot    epmtysearch.jpg


#    Execute Javascript   window.scrollTo(0,500)

spaces_input
    input text   id:small-searchterms    ${space}${space}${space}
    click element    xpath://button[@class='button-1 search-box-button']
    sleep   3
    Execute Javascript   window.scrollTo(0,300)
    Capture Page Screenshot     spacesearch.png
invalid_input
    input text   id:small-searchterms   !@#$%
    click element    xpath://button[@class='button-1 search-box-button']
    sleep   3
    Execute Javascript   window.scrollTo(0,300)
    Capture Page Screenshot     invalidsearch.png
spellingmistake_input
    input text   id:small-searchterms   shooes
    click element    xpath://button[@class='button-1 search-box-button']
    sleep   3
    Execute Javascript   window.scrollTo(0,300)
    Capture Page Screenshot     epmtysearch.png