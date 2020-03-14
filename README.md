# MORTGAGEHIPPO CODE CHALLENGE

First off, thank you for this opportunity. Like MortgageHippo, I love working with Rails, and I'm hungry to keep growing. This was an enjoyable challenge and I'd love to do more with MortgageHippo.

## OVERVIEW

I created a RESTful Rails Api that allows authorized users to interact with coins and transactions. To verify users are authorized, an Api-key is passed in via the 'Authorization' header of the request and is verified via a before_action on the backend.


## MAKING A REQUEST

 * All requests need to include the 'Authorization' header with your valid Api-key, ex. "Api-Key 1234-example-7890".
 * If an endpoint has an /:id, replace that with the id of the coin or user
 * 

## ENDPOINTS

All Endpoints can be reached via the base url below:

http://secure-eyrie-25379.herokuapp.com/api/v1

 #### Coins
 
 * /coins   View all coins
 * /coins/new   Create a new coin
 * /coins/update/:id    Update an existing coin via a PATCH request
 * /coins/delete/:id    Delete a coin
 * /coins/value     Get the total value of all the coins in the system
 * /coins/:id      View an individual coin

 #### Transactions

 * /transactions    View all transactions
 * /transactions/deposit    Deposit one coin
 * /transactions/withdrawal     Withdraw one coin. If quantity of the coin withdrawn goes below 4, it triggers an email to be sent to all admins.
 * /transactions/user/:id   View all transactions for a specific user



## CONTACT

If you have any questions or need any clarification on this challenge, you can contact me at devin.cloud.kelly@gmail.com


