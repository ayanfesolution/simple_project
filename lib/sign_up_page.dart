import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_project/loader.dart';
import 'package:simple_project/provide_more_infos.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email address.';
                  }
                  // You can add more complex email validation logic if needed.
                  return null;
                },
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                   if (_formKey.currentState!.validate()) {
      CXLoader.show(context);
      bool result = await ref.read(provider.n).preference;
       bool resultTwo = await ref.read(provider.n);
      CXLoader.hide();
    if (result != null && resultTwo != Null ) {
      Navigator.popAndPushNamed(context, MoreInfoPrince(email: '',));
    }
    }
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
