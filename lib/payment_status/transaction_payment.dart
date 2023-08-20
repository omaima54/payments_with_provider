
import 'package:flutter/material.dart';
import 'package:payments_with_provider/models/payment_historic.dart';
import 'package:provider/provider.dart';

import '../../provider/payment_historic_provider.dart';

class TransactionPaymentHistory extends StatefulWidget {
  const TransactionPaymentHistory({super.key});

  @override
  State<TransactionPaymentHistory> createState() => _TransactionPaymentHistoryState();
}

class _TransactionPaymentHistoryState extends State<TransactionPaymentHistory> {
  @override
  Widget build(BuildContext context) {

    return Consumer<PaymentHistoricProvider>(
        builder: (_, PaymentHistoricProvider prov, __)
        {
          if (prov.payementhistoric.isEmpty) {
            return const Center(child: Text('No Data'));
          }
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: prov.payementhistoric.length,
            itemBuilder: (BuildContext context, index) {
            PaymentHistoric payments =prov.payementhistoric[index];
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Icon(
                          // en cours de validation
                          Icons.check_circle,
                          color: Colors.blue,
                        )),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            payments.state,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            payments.date.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${payments.amount} DH',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          );

        });
  }
}
