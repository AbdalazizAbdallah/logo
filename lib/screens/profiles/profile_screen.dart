import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logo/utils/app_colors.dart';

import 'app_bar_widget.dart';
import 'text_form_field_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarCustom(
        title: 'Mark stephane',
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.h,
              ),
              SizedBox.square(
                dimension: 120.r,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60.w,
                      backgroundColor: AppColors.darkGreen,
                      child: CircleAvatar(
                        radius: 50.w,
                        backgroundImage: const NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: AppColors.darkGreen,
                        radius: 16.w,
                        child: CircleAvatar(
                          radius: 12.w,
                          backgroundColor: AppColors.white,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              size: 15,
                              color: AppColors.darkGreen,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldCustom(
                textEditingController: TextEditingController(),
                hintText: 'appeler',
              ),
              TextFormFieldCustom(
                textEditingController: TextEditingController(),
                hintText: 'téléphone',
                textInputType: TextInputType.phone,
              ),
              TextFormFieldCustom(
                textEditingController: TextEditingController(),
                hintText: 'Casablanca',
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 50.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Changer mot de passe'),
              ),
              SizedBox(
                height: 55.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home_screen');
                },
                child: const Text('Entrée'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}