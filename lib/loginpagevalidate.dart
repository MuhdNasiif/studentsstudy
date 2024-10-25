import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statefull_start/newhome.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Image(image: AssetImage("asset/Screenshot (216).png")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login Or Register To Book",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const Text(
                      "Your Appointments",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                     TextFormField(
                      controller: _emailcontroller,
                      validator: (value) {
                    if (value!.contains("@")&&value.contains(".")) {
                      return null;
                    }
                    return 'enter include "@" "." email';
                    },
                  autovalidateMode: AutovalidateMode.disabled,
                      decoration: const InputDecoration(
                        labelText: "Enter Your Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller:_passcontroller ,
                    validator: (value) {
                    if (value!.length<8) {
                      return 'minimum 8 characters required';
                    }
                    return null;
                  },
                      autovalidateMode: AutovalidateMode.disabled,
                      decoration: const InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const NewHomePage()));

                            _emailcontroller.clear();
                            _passcontroller.clear();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 1, 104, 4),
                              borderRadius: BorderRadius.circular(5)),
                          height: 40,
                          width: double.infinity,
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:50,
                    ),
                    const Center(
                        child: Text(
                            "By creating or logging into an account you are agreeing \n     with our Terms and Conditions and Privacy policy")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    
    );
    
  }
  
}