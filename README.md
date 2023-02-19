# tiktoken-server
Building
docker build -t tiktoken-server .

Running 
docker run -it -p5000:5000 tiktoken-server

Calling
$ curl -d '{"prompt" : "hello world", "model" : "text-davinci-003"}' -H "Content-Type: application/json"  http://localhost:5000/tokenize
