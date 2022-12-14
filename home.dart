import 'package:flutter/material.dart';
import 'card.dart';

class Accounts extends StatelessWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: const Color(0xff1D1C21),
      body: Padding
      (
        padding: const EdgeInsets.fromLTRB(40, 80, 40, 0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox
            (
              // color: Color.fromARGB(255, 95, 92, 107).withOpacity(0.5),
              height: 60,
              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  //Hello Khan
                  Text
                  (
                    "Hello Khan",
                    style: heading(),
                  ),

                  //Welcome Back !
                  Text
                  (
                    "Welcome Back !",
                    style: content(),
                  )

                ],

              ),
            ),

            const SizedBox(height: 40,),
            Column
            (
              children: 
              [
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    BusinessCard(160.0, 125.0, 'images/discount.png', "230K", "sales", const Color(0xffC0DEDD)),
                    BusinessCard(190.0, 158.0, 'images/accounts.png', "8.549K", "customers", const Color(0xffE6DFF1)),
                  ],
                )
              ],
            ),


            Column
            (
              children: 
              [
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    BusinessCard(180.0, 140.0, 'images/product.png', "1.423k", "Products", const Color(0xffF2EEE9)),
                    BusinessCard(150.0, 158.0, 'images/business-and-finance.png', "\u{20B9}9745", "Revenue", const Color(0xffF1DFDE)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container
      (
        height: 60,
        decoration: BoxDecoration
        (
          color: const Color(0xffD9D9D9).withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              IconButton
              (
                onPressed: () {},
                icon: Image.asset('images/Graph.png')
              ),

              IconButton
              (
                onPressed: () {},
                icon: Image.asset('images/account.png')
              ),

              IconButton
              (
                onPressed: () {},
                icon: Image.asset('images/home.png')
              )
            ],
          ),
        )
      )
    );
  }

  //H E A D I N G
  TextStyle heading()
  {
    return const TextStyle
    (
      fontFamily: 'InterBlack',
      fontSize: 25,
      letterSpacing: 2.5,
      color: Color(0xffF6F5F8),
    );
  }

  //C O N T E N T
  TextStyle content()
  {
    return TextStyle
    (
      fontFamily: 'InterBlack',
      fontSize: 15,
      letterSpacing: 1.5,
      color: const Color(0xffF6F5F8).withOpacity(0.6),
    );
  }
}