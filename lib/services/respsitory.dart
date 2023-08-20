
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../provider/payment_historic_provider.dart';

class Repository{
  Future<void> fetchHistoricPayment(BuildContext context)async{
    PaymentHistoricProvider paymenthistoricprov =Provider.of(context,listen:false);
    await paymenthistoricprov.fetchPayment();
  }
  


  

}