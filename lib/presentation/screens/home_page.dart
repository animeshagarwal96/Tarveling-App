import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travel/presentation/widgets/catalog_screen.dart';
import '../../model/catalog_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        leading: const AvatarImage(),
        title: const Text(
          "Hello, Vineetha",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications,
                color: Colors.blueGrey,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Where do you\nwant to explore today ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Card(
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 10),
                  child: TextFormField(
                    readOnly: true,
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                    keyboardType: TextInputType.streetAddress,
                    decoration: const InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    onTap: () async {},
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("Choose Category"),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://cdn.iconscout.com/icon/free/png-256/beach-1629043-1382283.png",
                              height: 35,
                              width: 35,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(
                                "Beach",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/184/184977.png",
                              height: 35,
                              width: 35,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(
                                "Mountain",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 280,
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CatalogScreen(
                          catalogImage:
                              "https://deih43ym53wif.cloudfront.net/bali-indonesia-shutterstock_459773704_0dd494ecf7.jpeg",
                          name: "Kuta Beach",
                          location: "Bali, Indonasia",
                          rating: "4.2",
                          isFavorite: true,
                        ),
                        CatalogScreen(
                          catalogImage:
                              "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/72/06.jpg",
                          name: "Bagha Beach",
                          location: "Goa, India",
                          rating: "4.3",
                          isFavorite: false,
                        ),
                        CatalogScreen(
                          catalogImage:
                              "https://deih43ym53wif.cloudfront.net/bali-indonesia-shutterstock_459773704_0dd494ecf7.jpeg",
                          name: "Kuta Beach",
                          location: "Bali, Indonasia",
                          rating: "4.4",
                          isFavorite: true,
                        ),
                      ]),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("Popular Package"),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              PackageCard(
                  model: CatalogModel(
                      image:
                          "https://deih43ym53wif.cloudfront.net/bali-indonesia-shutterstock_459773704_0dd494ecf7.jpeg",
                      name: "Kuta Beach",
                      location: "Bali, Indonasia",
                      rating: "4.2",
                      desc:
                          "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                      price: "20,000")),
              const SizedBox(height: 20),
              PackageCard(
                  model: CatalogModel(
                      image:
                          "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/72/06.jpg",
                      name: "Bagha Beach",
                      location: "Goa, India",
                      rating: "4.3",
                      desc:
                          "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                      price: "15,000")),
            ],
          ),
        )),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final CatalogModel model;
  const PackageCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/travel', arguments: model);
      },
      child: SizedBox(
        height: 170,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(model.image, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.name,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "₹ ${model.price}",
                          style: const TextStyle(color: Colors.red),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 4.0),
                              child: Text(
                                model.rating,
                                style: const TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 170.0,
                          child: Text(
                            model.desc,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.favorite_border_outlined))
                ]),
          ),
        ),
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: CircleAvatar(
        radius: 40.0,
        backgroundColor: Colors.grey[400],
      ),
    );
  }
}
