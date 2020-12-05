-- ! Suma dos arrays

module Kata.ArrayPlusArray where

import Data.Function (on)

arrayPlusArray :: [Int] -> [Int] -> Int
arrayPlusArray = (+) `on` sum

module Kata.ArrayPlusArray where

arrayPlusArray :: [Int]->[Int]->Int
arrayPlusArray xs ys = sum(xs ++ ys)

-- ! Retorna un saludo interpolado

module Greeting where
import Text.Printf

greeting :: String -> String
greeting = printf "Hello, %s how are you doing today?"

module Greeting where

greeting name = "Hello, " ++ name ++ " how are you doing today?"


-- ! Genera un contador de horas en milisegundos

module Kata (past) where

past :: Int -> Int -> Int -> Int
past h m s = ((h * 60 + m) * 60 + s) * 1000

module Kata (past) where

past :: Int -> Int -> Int -> Int
past h m s = (h * 3600 + m * 60 + s) * 1000

-- retorna la hora

module Kata (past) where

past :: Int -> Int -> Int -> Int
past h m s = (h * 3600 + m * 60 + s) * 1000

module Kata (past) where

past :: Int -> Int -> Int -> Int
past h m s = hours h + minutes m + seconds s
	where
		hours x = 60 * minutes x
		minutes x = 60 * seconds x
		seconds x = 1000 * x

--! Determina si tu estas tocando el banjo

module Banjo where

areYouPlayingBanjo :: String -> String
areYouPlayingBanjo name@(c:_) 
	| c `elem` "rR" = name ++ " plays banjo"
	| otherwise = name ++ " does not play banjo"

module Banjo where

areYouPlayingBanjo :: String -> String
areYouPlayingBanjo name = name ++ " " ++ playStr name ++ " banjo"
	where
		playStr ('r':_) = "plays"
		playStr ('R':_) = "plays"
		playStr _ = "does not play"

--? (areYouPlayingBanjo("martin"), "martin does not play banjo");
--? (areYouPlayingBanjo("Rikke"), "Rikke plays banjo");

--! Invierte los valores

module Kata (invert) where

invert :: [Integer] -> [Integer]
invert = map negate

module Kata (invert) where

invert :: [Integer] -> [Integer]
invert = map(*(-1))

--?([1,2,3,4,5]),[-1,-2,-3,-4,-5])
--?([1,-2,3,-4,5]), [-1,2,-3,4,-5])

--! Suma los elementos dentro de un numero

module Summation where

summation :: Integer -> Integer
summation x = sum [1..x]

module Summation where

summation :: Integer -> Integer
summation n = div (n*(n + 1)) 2

--! Determina si un heroe lleva la cantidad suficiente de munición para matar al dragon

module Survive where

hero :: Int -> Int -> Bool
hero bullets dragons = bullets >= 2 * dragons

module Survive where

hero :: Int -> Int -> Bool
hero = (>=) . (`div` 2)

--?(10, 5), True)
--?(7, 4), False)
--?(4, 5), False)

--! Retorna area o perimetro dependiendo los tamaños

module AreaPerimeter where

areaOrPerimeter :: Double -> Double -> Double
areaOrPerimeter x y = if x == y then x * x else 2 * (x + y)

module AreaPerimeter where

areaOrPerimeter :: Double -> Double -> Double
areaOrPerimeter length width
  | length == width = length * width
  | otherwise = (length + width) * 2

--?(4, 4), 16)
--?(6, 10), 32)

--! Repite un string determinada cantidad de veces

module StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n = concat . replicate n

module StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n s = concat $ replicate n s


--?(4, 'a'), 'aaaa')
--?(3, 'hello '), 'hello hello hello ')

--! Retorna un falso binario

module Codewars.Kata.FakeBinary where

fakeBin :: String -> String
fakeBin = map (\c -> if c < '5' then '0' else '1' )

module Codewars.Kata.FakeBinary where

import Data.Char (digitToInt)

fakeBin :: String -> String
fakeBin [] = []
fakeBin (x:xs)
  | digitToInt x < 5 = '0' : fakeBin xs
  | digitToInt x > 4 = '1' : fakeBin xs

--?["01011110001100111", "45385593107843568"],
--?["101000111101101", "509321967506747"],
--?["011011110000101010000011011", "366058562030849490134388085"],

--! Retorna si un numero es divisible entre otros dos

module Kata (isDivisible) where

isDivisible :: Int -> Int -> Int -> Bool
isDivisible n x y = (n `mod` x + n `mod` y == 0)

module Kata (isDivisible) where

isDivisible :: Int -> Int -> Int -> Bool
isDivisible x y z = mod x y == 0 && mod x z == 0

--?(3,3,4),False)
--?(12,3,4),True)
--?(8,3,4),False)

#! Obtiene un planeta por su numero en el sistema solar

module Planets where

getPlanetName :: Int -> String
getPlanetName index = planets !! (index - 1)
  where planets :: [String]
        planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

module Planets where

getPlanetName :: Int -> String
getPlanetName index = planets !! (index - 1)
  where planets :: [String]
        planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

#! Abrevia un nombre

module Initials where

import Data.Char
import Data.List

getInitials :: String -> String
getInitials = intersperse '.' . map (toUpper . head) . words

module Initials where

import Data.List (head, intersperse, words)
import Data.Char (toUpper)

getInitials :: String -> String
getInitials = intersperse '.' . map (toUpper . head) . words

#?Sam Harris => S.H
#?Patrick Feeney => P.F

#! Alterna mayusculas y minusculas

module Codewars.Kata.AlternatingCase where

import Data.Char(isLower, toUpper, toLower)

toAlternatingCase :: String -> String
toAlternatingCase = map (\x -> if isLower x then toUpper x else toLower x)

module Codewars.Kata.AlternatingCase where

import Data.Char

toAlternatingCase :: String -> String
toAlternatingCase = map f
  where f c | isUpper c = toLower c
            | isLower c = toUpper c
            | otherwise = c

--? Mauricio => mAURICIO

#! Muestra si un string está en uppercase

module Codewars.Kata.IsUpperCase where
import Data.Char (isLower)

isUpperCase :: String -> Bool
isUpperCase = all (not . isLower)

module Codewars.Kata.IsUpperCase where

import Data.Char (isLower)

isUpperCase :: String -> Bool
isUpperCase = not . any isLower

#?is_uppercase("hello I AM DONALD") == False
#?is_uppercase("HELLO I AM DONALD") == True
#?is_uppercase("ACSKLDFJSgSKLDFJSKLDFJ") == False