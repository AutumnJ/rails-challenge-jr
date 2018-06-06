# Rails Challenge: [TMWSD](https://www.thismessagewillselfdestruct.com/) Clone 

## Usage

This app is available online at: [https://still-shore-38939.herokuapp.com/](https://still-shore-38939.herokuapp.com/)

* From the homepage, create a message, input an email, and input an *optional* password. 
* Once the message is saved, a dashboard will be displayed, providing user's the option to copy their message's URL to their clipboard.
* Upon entering the copied URL in the browser, user's will be shown the message (if no password was input originally) or will be prompted to input the password before the message is shown. 
* Once the message is displayed, it is deleted and cannot be viewed again. 

### Future Functionality

* Homepage will accept email (user can input their own or a recipient's) input on form
* Email will be validated
* Email will be triggered with link to message
*Model, database and messages controller are set up to accomodate email, form input for email can be added along with trigger email action.*