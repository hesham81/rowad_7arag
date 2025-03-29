import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:rowad_7arag/core/extensions/alignment.dart';
import 'package:rowad_7arag/core/widget/custom_elevated_button.dart';
import 'package:rowad_7arag/core/widget/custom_text_button.dart';
import 'package:rowad_7arag/core/widget/custom_text_form_field.dart';
import 'package:rowad_7arag/modules/forget_password/pages/forget_password.dart';
import 'package:rowad_7arag/modules/layout/pages/home_screen.dart';
import 'package:rowad_7arag/modules/sign_up/pages/sign_up.dart';
import '/core/constant/app_assets.dart';
import '/core/extensions/align.dart';
import '/core/extensions/extensions.dart';
import '/core/theme/app_colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
                    0.01.height.hSpace,
                    Text(
                      "مرحبا بك  في رواد حراج",
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ).center,
                    0.01.height.hSpace,
                    Text(
                      "تسجيل الدخول إلي حسابك",
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: AppColors.blueColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ).center,
                    0.01.height.hSpace,
                    CustomTextFormField(
                      hintText: "البريد الالكتروني",
                      controller: TextEditingController(),
                    ),
                    0.03.height.hSpace,
                    CustomTextFormField(
                      hintText: "كلمة المرور",
                      controller: TextEditingController(),
                      isPassword: true,
                      suffixIcon: Icons.remove_red_eye_outlined,
                    ),
                    0.01.height.hSpace,
                    Row(
                      children: [
                        CustomTextButton(
                          text: " هل نسيت كلمة المرور ؟",
                          onPressed: () => slideLeftWidget(
                            newPage: ForgetPassword(),
                            context: context,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "تذكرني",
                              style: theme.textTheme.titleMedium!.copyWith(
                                color: AppColors.blueColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            Radio(
                              value: "value",
                              groupValue: "groupValue",
                              onChanged: (value) {},
                              fillColor: WidgetStatePropertyAll(
                                AppColors.secondaryColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    0.04.height.hSpace,
                  ],
                ).hPadding(0.02.width),
              ),
            ),
            0.02.height.hSpace,
            CustomElevatedButton(
              padding: EdgeInsets.symmetric(
                horizontal: 0.1.width,
                vertical: 0.02.height,
              ),
              borderRadius: 50,
              onPressed: () => slideLeftWidget(
                newPage: HomeScreen(),
                context: context,
              ),
              child: Text(
                "تسجيل الدخول",
                style: theme.textTheme.titleMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            0.05.height.hSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  text: "سجل الأن",
                  btnColor: AppColors.secondaryColor,
                  onPressed: () => slideLeftWidget(
                    newPage: SignUp(),
                    context: context,
                  ),
                ),
                0.01.width.vSpace,
                Text(
                  "ليس لديك حساب ؟",
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: AppColors.blueColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ).center,
              ],
            ).hPadding(0.03.width),
            0.03.height.hSpace,
            Text(
              "الدخول كزائر",
              style: theme.textTheme.titleMedium!.copyWith(
                color: AppColors.blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ).rightBottomWidget().hPadding(0.03.width)
          ],
        ),
      ),
    );
  }
}
