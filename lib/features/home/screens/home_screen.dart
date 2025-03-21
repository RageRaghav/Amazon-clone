import 'package:amazon_clone1/constants/global_variables.dart';
import 'package:amazon_clone1/features/home/widgets/address_box.dart';
import 'package:amazon_clone1/features/home/widgets/carousel_image.dart';
import 'package:amazon_clone1/features/home/widgets/deal_of_day.dart';
import 'package:amazon_clone1/features/home/widgets/top_categories.dart';
import 'package:amazon_clone1/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  //add route in router.dart file
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    height: 42,
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.topLeft,
                    child: Material(
                      borderRadius: BorderRadius.circular(7),
                      elevation: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: InkWell(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 23,
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(top: 10),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                borderSide: BorderSide.none),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                borderSide: BorderSide(
                                    color: Colors.black38, width: 1)),
                            hintText: "Search Amazon.in",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 17)),
                      ),
                    )),
              ),
              Container(
                color: Colors.transparent,
                height: 22,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 25,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddressBox(),
            const SizedBox(
              height: 10,
            ),
            TopCategories(),
            const SizedBox(
              height: 10,
            ),
            CarouselImage(),
            DealOfDay()
          ],
        ),
      ),
    );
  }
}
