import 'package:flexflix_flutter/models/movie_model.dart';
import 'package:flexflix_flutter/pages/featured/featured_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  final FeaturedController featuredController = FeaturedController();
  List<MovieModel> featured = [];

  @override
  void initState() {
    super.initState();
    _getFeatured();
  }

  _getFeatured() async {
    List<MovieModel> featuredList = await featuredController.getFeatured();
    setState(() {
      featured = featuredList.take(10).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 150,
            ),
            IconButton(onPressed: () {}, icon: const Icon(TablerIcons.search)),
          ],
        ),
        const SizedBox(height: 20),
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
          ),
          items: List.generate(
            featured.length,
            (index) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage('https://image.tmdb.org/t/p/original/${featured[index].backgrop_path}'),
                    width: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      featured[index].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}
