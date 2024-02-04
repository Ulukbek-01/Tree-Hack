import 'package:flutter/material.dart';
import 'package:plants_app/screen/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  bool _isLoading = false;
  bool _isObscure = true;

  final _passwordController = TextEditingController();

  Future _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();

    // setState(() {
    //   _isLoading = true;
    // });
    // await Provider.of<UserData>(context, listen: false)
    //     .login(_authData['email']!, _authData['p[assword]']!);
    // if (!mounted) return;
    // if (Provider.of<UserData>(context, listen: false).user != null) {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, BottomNavBar.route, (route) => false);
    // }
    // setState(() {
    //   _isLoading = false;
    // });
    Navigator.of(context)
        .pushNamedAndRemoveUntil(BottomNavBar.route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100.w,
                      height: 80,
                    ),
                    Container(
                      width: 100.w,
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Welcome to TreeHack',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 16),
                          SizedBox(
                            width: 30.w,
                            child: Image.asset('assets/images/login_plant.png'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 85.w,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Color(0xfff0f0f0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          filled: true,
                          hintText: 'Email',
                          isDense: true,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          bool isValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);
                          if (!isValid || value.isEmpty) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['email'] = value!;
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 85.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xfff0f0f0),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => setState(() {
                              _isObscure = !_isObscure;
                            }),
                            icon: _isObscure
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          ),
                          filled: true,
                          hintText: 'Password',
                          isDense: true,
                        ),
                        obscureText: _isObscure,
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Please enter at least 6 letters';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['password'] = value!;
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () => _submit(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff3B7254),
                        foregroundColor: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: Size(85.w, 50),
                      ),
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
    );
  }
}
