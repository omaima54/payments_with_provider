
import 'package:http/http.dart';

import 'package:payments_with_provider/models/payment_historic.dart';





class PaymentHistoricApi{

  final Client _client = Client();

  Future<List<PaymentHistoric>> fetchHistoricPayment() async {
    var uri = Uri.parse("http://10.0.2.2:5500/assets/payment_historic.json");
    Response response= await _client.get(uri);

    if(response.statusCode==200){
      print('goood');
      return  paymentHistoricFromJson(response.body);

    }
    print('not goood');

    return List.empty();

  }
 

  }









