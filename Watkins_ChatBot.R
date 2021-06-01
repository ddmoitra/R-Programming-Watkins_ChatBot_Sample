#!/usr/bin/env Rscript --vanilla

dir <- "C:/Users/Deepto Moitra/Desktop/Data Science Portfolio/2 Projects/4_R_Chatbot"
setwd(dir)

model <- list(
  "skills" = c("Fun Fact: Do you know since graduating from college, Deepto has obtained either a certifiaction or a promotion every year since till 2020 last year? Hmm?", "Deepto has been building his skills in Python, Looker, UiPath, C# - heck, he even built me in R!"),
  "soft" = c("Deepto has been leading teams for a while now, you know he's a Manager, right? :)"),
  "latest" = c("Deepto has led and driven his team's Data Quality and Machine Learning (DQML) project into successful completion"),
  "best" = c("Deepto has led and driven his team's Data Quality and Machine Learning (DQML) project into successful completion and made his team look good"),
  "why" = c("Deepto has truly worked on projects from start-to-finish at the grassroots level. He has led and drove several large transformation projects within the intersection of finance, technology and the public sector and carefully navigated all kinds of stakeholders to successfully land at completion i.e. deployment. Wouldn't you want someone like that on your team??"),
  "how" = c("Deepto has applied softwares like R and Python in multiple client environments and used them to deliver significant data processing/machine learning capabilities",
            "You can learn more about Deepto at www.linkedin.com/in/deeptomoitra")
  )


default_model <- c(
  "Could you elaborate some more on that question please?",
  "I am not sure I understand you fully",
  "Why do you ask?",
  "Does that help?",
  "What else do you want to know?",
  "I'm sorry, I didn't quite understand the question"
)

Watkins <- function(input) {
  # match keywords from model
  pos <- which(lapply(paste0("(.*)?", names(model), "(.*)?"), grep, x = input, ignore.case = TRUE) == 1)
  output <- unlist(model[pos])
  if (length(pos) == 0) {
    # choose default answer randomly if no keyword is found
    output <- sample(default_model, 1)
  } else {
    # choose applicable answer randomly
    pos <- ifelse(length (pos) > 1, sample(pos, 1), pos)
    output <- sample(output, 1)
    names(output) <- NULL
    # customize answer
    tmp <- regexec(names(model)[pos], input, ignore.case = TRUE)[[1]]
    end_phrase <- substr(input, start = attr(tmp, "match.length") + as.numeric(tmp) + 1, stop = nchar(input))
    end_phrase <- trimws(end_phrase, which = "right")   #, whitespace = "[?!.]"
    output <- sub("\\$", end_phrase, output)
  }
  output
}

input <- ""
cat("Watkins: Hello, I am Watkins and I am here to tell you about Deepto!\n")
while (TRUE) {
  input <- readline("You: ")
  if (input == "quit") break
  cat("Watkins:", Watkins(input))
}

