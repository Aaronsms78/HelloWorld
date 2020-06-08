import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/auth/login/bloc.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/login/widgets/register_page.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 340,
      child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessage,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Palette.primaryColor,
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Palette.primaryColor,
                            textBaseline: TextBaseline.ideographic,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                                color: Palette.primaryColor, width: 2.5),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Palette.primaryColor, width: 2.5),
                          )),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<LoginBloc>()
                          .add(LoginEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<LoginBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid email',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Palette.primaryColor,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Palette.primaryColor,
                          textBaseline: TextBaseline.ideographic,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                              color: Palette.primaryColor, width: 2.5),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Palette.primaryColor, width: 2.5),
                        ),
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) => context
                          .bloc<LoginBloc>()
                          .add(LoginEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.bloc<LoginBloc>().state.password.value.fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) => 'Short password',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => context.bloc<LoginBloc>().add(
                              const LoginEvent.signInWithEmailAndPasswordPressed(),
                            ),
                        color: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      SizedBox(width: 40.0),
                      RaisedButton(
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          context.bloc<LoginBloc>().add(const LoginEvent
                              .registerWithEmailAndPasswordPressed());
                          Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterPage()));
                        },
                        color: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text("Forget password? Reset password"),
                ],
              ),
            );
          }),
    );
  }
}