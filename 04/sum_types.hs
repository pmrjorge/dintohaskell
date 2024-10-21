module SumTypes where
    data B = T | F
    data Dir = N | S | E | W
    -- Sum Types with data
    data PreferredContactMethod = Email String | TextMessage String | Mail String String String Int

    emailContact :: PreferredContactMethod
    emailContact = Email "me@example.com"

    textContact :: PreferredContactMethod
    textContact = TextMessage "+1 307 555 0100"

    mailContact :: PreferredContactMethod
    mailContact = Mail "1123 S. Road St." "Suite 712" "Examplesville, OH" 98142

    