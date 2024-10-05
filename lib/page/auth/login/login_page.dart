import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toastification/toastification.dart';
import 'package:unithub/components/app_text_field.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/screen_size_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';
import 'package:unithub/core/routes/app_routes.dart';
import 'package:unithub/gen/assets.gen.dart';
import 'package:unithub/page/auth/login/cubit/login_cubit.dart';
import 'package:unithub/page/auth/login/cubit/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final cubit = i<LoginCubit>();

  final formKey = GlobalKey<FormState>();

  final TextEditingController _emailC = TextEditingController();
  final TextEditingController _passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          bloc: cubit,
          listener: (context, state) {
            cubit.state.maybeWhen(
              orElse: () {},
              error: (exception, stackTrace, shouldPopPage) {
                toastification.show(
                  alignment: Alignment.bottomCenter,
                  context: context,
                  autoCloseDuration: const Duration(seconds: 3),
                  showProgressBar: false,
                  borderSide: const BorderSide(color: Colors.transparent),
                  type: ToastificationType.error,
                  backgroundColor: Colors.red,
                  applyBlurEffect: true,
                  style: ToastificationStyle.simple,
                  showIcon: false,
                  borderRadius: BorderRadius.circular(20),
                  closeButtonShowType: CloseButtonShowType.none,
                  title: Text(
                    exception.toString(), 
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ).centralized(),
                );
              },
              success: () {
                toastification.show(
                  alignment: Alignment.bottomCenter,
                  context: context,
                  autoCloseDuration: const Duration(seconds: 3),
                  showProgressBar: false,
                  type: ToastificationType.success,
                  applyBlurEffect: true,
                  style: ToastificationStyle.simple,
                  borderSide: const BorderSide(color: Colors.transparent),
                  backgroundColor: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  closeButtonShowType: CloseButtonShowType.none,
                  title: const Text(
                    "Login realizado com sucesso!", 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ).centralized(),
                );
                context.pushReplacementNamed(AppRoutes.navBar);
              },
            );
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  children: [
                    40.height(),
                    SvgPicture.asset(Assets.unithubYellow,
                        width: 91, height: 88),
                    15.height(),
                    const Text(
                      "Login",
                      style: TextStyle( fontSize: 50, fontWeight: FontWeight.w600),
                    ),
                    15.height(),
                    Container(
                      width: context.getWidth(),
                      decoration: BoxDecoration(
                        color: const Color(0xFF005EAB),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Assets.googleLoginPng.image(height: 55, width: 55),
                                    ),
                                    15.width(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Assets.appleLoginPng.image(height: 55, width: 55),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Divider(height: 1, color: Colors.white),
                              ),
                              const Text(
                                "E-mail",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              5.height(),
                              AppTextField(
                                controller: _emailC,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor, insira seu e-mail';
                                  }
                                  return null;
                                },
                                inputType: TextInputType.emailAddress,
                                prefixIcon: const Icon(Icons.email_outlined, size: 25),
                              ),
                              10.height(),
                              const Text(
                                "Senha",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              5.height(),
                              AppTextField(
                                controller: _passC,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor, insira sua senha';
                                  }
                                  return null;
                                },
                                inputType: TextInputType.visiblePassword,
                                prefixIcon: const Icon(Icons.lock_outline_rounded, size: 25),
                                isSecret: true,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    foregroundColor: Colors.black,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Esqueceu a senha?",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  backgroundColor: const Color(0xFFFDBC14),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
                                ),
                                onPressed: () {
                                  if(formKey.currentState?.validate() ?? false) {
                                    cubit.login(email: _emailC.text, password: _passC.text);
                                  }
                                },
                                child: SizedBox(
                                  height: 52,
                                  width: 131,
                                  child: state is LoadingLoginState
                                  ? const CircularProgressIndicator(color: Colors.white).centralized()
                                  : const Text(
                                    "Entrar",
                                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
                                  ).centralized()
                                ),
                              ).centralized(),
                              20.height(),
                              InkWell(
                                onTap: () => context.pushReplacementNamed(AppRoutes.register),
                                child: const Text(
                                  "Não possui uma conta? Cadastre-se!",
                                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                                ).centralized(),
                              ),
                              20.height(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ).centralized(),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailC.dispose();
    _passC.dispose();
    super.dispose();
  }
}
