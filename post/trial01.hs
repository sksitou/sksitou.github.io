{-
not about haskell, but use haskell as an interface to learn FP
software crisis: reduce the time to develop software
- make program such that we are confidence
- make code such that it deliver fast
add features to be programme such that we can view it on a high order of abstract
haskell is a good vehical to teach the concepts
FP allow us to write code in a high order of abstraction
can be applied in every languages

FP is a style of programming,
where expressions is used more often than statements
statements have explict effect
expression return values and recompose value directly

FP suggest writing code using expressions

many programming languages adopt FP
-}

{-
Java loop

int total = 0;
for (int i = 1; i<= 10; i++):
	total = total +	1

Haskell loop
sum[1..10]

no statement in FP, use expression "sum" instead
-}

{-
f[] =[]
f(x:xs) = f ys ++ [x] ++ f zs
			where
				ys = [a|a<-xs,a<=x]
				zs = [b|b<-xs,b>x]
-}


e :: t
-- e has type t
-- static type, all type errors are found at compile time
:type not False
-- not False :: Bool
-- to evaluate the type of a variable
{-
Bool, Char, String, Int, Integer, Float
where Int is fixed-precision int
Integer is arbitrary-precision int
String is a list of char
-}

[False,True,False] :: [Bool]
['a','b','c','d'] :: [Char]
[['a'],['b','c']] :: [Char]
-- arbitary length of list

(False,True) :: (Bool,Bool)
(False,'a',True) :: (Bool,Char,Bool)
-- tuple is a sequence of values of different types
-- a list is a sequence of values of the same type
-- (t1,t2,...,tn) is the type of n-tuples where ith components have type ti for any 1,...,n.
('a',(False,'b')) :: (Char,(Bool,Char))
(True,['a','b']) :: (Bool,[Char])
-- type of tuples encode it's size
-- type of components is unrestricted


{-
a function is a mapping from values of one type to values of another type
-}

not :: Bool -> Bool
isDigit :: Char -> Bool
-- t1->t2 is a type of functions that map values of type t1 to values to type t2
-- domain -> range

add :: (Int,Int) -> Int
add (x,y) = x+y

zeroto :: Int -> [Int]
zeroto n = [0..n]
-- argument and result types are unrestricted

add' :: Int -> (Int->Int)
add' x y = x+y
-- curried functions

-- 


{-
add and add' return the same result
one take multiple arguments
one takes argument one by one, which is called curried functions
haskell is named after him, Haskell B. Curry

every functions that take more than two arguments can be curried by returing nested functions
-}
-- functions can also return functions as result

mult :: Int -> (Int->(Int->Int))
mult x y z = x*y*z