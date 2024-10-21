module DataTypes where
    data CustomerInfo = CustomerInfo String String Int Int

    customerGeorge :: CustomerInfo
    customerGeorge = CustomerInfo "Georgie" "Bird" 10 100

    showCustomer :: CustomerInfo -> String
    showCustomer (CustomerInfo first last count balance) =
        let fullName = first <> " " <> last
            name = "name: " <> "fullName"
            count' = "count: " <> show count
            balance' = "balance: " <> show balance
        in name <> " " <> count' <> " " <> balance'


    applyDiscount :: CustomerInfo -> CustomerInfo
    applyDiscount customer = 
        case customer of 
            (CustomerInfo "Georgie" "Bird" count balance) -> CustomerInfo "Georgie" "Bird" count (balance `div` 4)
            (CustomerInfo "Porter" "Pupper" count balance) -> CustomerInfo "Porter" "Putter" count (balance `div` 2)
            otherCustomer -> otherCustomer

    {- firstName :: CustomerInfo -> String
    firstName (CustomerInfo name _ _ _) = name

    lastName :: CustomerInfo -> String
    lastName (CustomerInfo _ name _ _) = name

    widgetCount :: CustomerInfo -> Int
    widgetCount (CustomerInfo _ _ count _) = count

    balance :: CustomerInfo -> Int
    balance (CustomerInfo _ _ _ balance) = balance -}

    -- Special syntax to deal with named parameters
    data CustomerInfo0 = CustomerInfo0 {
        firstName :: String,
        lastName :: String,
        widgetCount :: Int,
        balance :: Int
    }

    customerGeorge0 = CustomerInfo0 {
        balance = 100,
        lastName = "Bird",
        firstName = "Georgie",
        widgetCount = 10
    }

    