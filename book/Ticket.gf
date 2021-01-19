abstract Ticket = {
  flags startcat = Train;

  cat
    Train; Station;

  fun
    Ticket : Station -> Station -> Train;
    Folsom, SanAntone : Station;
}
