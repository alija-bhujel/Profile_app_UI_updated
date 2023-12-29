import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprofile/components/logout.dart';

import 'package:myprofile/components/profilelist.dart';
import 'package:myprofile/components/socialmedialist.dart';
import 'package:myprofile/pages/settingspage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/sun.png'),
                    fit: BoxFit.cover)),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 20,
                ),
              ),
              Container(
                width: 330,
                height: 700,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          color: Colors.blueGrey,
                          spreadRadius: 4)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blueGrey,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage('assets/images/idcard.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Alija Bhujel',
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey),
                          onPressed: () {},
                          child: Text(
                            'Edit profile',
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const Profilelist_Builder(
                        text: "Contact", icon: Icons.phone),
                    const Profilelist_Builder(text: "Gmail", icon: Icons.mail),
                    const Profilelist_Builder(
                      text: "Gender",
                      icon: Icons.account_circle_rounded,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsPage()));
                      },
                      child: Profilelist_Builder(
                          text: "Settings", icon: Icons.settings),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SocialmediaList(),
                    const SizedBox(
                      height: 18,
                    ),
                    Logout()
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ])));
  }
}
