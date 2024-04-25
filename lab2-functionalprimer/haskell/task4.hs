ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then do
      let newPrompt = prompt ++ "!"
      ask newPrompt
    else if line == "quit" then print("quitting..")
    else do
      putStrLn ("you said: " ++ reverse line) -- reverses the string chars
      ask prompt

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt