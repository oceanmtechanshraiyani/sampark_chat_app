import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sampark_chat_app/Pages/Auth/Widgets/loginform.dart';
import 'package:sampark_chat_app/Pages/Auth/Widgets/signupform.dart';

class Authpagebody extends StatelessWidget {
  const Authpagebody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = false.obs;
    return Container(
      padding: EdgeInsets.all(20),
      // height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          isLogin.value = true;
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2.8,
                          child: Column(
                            children: [
                              Text(
                                "Login",
                                style: isLogin.value
                                    ? Theme.of(context).textTheme.bodyLarge
                                    : Theme.of(context).textTheme.labelLarge,
                              ),
                              SizedBox(height: 5),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 150),
                                height: 3,
                                width: isLogin.value ? 100 : 0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isLogin.value = false;
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2.8,
                          child: Column(
                            children: [
                              Text(
                                "Signup",
                                style: isLogin.value
                                    ? Theme.of(context).textTheme.labelLarge
                                    : Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: 5),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 150),
                                height: 3,
                                width: isLogin.value ? 0 : 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => isLogin.value ? Loginform() : Signupform(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
