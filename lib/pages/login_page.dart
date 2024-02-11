import 'package:ecommerceproject/pages/main_page_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedEmailField(),
              const SizedBox(
                height: 20,
              ),
              AnimatedPasswordField(),
              const SizedBox(
                height: 20,
              ),
              AnimatedLoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedEmailField extends StatefulWidget {
  @override
  _AnimatedEmailFieldState createState() => _AnimatedEmailFieldState();
}

class _AnimatedEmailFieldState extends State<AnimatedEmailField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: _isFocused ? Colors.blue : Colors.black),
        ),
      ),
      onChanged: (value) {
        setState(() {});
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          _isFocused = false;
        });
      },
    );
  }
}

class AnimatedPasswordField extends StatefulWidget {
  @override
  _AnimatedPasswordFieldState createState() => _AnimatedPasswordFieldState();
}

class _AnimatedPasswordFieldState extends State<AnimatedPasswordField> {
  bool _isFocused = false;
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscured,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: _isFocused ? Colors.blue : Colors.black),
        ),
      ),
      onChanged: (value) {
        setState(() {});
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          _isFocused = false;
        });
      },
    );
  }
}

class AnimatedLoginButton extends StatefulWidget {
  @override
  _AnimatedLoginButtonState createState() => _AnimatedLoginButtonState();
}

class _AnimatedLoginButtonState extends State<AnimatedLoginButton> with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isPressed
          ? null
          : () {
              setState(() {
                _isPressed = true;
              });
              _controller.forward().whenComplete(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              });
            },
      child: _isPressed
          ? CircularProgressIndicator()
          : Text('Login'),
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
      // onPressed: () {
      //   setState(() {
      //     _isPressed = !_isPressed;
      //   });
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => const MainPage()),
      //   );
      // },
      // child: _isPressed ? CircularProgressIndicator() : Text('Login'),
      // style: ElevatedButton.styleFrom(
      //   elevation: 5,
      //   animationDuration: Duration(milliseconds: 300),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      // ),

 
