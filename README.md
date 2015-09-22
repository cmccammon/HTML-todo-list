#Rails TODO


With Rails server running all tests pass.
###Tests:

Going to http://localhost:3000/honeydos displays all the honeydos as JSON
Going to http://localhost:3000/honeydos/new displays an empty (new) todo as JSON
Going to http://localhost:3000/honeydos/1 or any ID displays just that single todo as JSON
Going to http://localhost:3000/honeydos/any_ID no tin table, displays an error message as JSON
Sending a POST request to http://localhost:3000/honeydos with the params of { "body": "Finish Homework" } I should see my todo returned to me as json (Using Postman)

Sending a DELETE request to http://localhost:3000/honeydos/1 should delete that todo from the database and return the message “deleted” as json (Using Postman)


Sending a PUT request to http://localhost:3000/honeydos/1 with the params of { completed: true } should update the todo in the database and displays to me the newly changed todo as json (Using Postman)

###How to add, delete and edit:

You can use Postman to add, delete and edit projects in the honeydo list.
