*** Setting ***
Library    SeleniumLibrary


***Variables***

${SIGN_IN_BNT}      xpath=//button[@id='sign-in-button-id']/span[.='Sign in']
${HOME_BNT}     xpath=//div[@id='__next']//ul[@role='menu']//a[contains(text(),'Home')]
${INKR_EXTRA_BNT}   xpath=//div[@id='__next']//ul[@role='menu']//a[contains(text(),'INKR Extra')]

${BROWSE_BNT}   xpath=//div[@id='__next']//ul[@role='menu']//span[contains(text(),'Browse')]
${BROWSE_MANGA}     xpath=//*[@id="rc-menu-uuid-19676-1-browse-popup"]//a[contains(text(),'Manga')]
${BROWSE_MANHUA}    xpath=//*[@id="rc-menu-uuid-19676-1-browse-popup"]//a[contains(text(),'Manhua')]
${BROWSE_WEBTOON}   xpath=//*[@id="rc-menu-uuid-19676-1-browse-popup"]//a[contains(text(),'Webtoon')]
${BROWSE_COMICS}   xpath=//*[@id="rc-menu-uuid-19676-1-browse-popup"]//a[contains(text(),'Comics')]
${BROWSE_FREE}   xpath=//*[@id="rc-menu-uuid-19676-1-browse-popup"]//a[contains(text(),'Free')]

${SIGN_IN_INPUT_EMAIL}      xpath=/html/body[@class='ant-scrolling-effect']//div[@class='ant-modal-root']/div[@role='dialog']/div[@role='document']//div[@class='ant-modal-body']//input
${SIGN_IN_EMAIL_CONTINUDE_BNT}    xpath=//div[@class='ant-modal-root']/div[@role='dialog']//button[@type='submit']/span[.='Continue']
${SIGN_IN_INPUT_PASSWORD}   xpath=//div[@class='ant-modal-root']//div[@role='dialog']//input[@id="password"]
${SIGN_IN_INPUT_CONFIRM_PASSWORD}     xpath=//div[@class="RT8KG"]//input[@id='confirmPassword']
${SIGN_IN_CONTIUDE_BNT}     xpath=//div[@role='dialog']//div[@class='ant-modal-body']//form/button[@type='submit']

${SIGN_UP_CHECK_BOX}   xpath=//div[@class='ant-modal-root']//div[@class='ant-modal-body']//input
${SIGN_UP_BNT}      xpath=//div[@role='dialog']//div[@class='ant-modal-body']//button[@type='button']/span[.='Sign Up']


${PROFILE_BNT}      xpath=//div[@id='user-avatar-button-id']//div[@role='button']
***Keywords***
Click Sign in BNT
|   | Click Element | ${SIGN_IN_BNT} |


Input Email Address
|   | [arguments] | ${email}               |          |
|   | Input Text  | ${SIGN_IN_INPUT_EMAIL} | ${email} |

Click Continue After Input Email BNT
|   | Click Element | ${SIGN_IN_EMAIL_CONTINUDE_BNT} |

Input User Password
|   | [arguments]    | ${password}               |             |
|   | Mouse Over     | ${SIGN_IN_INPUT_PASSWORD} |             |
|   | Click Element  | ${SIGN_IN_INPUT_PASSWORD} |             |
|   | Input Password | ${SIGN_IN_INPUT_PASSWORD} | ${password} |

Input Confirm Password
|   | [arguments]    | ${password}                       |             |
|   | Input Password | ${SIGN_IN_INPUT_CONFIRM_PASSWORD} | ${password} |

Click Sigin Continue
|   | Click Element | ${SIGN_IN_CONTIUDE_BNT} |

Click Sign Up Check Box
|   | Click Element | ${SIGN_UP_CHECK_BOX} |

Click Sign Up BNT
|   | Click Element | ${SIGN_UP_BNT} |

Clikc Profile BNT
|   | Click Element | ${PROFILE_BNT} |
|   |               |                |
