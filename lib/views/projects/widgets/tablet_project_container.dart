import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletProjectContainer extends StatefulWidget {
  final dynamic data;
  const TabletProjectContainer({super.key, required this.data});

  @override
  State<TabletProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<TabletProjectContainer> {
  int currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data['titleProject'],
                style: bodyText1.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: width * 0.5,
                child: Text(
                  widget.data['description'],
                  style: bodyText2,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: width * 0.5,
                child: Text(
                  "Tools Used :",
                  style: bodyText2.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(width: width * 0.5, child: _listTools()),
              const SizedBox(height: 16),
              widget.data['linkLive'] == null ||
                      (widget.data['linkLive'] as String).isEmpty
                  ? const SizedBox()
                  : Row(
                      children: [
                        SizedBox(
                          height: height * 0.05,
                          width: width * 0.14,
                          child: OutlinedButton(
                            style: const ButtonStyle(
                              side: WidgetStatePropertyAll<BorderSide>(
                                BorderSide(color: secondColor, width: 2),
                              ),
                            ),
                            onPressed: () {
                              if (widget.data.linkLive.isNotEmpty) {
                                _launchURL(
                                  widget.data['linkLive'],
                                );
                              }
                            },
                            child: Text(
                              "See Live",
                              style: bodyText2.copyWith(
                                  color: secondColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        widget.data['linkGithub'] == null ||
                                (widget.data['linkGithub'] as String).isEmpty
                            ? const SizedBox()
                            : SizedBox(
                                height: height * 0.05,
                                width: width * 0.14,
                                child: TextButton(
                                  onPressed: () {
                                    _launchURL(
                                      widget.data['linkGithub'],
                                    );
                                  },
                                  child: Text(
                                    "Source Code",
                                    style: bodyText2.copyWith(
                                        color: secondColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                      ],
                    )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              SizedBox(
                height: height * 0.5,
                width: width * 0.2,
                child: CarouselSlider(
                  items: (widget.data['urlImage'] as List)
                      .map(
                        (item) => ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImage(
                              imageUrl: item,
                              errorWidget: (context, url, error) {
                                return const Center(
                                  child: Icon(Icons.error, color: Colors.red),
                                );
                              },
                              placeholder: (context, url) {
                                return Center(
                                    child: CircularProgressIndicator(
                                        color: secondColor));
                              },
                              fit: BoxFit.fill),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      onPageChanged: (index, _) {
                        setState(() {
                          currentCarouselIndex = index;
                        });
                      },
                      viewportFraction: 1.0,
                      enlargeCenterPage: false),
                ),
              ),
              const SizedBox(height: 8),
              _dotIndex(
                  dataLength: (widget.data['urlImage'] as List).length,
                  currentIndex: currentCarouselIndex)
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) throw 'Could not launch $url';
  }

  SingleChildScrollView _listTools() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.data['tools'].length,
          (index) {
            return Padding(
              padding: EdgeInsets.only(
                  right: index + 1 != widget.data['tools'].length ? 16 : 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: secondColor),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Text(widget.data['tools'][index].toString(),
                    style: bodyText1.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500)),
              ),
            );
          },
        ),
      ),
    );
  }

  Row _dotIndex({required int dataLength, required int currentIndex}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dataLength,
        (index) {
          return Padding(
            padding: EdgeInsets.only(right: index + 1 != dataLength ? 8 : 0),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: index == currentIndex ? secondColor : Colors.grey,
                    shape: BoxShape.circle),
              ),
            ),
          );
        },
      ),
    );
  }
}
