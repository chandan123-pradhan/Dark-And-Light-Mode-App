import 'package:dark_and_ligh_mode_app/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.mainColor.value,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  themeController.changeMode();
                },
                child: Icon(
                  themeController.isDarkMode.value
                      ? Icons.toggle_on_outlined
                      : Icons.toggle_off_outlined,
                  color: themeController.iconColor.value,
                  size: 80,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                themeController.isDarkMode.value ? "Dark Mode" : "Light Mode",
                style: TextStyle(
                    color: themeController.iconColor.value, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
