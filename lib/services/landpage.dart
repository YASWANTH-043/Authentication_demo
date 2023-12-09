import "package:authentication_demo/services/callpage.dart";
import "package:flutter/material.dart";

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController callIdController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 75, width: 75,
              child: TextFormField(
                controller: callIdController,
                decoration: const InputDecoration(
                  hintText: "please enter call ID: ",
                ),
              ),
            ),
            Container(height: 75, width: 75,
              child: TextFormField(
                controller: userIdController,
                decoration: const InputDecoration(
                  hintText: "please enter user ID: ",
                ),
              ),
            ),
            Container(height: 75, width: 75,
              child: TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(
                  hintText: "please enter user name: ",
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CallPage(callID: callIdController.text,
                              userID: userIdController.text, userName: userNameController.text,)));
                },
                child: const Text("Join the call"))
          ],
        ),
      ),
    );
  }
}
