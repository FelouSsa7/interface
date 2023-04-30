import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interface_acheteur/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, right: 36 * kDefaultPadding),
                  margin: const EdgeInsets.only(
                      top: 70.0), //habet container lwl chwi teht
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'BIENVENU',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/logo.png',
                          height: 20, width: 20),
                    ],
                  ), // l fog bare de recherch
                ),
              ),
              Positioned(
                bottom: 0,
                height: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            //suffixIcon: const Icon(Icons.search)
                          ),
                        ),
                      ),
                      SvgPicture.asset('assets/icons/search_black_24dp.svg'),
                    ],
                  ),
                ),
              ), //la bare de recherech
            ],
          ),
        ),
      ],
    );
  }
}
