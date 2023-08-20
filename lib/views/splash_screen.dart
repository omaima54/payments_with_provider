
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payments_with_provider/payment_status/payment_status.dart';
import 'package:payments_with_provider/services/respsitory.dart';





class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Repository repository = Repository();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_callApi);
  }

  _goToNextPage() {
    Navigator.of(context).pushReplacement(CupertinoPageRoute(
      builder: (_) => const PaymentStatusScreen(),
    ));
  }

  _callApi(_) {

    repository.fetchHistoricPayment(context);
    _goToNextPage();


  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.red,
    );
  }
}
