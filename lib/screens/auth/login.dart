import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(36, 45, 67, 1),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 125),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100), border: Border.all(style: BorderStyle.solid)),
                    child: const Center(
                      child: Image(
                        image: AssetImage('assets/images/dealflow_sm.png'),
                        width: 100,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: Text(
                      'DEALFLOW',
                      style: theme.textTheme.headline6!.copyWith(fontFamily: 'Azonix', color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        //gapPadding: 4.0,
                      ),
                      prefixIcon: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: 2, color: Colors.grey)),
                            child: const Icon(
                              Icons.person,
                              color: Colors.black54,
                            ),
                          )),
                      labelText: 'Username'),
                )),
            const SizedBox(height: 40),
            Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        //gapPadding: 4.0,
                      ),
                      prefixIcon: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: 2, color: Colors.grey)),
                            child: const Icon(
                              Icons.lock,
                              color: Colors.black54,
                            ),
                          )),
                      labelText: 'Password'),
                )),
            const SizedBox(height: 40),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0))),
                ),
                child: SizedBox(
                    //margin: const EdgeInsets.only(left: 30, right: 30),
                    width: 300,
                    height: 45,
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: theme.textTheme.bodyText1!.copyWith(),
                      ),
                    ))),
            const SizedBox(height: 70),
            Center(
              child: Text('Powered by CoreLogic', style: theme.textTheme.bodyText2!.copyWith()),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 50,
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var width = size.width;
    var height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, height);
    path.quadraticBezierTo(width * 0.5, height * 0.6, width, height);

    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
