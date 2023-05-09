import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sales_power/theme/app_colors.dart';
import 'package:sales_power/widgets/auht_footer.dart';
import 'package:flutter_svg/svg.dart';

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
                      color: AppColors.whiteColor,
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
              Flexible(fit: FlexFit.loose, child: AuthFooter())
            ]),
      ),
    );
  }
}

class _LoginFormWidget extends StatefulWidget {
  const _LoginFormWidget({Key? key,});

  @override
  State<_LoginFormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();



  void _auth() {
        final isValidForm = _formKey.currentState!.validate();
       
        if (isValidForm) {
         Navigator.of(context).pushReplacementNamed('/main');
        }
  }

  void _resetPass() {
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Anmelden',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _loginTextController,
            style: TextStyle(fontSize: 16),

            validator: (value) {
              if (value!.isEmpty) {
                return 'E-Mail-Adresse ist erforderlich';
              }
              if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return 'E-Mail-Adresse muss gültig sein';
              }
              return null;
            },
            decoration: const InputDecoration(
              errorStyle: TextStyle(
                height: 1,
              ),
              labelText: 'E-Mail-Adresse*',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: _passwordTextController,
            style: TextStyle(fontSize: 16),
            obscureText: true,
            validator:(value) {
              if (value!.isEmpty) {
                return 'Passwort wird benötigt';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Passwort*',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: _resetPass,
                child: const Text(
                  'Passwort vergessen?',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(38),
            ),
            onPressed: _auth,
            child: const Text(
              'Anmelden',
            ),
          ),
        ],
      ),
    );
  }
}

