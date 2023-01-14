class Review {
  final int id;
  final String fullname, image, comment;
  final String date;
  final double rate;
  final int color;
  Review({
    required this.id,
    required this.rate,
    required this.fullname,
    required this.image,
    required this.comment,
    required this.date,
    required this.color,
  });
  factory Review.fromJson(Map<String, dynamic> data) => Review(
      id: data['id'],
      fullname: data['fullname'],
      rate: data['rate'],
      comment: data['comment'],
      date: data['date'],
      image: data['image'],
      color: data['color']);
}

List<Map<String, dynamic>> dataReviews = [
  {
    "id": 1,
    "fullname": "Broddie Pea",
    "image": "https://robohash.org/temporefugafugit.png?size=50x50&set=set1",
    "rate": 4.6,
    "comment":
        "Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.",
    "date": "10/22/2022",
    "color": 0xFFffa1fc
  },
  {
    "id": 2,
    "fullname": "Paolina Caldicot",
    "image": "https://robohash.org/etteneturvoluptatum.png?size=50x50&set=set1",
    "rate": 3.8,
    "comment":
        "Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.",
    "date": "3/16/2022",
    "color": 0xFF840d81
  },
  {
    "id": 3,
    "fullname": "Leicester Norcliffe",
    "image": "https://robohash.org/temporeundeeveniet.png?size=50x50&set=set1",
    "rate": 4.5,
    "comment":
        "Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.",
    "date": "12/10/2022",
    "color": 0xFF65d8f7
  },
  {
    "id": 4,
    "fullname": "Nikolaos Cooksley",
    "image":
        "https://robohash.org/laborumrepudiandaererum.png?size=50x50&set=set1",
    "rate": 3.5,
    "comment":
        "Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.",
    "date": "4/19/2022",
    "color": 0xFFccae4d
  },
  {
    "id": 5,
    "fullname": "Andy Beretta",
    "image": "https://robohash.org/abperspiciatisodit.png?size=50x50&set=set1",
    "rate": 3.3,
    "comment":
        "Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.",
    "date": "10/27/2022",
    "color": 0xFF086887
  },
  {
    "id": 6,
    "fullname": "Mada Prodrick",
    "image":
        "https://robohash.org/inventorevoluptatibusipsam.png?size=50x50&set=set1",
    "rate": 3.9,
    "comment":
        "Maecenas tincidunt lacus at velit. Donec semper sapien a libero. Nam dui.",
    "date": "10/11/2022",
    "color": 0xFF8a1a23
  },
  {
    "id": 7,
    "fullname": "Constantin Slowan",
    "image": "https://robohash.org/quamdoloreos.png?size=50x50&set=set1",
    "rate": 3.2,
    "comment": "Donec ut dolor. Donec semper sapien a libero. Nam dui.",
    "date": "10/24/2022",
    "color": 0xFFe8ee07
  },
  {
    "id": 8,
    "fullname": "Sally Fernyhough",
    "image": "https://robohash.org/cumeumfugiat.png?size=50x50&set=set1",
    "rate": 3.7,
    "comment":
        "Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",
    "date": "5/11/2022",
    "color": 0xFFbbb4a3
  },
  {
    "id": 9,
    "fullname": "Emmalynne Battershall",
    "image": "https://robohash.org/quasialiquidveniam.png?size=50x50&set=set1",
    "rate": 4.3,
    "comment": "Suspendisse potenti. Donec semper sapien a libero. Nam dui.",
    "date": "4/24/2022",
    "color": 0xFFd80ffb
  },
  {
    "id": 10,
    "fullname": "Duky Neeves",
    "image": "https://robohash.org/omnisilloanimi.png?size=50x50&set=set1",
    "rate": 3.3,
    "comment":
        "Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.",
    "date": "7/22/2022",
    "color": 0xFF48e733
  }
];

List<Review> reviews = dataReviews.map((e) => Review.fromJson(e)).toList();
