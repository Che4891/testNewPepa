import 'dart:async';
import 'dart:io';
import 'package:env_flutter/env_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_colors.dart';
import 'package:flutter_application_1/widgets/auht_footer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/fone.jpeg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 24, 38, 0.8),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: SvgPicture.asset(
                      "assets/images/logo.svg", width: 130, //asset location
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(27, 30, 27, 25),
                    child: _LoginFormWidget(),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 20, 20, 20).withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: AuthFooter()
              )
            ]),
      ),
    );
  }
}

class _LoginFormWidget extends StatefulWidget {
  const _LoginFormWidget({super.key});

  @override
  State<_LoginFormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    void _getEnv () async {
      await dotenv.load();

  String foo = dotenv.get('ESCAPED_DOLLAR_SIGN');
  print(foo);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Anmelden',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          style: TextStyle(fontSize: 16),
          decoration: InputDecoration(
            labelText: 'E-Mail-Adresse*',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFormField(
          style: TextStyle(fontSize: 16),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Passwort*',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Passwort vergessen?',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(38),
          ),
          onPressed: _getEnv,
          child: const Text(
            'Anmelden',
          ),
        ),
      ],
    );
  }
}



