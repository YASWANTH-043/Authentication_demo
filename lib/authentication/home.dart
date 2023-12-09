import 'package:authentication_demo/services/landpage.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("HomeScreen"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LandingPage()));
              },
              icon: const Icon(Icons.call)),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<ProfileScreen>(
                      builder: (context) => ProfileScreen(
                            appBar: AppBar(
                              title: const Text("My Profile"),
                            ),
                            actions: [
                              SignedOutAction((context) {
                                Navigator.of(context).pop();
                              })
                            ],
                            children: [
                              const Divider(),
                              Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.asset(
                                        'assets/flutterfire_300x.png'),
                                  )),
                            ],
                          )));
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/dash.png'),
            Text(
              'Welcome!',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 30,
            ),
            const SignOutButton(),
            const SizedBox(
              height: 30,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context)=> const App()),
            //   );
            // },
            // child: const Text("Meetup home page"))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Call",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: "Share",
            ),
          ]),
    );
  }
}
