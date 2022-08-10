*** Setting ***
Resource    homePageAction.robot



Suite setup     Run Keywords
|   | ... | Open Browser    https://inkr.com/   chrome |
|   | ... | Maximize Browser Window                    |

Suite teardown      Close All Browsers


*** Test Cases ***
Testcase 1 Create User Successfully
|   | Page Should Contain Element | ${SIGN_IN_BNT}    |        |
|   | Create New Users            | abc@gss.com       | 123456 |
|   | sleep                       | 2s                |        |
|   | Verify Create Successfully  |                   |        |