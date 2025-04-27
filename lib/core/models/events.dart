class Events {
  final String name;
  final String location;
  final String date;
  double review;

  Events({
    required this.name,
    required this.location,
    required this.date,
    this.review = 0,
  });
}
