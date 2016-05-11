-- BookInfo: type constructor, Book: value constructor
-- Int String [String]: components of the type
data BookInfo = Book Int String [String]
                deriving (Show)


-- distinct to BookInfo, because type and value constructors have
-- different names
data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

-- create a new value of type BookInfo
myInfo = Book 9780135072455 "Algebra of Programming"
  ["Richard Bird", "Oege de Moor"]

-- type- and value constructor may have the same name
-- this is not only legal but *normal*
data BookReview = BookReview BookInfo CustomerID String

-- type synonyms
type CustomerID = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

-- Algebraic Data Types
-- ... can have more than one value constructor
-- data Bool = True | False

bookID (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerID (Book id _ _) = id
nicerTitle (Book _ title _) = title
nicerAuthors (Book _ _ authors) = authors


-- record syntax
data Customer = Customer {
  customerID :: CustomerID, 
  customerTitle :: String,
  customerAuthors :: Address
  } deriving (Show)
