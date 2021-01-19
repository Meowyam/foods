concrete TicketE of Ticket = {
  lincat
    Train, Station = Str;
  lin
    Ticket X Y =
      ((("I" ++ ("would like" | "want") ++ "to get" |
        ("may" | "can" | "could") ++ "I get" |
        "can you give me" |
        []) ++
          "a ticket") |
        ("I" ++ ("want to go" | "am trying to get")) ++
      []) ++
      "from" ++ X ++ "to" ++ Y ++
      ("please" | []) ;

    Folsom = "Folsom Prison" ;
    SanAntone = "San Antonio" ;
}
