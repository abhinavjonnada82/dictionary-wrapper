

Perform look up on the word hello:
i/p: http://localhost:8080/api/dictionary/hello

{
  "word": "hello",
  "description": "[{\"definition\":\"Used as a greeting or to begin a telephone conversation.\",\"example\":\"Hello, how are you today?\",\"synonyms\":[],\"antonyms\":[]},{\"definition\":\"Used to express a feeling of surprise.\",\"example\":\"Hello, what's all this then?\",\"synonyms\":[],\"antonyms\":[]}]"
}
------------------------------------------------------
Perform look up on a random word:
i/p: http://localhost:8080/api/dictionary/jerfnskecad
{
  "timestamp": "2023-05-18T14:25:43.294+0000",
  "status": 500,
  "error": "Internal Server Error",
  "message": "Error fetching definition for word: foobar"
}



# dictionary-wrapper
Using Swift & Docker, built a wrapper on dictionary API to return definition of words entered through URL


To RUN using Xcode:

1.) git clone https://github.com/abhinavjonnada82/dictionary-wrapper.git
2.) Run using Xcode

To RUN using DOCKER:

1.)  docker pull aj82/my-dictionary:version1

Deployed image through Digital Ocean
