import 'package:flutter/material.dart';
import 'package:nft_digital_artworks/constant/color_constant.dart';
import 'package:nft_digital_artworks/constant/string_constant.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> items=["Abstract","Colorful", "Natural", "Antic", "Offers", "Coupon", "Reward", "Achievement"];

  final List item=[
    {
      'image': 'assets/antic1.jpg',
      'title':'Abstract Art',
    },
    {
      'image': 'assets/antic2.jpg',
      'title':'Abstract Art',
    },
    {
      'image': 'assets/antic3.jpg',
      'title':'Abstract Art',
    },
    {
      'image': 'assets/antic4.jpg',
      'title':'Abstract Art',
    },
    {
      'image': 'assets/antic5.jpg',
      'title':'Abstract Art',
    },
    {
      'image': 'assets/antic6.jpg',
      'title':'Abstract Art',
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/person.jpg',height: 50,width: 50,fit: BoxFit.cover,)),
                    const Spacer(),
                    Container(height: 30,width: 30,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: ColorConstant.gray
                    ),
                        child: Icon(Icons.search,color: ColorConstant.iconColor,))
                  ],
                ),
                const SizedBox(height: 20),
                Text(StringConstant.discovernft,style: TextStyle(
                  color: ColorConstant.white,fontSize: 20,fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 20),
                Container(decoration: const BoxDecoration(
                ),
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount : items.length, itemBuilder: (context, index){
                      return Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: ColorConstant.gray,
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(items[index],
                            style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }
                    )
                ),
                const SizedBox(height: 10),
                Container(
                  height: 480,width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: item.length, itemBuilder: (context, index){
                      return Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: ColorConstant.gray,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(item[index]['image'],
                                  width: double.infinity,
                                  height: 200,
                                  fit: BoxFit.cover,
                                )),
                            const SizedBox(height: 20),
                            Text(item[index]['title'],
                              style: TextStyle(
                                color: ColorConstant.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorConstant.lightgray,borderRadius: BorderRadius.circular(10),
                                  ),height: 30,width: 30,
                                  child: Icon(Icons.person,color: ColorConstant.iconColor,)
                                ),
                                const SizedBox(width: 10),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Creator',style: TextStyle(
                                      color: ColorConstant.white
                                    ),),
                                    Text('Gaurav kumar',style: TextStyle(
                                        color: ColorConstant.white,fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 30,width: 30,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.lightgray,borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: const Icon(Icons.favorite,color: Colors.red),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                  },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
