import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_generic_api_response/extensions/safe_call_extensions.dart';
import 'package:flutter_generic_api_response/network/api_client.dart';
import 'package:flutter_generic_api_response/ui/page/login/login_page_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = LoginPageBloc(context.read<ApiClient>().userServices);

    const margin = 16.0;

    return BlocProvider(
      create: (_) => bloc,
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<LoginPageBloc, LoginPageState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state.isLoading,
                child: Padding(
                  padding: const EdgeInsets.all(margin),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _userNameController,
                        decoration: const InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                      const SizedBox(
                        height: margin,
                      ),
                      TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                      ),
                      const SizedBox(
                        height: margin,
                      ),
                      MaterialButton(
                          color: Colors.blue,
                          child: const Text("Login"),
                          onPressed: () {
                            bloc.add(LoginPageLoginAttempted(
                                _userNameController.text,
                                _passwordController.text));
                          }),
                      const SizedBox(
                        height: margin,
                      ),
                      if (bloc.state.status != null)
                        Text(
                          "Status\n${bloc.state.status?.getOrEmpty()}",
                          textAlign: TextAlign.center,
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
  }
}
