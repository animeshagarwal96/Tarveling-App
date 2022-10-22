import 'package:flutter/material.dart';

import 'package:flutter_travel/model/catalog_model.dart';

class TravelScreen extends StatelessWidget {
  final CatalogModel model;
  const TravelScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(model.image), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.1),
          ])),
          child: CatalogData(
            name: model.name,
            location: model.location,
            rating: model.rating,
            price: model.price,
            desc: model.desc,
          ),
        ),
      ),
    );
  }
}

class CatalogData extends StatelessWidget {
  const CatalogData({
    Key? key,
    required this.name,
    required this.location,
    required this.rating,
    required this.price,
    required this.desc,
  }) : super(key: key);

  final String name;
  final String location;
  final String rating;
  final String price;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white70,
                  ),
                  Text(
                    location,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            desc,
            style: const TextStyle(fontSize: 13, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const Icon(
                Icons.star,
                color: Colors.white,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 4.0),
                child: Text(
                  rating,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹$price/ person",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.yellow,
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
