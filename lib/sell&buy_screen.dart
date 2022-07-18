import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nft_digital_artworks/constant/color_constant.dart';
import 'package:nft_digital_artworks/constant/string_constant.dart';

import 'bottom_navigator.dart';
class SellBuyScreen extends StatefulWidget {
  const SellBuyScreen({Key? key}) : super(key: key);

  @override
  State<SellBuyScreen> createState() => _SellBuyScreenState();
}

class _SellBuyScreenState extends State<SellBuyScreen> with WidgetsBindingObserver {

  late AppLifecycleState _appLifecycleState;

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }
  @override
  void dispose(){
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state){
    setState(() {
      _appLifecycleState = state;
      print("BottomNavigatorScreen State: $_appLifecycleState");
    });
  }

  int currentIndex = 0;
  final List item=['assets/antic1.jpg', 'assets/antic2.jpg', 'assets/antic3.jpg', 'assets/antic4.jpg', 'assets/antic5.jpg', 'assets/antic6.jpg',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CarouselSlider(
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          height: 300.0,
                          autoPlay: true,
                          viewportFraction: 0.6,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true
                      ),
                      items: item.map((items) {
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            // padding: EdgeInsets.all(20),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(items, fit: BoxFit.cover,height: 300,width: 250,)),
                            // color: items,
                          );
                        });
                      }).toList(),
                    ),
                    ),
                  const SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < item.length; i++)
                        buildIndicator(currentIndex == i)
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(StringConstant.sellbuy,style: const TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
                  ),),
                  Text(StringConstant.digitalartwork,style: const TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
                  ),),
                  const SizedBox(height: 20),
                  Text(StringConstant.createcollectible,style: TextStyle(
                    fontWeight: FontWeight.bold,color: ColorConstant.white,
                  ),),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                    child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigationScreen()));
                    },
                      child: Container(
                        height: 70,width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: ColorConstant.iconColor
                          ),
                        child: Center(
                          child: Text(StringConstant.getstart,style: TextStyle(
                            color: ColorConstant.white, fontSize: 20,fontWeight: FontWeight.bold
                          )),
                        ),
                        ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
  Widget buildIndicator(bool currentIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex ? ColorConstant.iconColor : ColorConstant.gray,
        ),
      ),
    );
  }
}
