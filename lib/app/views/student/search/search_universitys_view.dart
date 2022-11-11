import 'package:flutter/material.dart';
import 'package:schooltech/app/views/components/card_outline_border.dart';
import 'package:schooltech/app/views/components/switch_theme.dart';

class SearchUniversity extends StatefulWidget {
  const SearchUniversity({super.key});

  @override
  State<SearchUniversity> createState() => _SearchUniversityState();
}

class _SearchUniversityState extends State<SearchUniversity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 177, 136),
        title: const Text(
          'Search Universitys',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        actions: [SwitchThemeButton()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 30),
          child: Container(
              child: Column(
            children: [
              Text(
                'Universitys',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search here...',
                ),
                keyboardType: TextInputType.text,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 50,
              ),
              CardOutlineBorder(
                title: 'Furb',
                subtitle: 'Blumenau \nR.São Paulo',
                sizeTitle: 20,
                sizeSubtitle: 18,
                route: "",
              )
            ],
          )),
        ),
      ),
    );
  }
}