# tiktoken-server

Docker container to expose the  OpenAI BPE tokenizer as a REST service. Uses the tiktoken project  https://github.com/openai/tiktoken

## Building
    docker build -t tiktoken-server .

## Running 
    docker run -it -p5000:5000 tiktoken-server

## Calling using curl
    $ curl -d '{"prompt" : "hello world", "model" : "text-davinci-003"}' -H "Content-Type: application/json"  http://localhost:5000/tokenize
