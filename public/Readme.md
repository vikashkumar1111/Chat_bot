# Chat_bot API Project in PHP

This project is an **ChatGpt** **API** for a chat bot implemented in PHP. The API provides endpoints for sending messages to the bot, retrieving responses, and managing conversation history.

Using this project integrates of OpenAI ChatGPT API for text completion. The API provides an easy way to generate human-like text using natural language processing.

## Getting Started

To get started with this project, you will need to have PHP and a web server installed on your machine. You will also need a database to store conversation history.

And,you will need an OpenAI API key. You can sign up for an API key on the [OpenAI website](https://beta.openai.com/signup/).

### Installation

1. Clone the repository to your local machine.

git clone https://github.com/vikashkumar1111/Chat_bot.git


2. Install dependencies using Composer.

cd Chat_bot

composer instal




## Usage

### Sending a message to the bot

To send a message to the bot, make a POST request to the `/api/messages` endpoint with the following JSON payload:

{
  "model": "text-davinci-003",
  "prompt": "Write a tagline for an ice cream shop.",
  "temperature": 0.4,
  "max_tokens": 64,
  "top_p": 1,
  "frequency_penalty": 0,
  "presence_penalty": 0
}



### Retrieving bot responses

To retrieve responses from the bot, make a GET request to the `/api/messages` endpoint with the following query parameters:

- `user_id`: The ID of the user who sent the message.
- `limit`: The maximum number of responses to retrieve (optional, default is 10).

### Managing conversation history

The API also provides endpoints for managing conversation history:

- `GET /api/conversations`: Retrieve a list of all conversations.
- `GET /api/conversations/{id}`: Retrieve a specific conversation by ID.



You can find a complete list of available parameters in the [OpenAI API documentation](https://beta.openai.com/docs/api-reference/completions/create).


## License

This project is licensed under the MIT License - see the [LICENSE](/License.txt) file for details.


I hope this helps you integrate the **ChatGPT** **API** into your project!




