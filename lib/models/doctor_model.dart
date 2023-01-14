import 'package:doctor_appoinment/models/review_model.dart';
import 'package:equatable/equatable.dart';

class Doctor extends Equatable {
  final int doctorId;
  final String name, specialist, about, location, image;
  final int price;
  final int color;
  final List<Review> reviews;

  const Doctor(
      {required this.doctorId,
      required this.name,
      required this.specialist,
      required this.about,
      required this.location,
      required this.image,
      required this.color,
      required this.price,
      required this.reviews});

  factory Doctor.fromJson(Map<String, dynamic> data) => Doctor(
        doctorId: data['id'],
        name: data['fullname'],
        specialist: data['specialist'],
        about: data['about'],
        location: data['address'],
        image: data['image'],
        price: data['price'],
        color: data['color'],
        reviews: data['reviews'],
      );
  @override
  List<Object> get props =>
      [doctorId, name, specialist, about, price, location, image, reviews];
}

List<Map<String, dynamic>> dataDoctors = [
  {
    "id": 1,
    "fullname": "Laryssa Davidovici",
    "specialist": "Ophthalmologists",
    "about":
        "Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.",
    "address": "5 School Court",
    "price": 59,
    "image": "https://robohash.org/atmaioreseum.png?size=100x100&set=set1",
    "color": 0xFF9a74f0,
    "reviews": [reviews[0], reviews[1], reviews[2], reviews[3]]
  },
  {
    "id": 2,
    "fullname": "Ciel Lilloe",
    "specialist": "Pediatrician",
    "about":
        "Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.",
    "address": "9335 Arapahoe Circle",
    "price": 65,
    "image":
        "https://robohash.org/nesciuntdolorevelit.png?size=100x100&set=set1",
    "color": 0xFF173b3c,
    "reviews": [reviews[3], reviews[4], reviews[5], reviews[6], reviews[7]]
  },
  {
    "id": 3,
    "fullname": "Liuka Leehane",
    "specialist": "Endocrinologist",
    "about":
        "Ut tellus. Nulla ut erat id mauris vulputate elementum. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "6 Crest Line Court",
    "price": 53,
    "image":
        "https://robohash.org/doloreeligendiminus.png?size=100x100&set=set1",
    "color": 0xFFc04278,
    "reviews": [reviews[3], reviews[4], reviews[1]]
  },
  {
    "id": 4,
    "fullname": "Ashbey Bloxsom",
    "specialist": "Neurologists",
    "about":
        "Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.",
    "address": "68 Stoughton Terrace",
    "price": 80,
    "image": "https://robohash.org/aperiamesseut.png?size=100x100&set=set1",
    "color": 0xFF1cf460,
    "reviews": [reviews[1], reviews[5], reviews[6], reviews[8]]
  },
  {
    "id": 5,
    "fullname": "Camile Keyser",
    "specialist": "Endocrinologist",
    "about":
        "Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "4511 Hermina Hill",
    "price": 80,
    "image": "https://robohash.org/nihilquosdolorem.png?size=100x100&set=set1",
    "color": 0xFFcf1b79,
    "reviews": [reviews[3], reviews[1], reviews[2]]
  },
  {
    "id": 6,
    "fullname": "Vally Barrass",
    "specialist": "Neurologists",
    "about":
        "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.",
    "address": "81 Schmedeman Place",
    "price": 54,
    "image": "https://robohash.org/oditetrerum.png?size=100x100&set=set1",
    "color": 0xFF11583c,
    "reviews": [reviews[4], reviews[5], reviews[6], reviews[7], reviews[8]]
  },
  {
    "id": 7,
    "fullname": "Andrea Addis",
    "specialist": "Endocrinologist",
    "about":
        "Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.",
    "address": "7 Farmco Center",
    "price": 76,
    "image":
        "https://robohash.org/perferendisatqueblanditiis.png?size=100x100&set=set1",
    "color": 0xFF1f633e,
    "reviews": [reviews[1], reviews[3], reviews[4], reviews[2], reviews[5]]
  },
  {
    "id": 8,
    "fullname": "Riobard Visco",
    "specialist": "Cardiologists",
    "about":
        "Vivamus vestibulum sagittis sapien. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "767 Old Gate Trail",
    "price": 57,
    "image": "https://robohash.org/aperiamautqui.png?size=100x100&set=set1",
    "color": 0xFF8f4157,
    "reviews": [reviews[5], reviews[6], reviews[7]]
  },
  {
    "id": 9,
    "fullname": "Mirilla Burnsall",
    "specialist": "Pediatrician",
    "about":
        "Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.",
    "address": "746 Rutledge Center",
    "price": 55,
    "image": "https://robohash.org/etlaborumcum.png?size=100x100&set=set1",
    "color": 0xFF4e1c59,
    "reviews": [reviews[2], reviews[3], reviews[5], reviews[1]]
  },
  {
    "id": 10,
    "fullname": "Gretta Avann",
    "specialist": "Pediatrician",
    "about":
        "In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "283 Northview Park",
    "price": 56,
    "image": "https://robohash.org/sitverooccaecati.png?size=100x100&set=set1",
    "color": 0xFFcc225f,
    "reviews": [reviews[1], reviews[4], reviews[8]]
  },
  {
    "id": 11,
    "fullname": "Cecile Bedow",
    "specialist": "Ophthalmologists",
    "about":
        "In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.",
    "address": "53861 David Road",
    "price": 76,
    "image":
        "https://robohash.org/voluptatemteneturnon.png?size=100x100&set=set1",
    "color": 0xFF609df5,
    "reviews": [reviews[2], reviews[3], reviews[4], reviews[1]]
  },
  {
    "id": 12,
    "fullname": "Yuri Woodhams",
    "specialist": "Dermatologists",
    "about":
        "Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.",
    "address": "906 Texas Road",
    "price": 88,
    "image": "https://robohash.org/sitsedhic.png?size=100x100&set=set1",
    "color": 0xFFc55e60,
    "reviews": [reviews[1], reviews[5], reviews[4]]
  },
  {
    "id": 13,
    "fullname": "Jeramey Kisting",
    "specialist": "Pediatrician",
    "about":
        "In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "710 Eagle Crest Street",
    "price": 67,
    "image": "https://robohash.org/autnihiliste.png?size=100x100&set=set1",
    "color": 0xFFb89965,
    "reviews": [reviews[1], reviews[4], reviews[2]]
  },
  {
    "id": 14,
    "fullname": "Diandra Klimek",
    "specialist": "Pediatrician",
    "about":
        "Suspendisse potenti. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "5 Quincy Way",
    "price": 55,
    "image":
        "https://robohash.org/doloribusmolestiascum.png?size=100x100&set=set1",
    "color": 0xFF475f9e,
    "reviews": [reviews[3], reviews[5], reviews[4], reviews[1]]
  },
  {
    "id": 15,
    "fullname": "Glennis Flaxon",
    "specialist": "Cardiologists",
    "about":
        "Duis aliquam convallis nunc. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    "address": "70 Pepper Wood Pass",
    "price": 82,
    "image": "https://robohash.org/voluptatemabnobis.png?size=100x100&set=set1",
    "color": 0xFF5fe2b0,
    "reviews": [reviews[1], reviews[5], reviews[9]]
  }
];
List<Doctor> doctors = dataDoctors.map((e) => Doctor.fromJson(e)).toList();
rate(Doctor doctor) {
  double rate = 0;
  for (var element in doctor.reviews) {
    rate += element.rate;
  }
  return rate / doctor.reviews.length;
}
