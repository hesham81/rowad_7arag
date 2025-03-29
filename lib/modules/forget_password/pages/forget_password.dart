import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rowad_7arag/core/constant/app_assets.dart';
import 'package:rowad_7arag/core/extensions/align.dart';
import 'package:rowad_7arag/core/extensions/alignment.dart';
import 'package:rowad_7arag/core/extensions/extensions.dart';
import 'package:rowad_7arag/core/theme/app_colors.dart';
import 'package:rowad_7arag/core/widget/custom_elevated_button.dart';

import '../../../core/widget/custom_text_form_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75),
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      AppAssets.coloredLogo,
                    ).center,
                    0.02.height.hSpace,
                    Text(
                      "هل نسيت كلمة السر",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                    ).center,
                    0.01.height.hSpace,
                    Text(
                      "أدخل عنوان البريد الاليكتروني لاستعادة كلمة المرور الخاصة بك ",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.blueColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                    ).center,
                    0.03.height.hSpace,
                    Column(
                      children: [
                        Text(
                          "البريد الليكتروني",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: AppColors.blueColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                        ).rightBottomWidget().hPadding(0.05.width),
                        0.02.height.hSpace,
                        CustomTextFormField(
                          controller: emailController,
                          hintText: " ",
                        ).hPadding(0.03.width),
                        0.02.height.hSpace,
                        CustomElevatedButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.1.width,
                            vertical: 0.02.height,
                          ),
                          borderRadius: 50,
                          onPressed: () {},
                          child: Text(
                            "استعد كلمة السر",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                          ),
                        ),
                      ],
                    ).hPadding(0.05.width),
                    0.1.height.hSpace,
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            "العودة إلي الصفحة السابقة",
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                          ),
                        ],
                      ).hPadding(0.05.width),
                    ),
                    0.1.height.hSpace,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
