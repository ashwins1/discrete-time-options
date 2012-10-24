data Model = Model { upFactor     :: Double
                   , downFactor   :: Double
                   , numPeriods   :: Integer
                   , periodLength :: Double
                   }

data Input = Input { strikePrice       :: Double
                   , initialStockPrice :: Double
                   , interestRate      :: Double
                   }

priceOption :: Model -> Input -> Double
priceOption m i = priceOption' m i 0 0
  where priceOption' m i period ups
          | period == lastPeriod = expiryPrice
          | otherwise            = 
        lastPeriod = (numPeriods m) - 1
        expiryPrice = max (finalStockPrice - strikePrice i) 0
        finalStockPrice = initialStockPrice * (upFactor m ** ups) * (downFactor m ** (lastPeriod - numUps)
