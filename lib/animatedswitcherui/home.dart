import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: AnimatedSwitcherUi(),
    debugShowCheckedModeBanner: false,
  ));
}

class AnimatedSwitcherUi extends StatefulWidget {
  const AnimatedSwitcherUi({super.key});

  @override
  State<AnimatedSwitcherUi> createState() => _AnimatedSwitcherUiState();
}

class _AnimatedSwitcherUiState extends State<AnimatedSwitcherUi> {
  final String bgimg =
      'https://images.unsplash.com/photo-1668388734984-7ebba294aea3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';
  late bool formvisible;
  int? formsindex;

  @override
  void initState() {
    super.initState();
    formvisible = false;
    formsindex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(bgimg), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black54,
                child: Column(
                  children: [
                    const SizedBox(
                      height: kToolbarHeight + 40,
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Welcome to login app',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          onPressed: () {
                            setState(() {
                              formsindex = 1;
                              formvisible = true;
                            });
                          },
                          child: const Text('Login'),
                        )),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              formsindex = 2;
                              formvisible = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade700,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                          child: const Text("Signup"),
                        )),
                        const SizedBox(
                          width: 10.0,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.google),
                      label: const Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.green),
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: (!formvisible)
                    ? null
                    : Container(
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      formsindex = 1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: formsindex == 1
                                          ? Colors.red
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0))),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: formsindex == 1
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      formsindex = 2;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: formsindex == 2
                                          ? Colors.deepPurpleAccent
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0))),
                                  child: Text(
                                    'SignUp',
                                    style: TextStyle(
                                        color: formsindex == 2
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        formvisible = false;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.clear,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Container(
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                child: formsindex == 1
                                    ? const LoginForm()
                                    : const SignUpForm(),
                              ),
                            )
                          ],
                        ),
                      ),
              )
            ],
          )),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), color: Colors.white),
      child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: [
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Enter email', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Enter Password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), color: Colors.white),
      child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: [
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Enter email', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Enter Password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Confirm Password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onPressed: () {},
              child: const Text(
                'SignUp',
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
    );
  }
}
