
import 'package:flutter/cupertino.dart';
import 'package:payments_with_provider/models/payment_historic.dart';

import '../services/payment_historic_api.dart';



class PaymentHistoricProvider with ChangeNotifier{
    List<PaymentHistoric> _hostoricpaymentModel= [];
  final PaymentHistoricApi _paymenthistoricapi=PaymentHistoricApi();
  List<PaymentHistoric> get   payementhistoric=>_hostoricpaymentModel;
  set payementhistoric(List<PaymentHistoric> paymenthistoric){
    _hostoricpaymentModel=paymenthistoric;
    notifyListeners();
  }
  Future<List<PaymentHistoric>> fetchPayment()async{
    return payementhistoric = await _paymenthistoricapi.fetchHistoricPayment() ;

  }
}

