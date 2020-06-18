import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/bloc.dart';
import 'package:helloworld/presentation/sign_up/widgets/header.dart';
import 'package:helloworld/presentation/sign_up/widgets/next_button_to_profile.dart';
import 'package:helloworld/presentation/sign_up/widgets/register_account_form.dart';
import 'package:helloworld/presentation/sign_up/widgets/register_steps_indicator.dart';

import '../../injection.dart';

class RegisterAccountMentorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: BlocProvider(
        create: (context) => getIt<RegisterAccountBloc>(param1: true),
        child: SingleChildScrollView(
          child: BlocBuilder<RegisterAccountBloc, RegisterAccountState>(
              builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessage,
              child: Column(
                children: <Widget>[
                  const RegisterStepsIndicator(
                    imagePath: 'assets/images/mentor_step1.png',
                    height: 100,
                    width: 300,
                  ),
                  RegisterAccountForm(
                    icon: Icons.perm_identity,
                    labelText: 'Full Name',
                    onChanged: (value) => context
                        .bloc<RegisterAccountBloc>()
                        .add(RegisterAccountEvent.nameChanged(value)),
                    validator: (_) => context
                        .bloc<RegisterAccountBloc>()
                        .state
                        .name
                        .value
                        .fold(
                          (fail) => fail.maybeMap(
                              emptyField: (_) => 'Field cannot be empty.',
                              orElse: () => null),
                          (_) => null,
                        ),
                    initialField: 'Aaron Saw',
                  ),
                  RegisterAccountForm(
                    initialField: 'Aaron Saw',
                    icon: Icons.visibility,
                    iconOnPressed: () => context
                        .bloc<RegisterAccountBloc>()
                        .add(const RegisterAccountEvent.obscureTextClicked()),
                    labelText: 'Password',
                    onChanged: (value) => context
                        .bloc<RegisterAccountBloc>()
                        .add(RegisterAccountEvent.passwordChanged(value)),
                    validator: (_) => context
                        .bloc<RegisterAccountBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (fail) => fail.maybeMap(
                              shortPassword: (_) =>
                                  'Password must be at least 8 characters.',
                              emptyField: (_) => 'Field cannot be empty.',
                              orElse: () => null),
                          (_) => null,
                        ),
                    obscureText: state.obscureText,
                  ),
                  RegisterAccountForm(
                    initialField: 'Aaron Saw',
                    icon: Icons.visibility,
                    iconOnPressed: () => context
                        .bloc<RegisterAccountBloc>()
                        .add(const RegisterAccountEvent.obscureTextClicked()),
                    labelText: 'Confirm Password',
                    onChanged: (value) => context
                        .bloc<RegisterAccountBloc>()
                        .add(
                            RegisterAccountEvent.confirmPasswordChanged(value)),
                    validator: (_) {
                      final currState =
                          context.bloc<RegisterAccountBloc>().state;
                      final String mismatchText =
                          currState.confirmPassword != currState.password
                              ? 'Password does not match.'
                              : null;
                      return currState.confirmPassword.value.fold(
                        (fail) => fail.maybeMap(
                            emptyField: (_) => 'Field cannot be empty.',
                            orElse: () => mismatchText),
                        (_) => mismatchText,
                      );
                    },
                    obscureText: state.obscureText,
                  ),
                  RegisterAccountForm(
                    initialField: 'aaronsaw78@gmail.com',
                    icon: Icons.email,
                    labelText: 'Email Address',
                    onChanged: (value) => context
                        .bloc<RegisterAccountBloc>()
                        .add(RegisterAccountEvent.emailChanged(value)),
                    validator: (_) => context
                        .bloc<RegisterAccountBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid email',
                            emptyField: (_) => 'Field cannot be empty.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  RegisterAccountForm(
                    initialField: '19',
                    icon: Icons.calendar_today,
                    labelText: 'Age',
                    textInputType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) => context
                        .bloc<RegisterAccountBloc>()
                        .add(RegisterAccountEvent.ageChanged(value)),
                    validator: (_) => context
                        .bloc<RegisterAccountBloc>()
                        .state
                        .age
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidAge: (_) => 'You need to be at least 18.',
                            emptyField: (_) => 'Field cannot be empty.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const Text(
                    "Note: To be a mentor, you need to be at least 18 years old!",
                    style: TextStyle(
                      height: 1.2,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Martel Sans',
                      fontSize: 12,
                    ),
                  ),
                  const NextButtonToProfile(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
