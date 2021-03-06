### Title

* R Programming - Watkins ChatBot

### About / Synopsis

* The purpose of this project is to demonstrate the creation of a simple chatbot using R's data structures and data processing operations. The Watkins Chatbot attempts to answer questions about my professional profile and career

### Detailed Description 

* This project utlilizes code from an R-blogger's project listed in the citation section below (Learning Machines; January 26, 2021), but has been modified and reused for this separate purpose. Watkins, the ChatBot, attempts to answer questions about my professional profile and career

* The R script has been uploaded which contains the main data model, a default model asking users to repeat the question in different ways and the evaluation code

* Based on key words asked in the questions, Watkins is able to discern to answer similar questions using different response branches in the data model. Note - The same sentence with slight modification is appended to the "best" keyword compared to the "latest" keyword.

![image](https://user-images.githubusercontent.com/46364751/120251648-3b1f2080-c250-11eb-8b7e-38eadd3cc7c8.png)


* Upon attempting to use the same keyword (in this case, "how"), it is observed Watson attempts to respond with a simplistic answer to a short question. However with more keyword included in one sentence ("how" and "skills") which have multiple response branches, the evaluation and corresponding response branch turns out to be different, showing nuance can be introduced into the model

![image](https://user-images.githubusercontent.com/46364751/120251671-483c0f80-c250-11eb-8a64-21ca5495e17e.png)


* The "quit" functionality works as expected and ends the chatbot R script as desired and returns to the regular R shell

![image](https://user-images.githubusercontent.com/46364751/120251678-4e31f080-c250-11eb-99b1-ad697b06cabc.png)


### Installation / Software Requirements

* The following tools were used in this project:

* R-3.4.1 
* R Studio Version 1.0.153

### License / Citation

* R-Bloggers Project reference (Learning Machines; January 26, 2021): https://www.r-bloggers.com/2021/01/eliza-chatbot-in-r-build-yourself-a-shrink/
* R License: http://www.gnu.org/licenses/agpl-3.0.txt

### Support

* This project is a standalone development initiative without any ongoing support

