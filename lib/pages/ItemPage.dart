import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9Fd),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 1,
                              color: Color(0xFF475369).withOpacity(0.3),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9Fd),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 1,
                              color: Color(0xFF475369).withOpacity(0.3),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.42,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 230,
                      margin: EdgeInsets.only(
                        top: 20,
                        right: 70,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset(
                      "images/1.png",
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.43,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Nike Shoe',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269),
                          ),
                        ),
                        Text(
                          '￥350',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        onRatingUpdate: (index) {},
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "【自营】Nike耐克男鞋Air Monarch IV M2K老爹鞋运动休闲鞋新款",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "尺寸: ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF475269),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            for (int i = 1; i < 5; i++)
                              Container(
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xFFF5F9FD),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF475269).withOpacity(0.3),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      )
                                    ]),
                              )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
