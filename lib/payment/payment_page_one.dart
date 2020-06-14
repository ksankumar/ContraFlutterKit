import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/payment/payment_card_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPageOne extends StatefulWidget {
  @override
  _PaymentPageOneState createState() => _PaymentPageOneState();
}

class _PaymentPageOneState extends State<PaymentPageOne> {
  bool isChanged = false;

  @override
  void initState() {
    super.initState();
  }

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ButtonRoundWithShadow(
                          size: 48,
                          borderColor: wood_smoke,
                          color: white,
                          callback: () {
                            Navigator.pop(context);
                          },
                          shadowColor: wood_smoke,
                          iconPath: "assets/icons/arrow_back.svg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: LoginText(
                    size: 27,
                    alignment: Alignment.bottomCenter,
                    text: "Payments",
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          PaymentCartItem(
            bgColor: lightening_yellow,
            type: "per month",
            price: "\$" + "54",
          ),
          PaymentCartItem(
            bgColor: white,
            type: "per month",
            price: "\$" + "54",
          ),
          PaymentCartItem(
            bgColor: lightening_yellow,
            type: "per month",
            price: "\$" + "54",
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: ShapeDecoration(
                color: bareley_white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LoginText(
                  alignment: Alignment.centerLeft,
                  size: 21,
                  text: "Auto renew",
                ),
                Switch(
                  value: isChanged,
                  onChanged: onChanged,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ButtonPlainWithShadow(
              text: "Subscribe now",
              height: 48,
              shadowColor: wood_smoke,
              color: wood_smoke,
              callback: () {},
              textColor: white,
              borderColor: wood_smoke,
            ),
          )
        ],
      ),
    );
  }
}