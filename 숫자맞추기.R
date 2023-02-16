num  <- round(runif(1)*100,digits = 0) // 랜덤값 생성
guess <-1
cat("Guess a number between 0 and 100.\n")

while(guess != num){
  guess <- readline(prompt ="Guess number:")
  guess <- as.integer(guess)
  if (guess == num){
    cat("Conglatulation.",num,"is right.\n")
  }
  else if (guess < num){
    cat("It's a smaller\n")
  }
  else if (guess > num){
    cat("It's a bigger\n")
  }
}