import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zeekademy/utils/ApiHandler.dart';
import 'package:get/get.dart';
import 'package:zeekademy/widgets/customAppBar.dart';
import 'widgets/TiledList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(),
        body: screenChildren[_currentIndex],
        bottomNavigationBar: customBottomNavigationBar(_currentIndex),
      ),
    );
  }



  customBottomNavigationBar(int currentIndex) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: currentIndex==0 ? const Icon(IconlyBold.home, color: Color(0xff7000FF)): const Icon(IconlyLight.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: currentIndex==1 ? const Icon(IconlyBold.user_3, color: Color(0xff7000FF)): const Icon(IconlyLight.user),
          label: 'People',
        ),
        BottomNavigationBarItem(
          icon: currentIndex==2 ?const Icon(IconlyBold.plus, color: Color(0xff7000FF)) : const Icon(IconlyLight.plus),
          label: 'Create',
        ),
        BottomNavigationBarItem(
          icon: currentIndex==3 ? const Icon(IconlyBold.user_2, color: Color(0xff7000FF)) : const Icon(IconlyLight.user),
          label: 'Activities',
        ),
        BottomNavigationBarItem(
          icon: currentIndex==4 ? const Icon(IconlyBold.user_3, color: Color(0xff7000FF)) : const  Icon(IconlyLight.user),
          label: 'Profile',
        ),
      ],
      selectedItemColor: const Color(0xff7000FF),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });

      },
      currentIndex: _currentIndex,
    );
  }
}


