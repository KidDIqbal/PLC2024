module Intro2 where
-- test Comment
-- String algebra:
name = "Alice"
-- "if" has a special syntax but otherwise a typed version of Lisp's "if":
name2 = if name /= "" then name else "no name"

pname3 = print "Bob"

myprogram = print (1 + m)  -- compiler error: m undefined
m = 1                      -- unless this line is also present

-- sequencing several imperative programs:
prg1 = do --handles input/output actions in making sure they're done one after another. its for organisation.
  print "hello " 
  print name  -- level of indentation is important

-- the same, but using algebra of imperative programs:
prg1' = sequence_ [print "hello ", print name] -- this does the same thing as the do block, except the _ after sequence means that it doesn't care or handle the output values
-- it only cares that the actions are executed, that these two values are printed one after another.

-- one imperative program passing value to another:
prg2 = do
  line <- getLine -- the value getLine returned is stored in line, like a variable, but it's "binded". this is only achieved in a do block.
  putStrLn ("you typed: " ++ line)

main =
  do
  putStrLn name -- like print, but only for strings
  -- putStrLn pname3 -- Couldn't match type ...; Expected type: String; Actual type: IO () because of line 8.
  pname3 -- in Lisp: eval pname3
  myprogram; prg1; prg2 -- sequencing I/O actions to be executed one after another in the do block.


-- generic string conversion, using a Java-friendly name:
toString value = show value

-- string concatenation:
greet1 = "hello " ++ name ++ (toString 123)
-- the same, but with the operator as a function (like Lisp):
greet2 = (++) "hello " name
-- concatenating more than 2 strings:
greet3 = concat ["hello ", name, toString 123]
