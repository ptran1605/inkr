*** Setting ***
Resource    homePage.robot


*** Keywords ***
Create New Users
|   | [arguments]                                   | ${email}    | ${password} |
|   | homePage.Click Sign in BNT                    |             |             |
|   | sleep                                         | 1s          |             |
|   | homePage.Input Email Address                  | ${email}    |             |
|   | homePage.Click Continue After Input Email BNT |             |             |
|   | sleep                                         | 2s          |             |
|   | homePage.Input User Password                  | ${password} |             |
|   | homePage.Input Confirm Password               | ${password} |             |
|   | homePage.Click Sigin Continue                 |             |             |
|   | homePage.Click Sign Up Check Box              |             |             |
|   | homePage.Click Sign Up BNT                    |             |             |


Verify Create Successfully
|   | Page Should Not Contain Element | ${SIGN_IN_BNT} |



*** Test Cases ***
Test Case
|   | Open Browser                | https://inkr.com/ | chrome |
|   | Maximize Browser Window     |                   |        |
|   | Page Should Contain Element | ${SIGN_IN_BNT}    |        |
|   | Create New Users            | abc@gss.com       | 123456 |
|   | sleep                       | 2s                |        |
|   | Verify Create Successfully  |                   |        |

