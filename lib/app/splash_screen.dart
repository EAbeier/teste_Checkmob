import 'package:avaliacao_checkmob/app/utils/constants.dart';
import 'package:avaliacao_checkmob/app/utils/routes/main_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then(
      (_) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appName,
              style: Theme.of(context).textTheme.headline1,
            ),
            const Icon(Icons.list)
          ],
        ),
      ),
    );
  }
}
