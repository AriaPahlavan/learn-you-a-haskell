main = print $ "Hello, world!"

succTest = succ 8
minTest = min 3.4 3.2
succMaxTest = (succ 9) + (max 5 4) + 1

doubleMe x = x + x

doubleUs x y = x*2 + y*2 
doubleUs2 x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2
                        
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1  

myhead [] = error "no empty list please!"
myhead (x:xs) = x

mytail [] = []
mytail (x:xs) = xs

myinit []  = []
myinit (x:xs) 
  | xs == [] = []
  | otherwise = x:myinit xs
  
mylast [] = error "no empty list please!"
mylast (x:xs)
  | xs == [] = x
  | otherwise = mylast xs

mylength []     = 0
mylength (_:xs) = 1 + mylength xs

mynull []    = True
mynull (_:_) = False 

myreverse []     = []
myreverse (x:xs) = myreverse xs ++ [x]

mytake n [] = []
mytake n (x:xs)
  | n <= 0    = []
  | otherwise = x:take (n-1) xs
  
mydrop n [] = []
mydrop n (x:xs) 
  | n <= 0    = (x:xs)
  | otherwise = mydrop (n-1) xs

myminimum [] = error "no empty list please!"
myminimum [x] = x
myminimum (x:xs) = x `min` (myminimum xs)
