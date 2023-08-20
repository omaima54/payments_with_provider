
import 'package:flutter/material.dart';
import 'package:payments_with_provider/payment_status/transaction_payment.dart';


class PaymentStatusScreen extends StatefulWidget {
  const PaymentStatusScreen({super.key});

  @override
  State<PaymentStatusScreen> createState() => _PaymentStatusScreenState();
}

class _PaymentStatusScreenState extends State<PaymentStatusScreen> {
  @override
  Widget build(BuildContext context) {

    return  Material(

      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding:  const EdgeInsets.all(30),
                  child:const Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Spacer(),
                        Text(
                    'transaction_history',
                    style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Spacer(),
                    ],
                  )
                ),
                const Expanded(child: TransactionPaymentHistory()),
                const GetPayedButton(),
              ],
            ),
          
          ],
        ),
      ),
    );
  }
}

class GetPayedButton extends StatelessWidget {
  const GetPayedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              Icons.attach_money_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'get_paid',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

