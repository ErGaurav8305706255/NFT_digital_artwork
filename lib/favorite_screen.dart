import 'package:flutter/material.dart';
import 'package:nft_digital_artworks/constant/color_constant.dart';
import 'package:nft_digital_artworks/constant/string_constant.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(height: 40,width: 40,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstant.gray,
                      ),
                          child: Icon(Icons.arrow_circle_left,color: ColorConstant.iconColor,)),
                      const Spacer(),
                      Container(height: 40,width: 40,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstant.gray,
                      ),
                          child: Icon(Icons.favorite,color: ColorConstant.white,))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 300,decoration: BoxDecoration(
                              color: ColorConstant.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('assets/antic1.jpg',fit: BoxFit.cover,height: 300,width: double.infinity)),
                            ),
                            const SizedBox(height: 60),
                            Text(StringConstant.fullabstraction,style: TextStyle(
                              color: ColorConstant.white,fontSize: 20,fontWeight: FontWeight.bold
                            )),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(height: 40,width: 40,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Icon(Icons.shopping_cart_sharp,color: ColorConstant.white)),
                                const SizedBox(width: 5),
                                Text(StringConstant.abstract,style: TextStyle(
                                    color: ColorConstant.white
                                )
                                ),
                                const Spacer(),
                                ClipRRect(borderRadius: BorderRadius.circular(30),
                                    child: Image.asset('assets/person.jpg',height: 40,width: 40,fit: BoxFit.cover,)),
                                const SizedBox(width: 5),
                                Text('Auther\nGaurav kumar',style: TextStyle(
                                  color: ColorConstant.white
                                )),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(StringConstant.discription,style: TextStyle(
                                color: ColorConstant.white,fontSize: 20,fontWeight: FontWeight.bold
                            )),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(StringConstant.bringartwork,style: TextStyle(
                                  color: ColorConstant.white
                              )),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: InkWell(onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
                              },
                                child: Center(
                                  child: Container(
                                    height: 60,width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: ColorConstant.iconColor
                                    ),
                                    child: Center(
                                      child: Text(StringConstant.placebid,style: TextStyle(
                                          color: ColorConstant.white, fontSize: 20,fontWeight: FontWeight.bold
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Positioned(
                        top: 260,left: 55,
                        child: SizedBox(height: 80,width: 200,
                          child: Container(height: 50,width: 150,decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorConstant.gray
                          ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Bid',style: TextStyle(
                                        color: ColorConstant.white
                                      )),
                                      Text('3.4 ETH',style: TextStyle(
                                          color: ColorConstant.white
                                      )),
                                    ],
                                  ),
                                  VerticalDivider(color: ColorConstant.black,thickness: 2,indent: 5,endIndent: 5),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('End Time',style: TextStyle(
                                          color: ColorConstant.white
                                      )),
                                      Text('05:22:51',style: TextStyle(
                                          color: ColorConstant.white
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ),
                        ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
