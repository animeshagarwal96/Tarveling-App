import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final String catalogImage;
  final String name;
  final String location;
  final String rating;
  final bool isFavorite;
  const CatalogScreen({
    Key? key,
    required this.catalogImage,
    required this.name,
    required this.location,
    required this.rating,
    required this.isFavorite,
  }) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
      child: AspectRatio(
        aspectRatio: 1.9 / 2.6,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(catalogImage), fit: BoxFit.cover),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ])),
            child: CatalogData(
              name: name,
              location: location,
              rating: rating,
              isFavorite: isFavorite,
            ),
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
    required this.isFavorite,
  }) : super(key: key);

  final String name;
  final String location;
  final String rating;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: isFavorite == true
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20,
                  )
                : const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
          ),
        ),
        const Spacer(),
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
            const Icon(
              Icons.star,
              color: Colors.white,
              size: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 4.0),
              child: Text(
                rating,
                style: const TextStyle(color: Colors.white70),
              ),
            )
          ],
        )
      ],
    );
  }
}
