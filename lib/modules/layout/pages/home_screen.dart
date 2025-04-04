import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rowad_7arag/modules/layout/widget/about.dart';
import 'package:rowad_7arag/modules/layout/widget/reviews.dart';
import 'package:rowad_7arag/modules/layout/widget/special_ads_widget.dart';
import '/modules/layout/widget/categories.dart';
import '/core/extensions/align.dart';
import '/core/constant/app_assets.dart';
import '/core/extensions/extensions.dart';
import '/core/theme/app_colors.dart';
import '/modules/layout/widget/upper_bar.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  bool _isVideoInitialized = false; // Track video initialization status

  TextEditingController searchController = TextEditingController();
  List<String> labels = [
    "تسجيل خروج",
    "حسابي",
    "تواصل مع الدعم",
    "الخطط",
    "أضف اعلان",
    "رفع ايصالات التحويل",
    "جميع الفئات",
    "المدونات",
    "الصفحة الرئيسية",
  ];
  List<String> ads = [
    "assets/images/adds/1.png",
    "assets/images/adds/2.png",
    "assets/images/adds/3.png",
    "assets/images/adds/4.png",
    "assets/images/adds/5.png",
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://rowad-harag.com/public/uploads/all/zxMmVMJLPhdgIdGmT2ccLXxm89VjD5Qu2U3akNOu.mp4',
      ),
    );

    _controller.initialize().then((_) {
      setState(() {
        _isVideoInitialized = true;
      });
      _controller.setLooping(true);
      _controller.play();
    });
  }

  @override
  void dispose() {
    // Dispose of the video player controller to free resources
    _controller.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> categories = [
    {
      'title': 'سيارات',
      'image': 'assets/images/categories/cars.svg',
    },
    {
      'title': 'عقارات',
      'image': 'assets/images/categories/3ekarat.svg',
    },
    {
      'title': 'أثاث',
      'image': 'assets/images/categories/asas.svg',
    },
    {
      'title': 'أطعمه ومشروبات',
      'image': 'assets/images/categories/drinks.svg',
    },
    {
      'title': 'كل الحراج',
      'image': 'assets/images/categories/all_7erag.svg',
    },
    {
      'title': 'ملابس',
      'image': 'assets/images/categories/clothes.svg',
    },
    {
      'title': 'إكسسوارات ',
      'image': 'assets/images/categories/accessories.svg',
    },
    {
      'title': 'خدمات ',
      'image': 'assets/images/categories/services.svg',
    },
    {
      'title': 'نظافة ',
      'image': 'assets/images/categories/cleaning.svg',
    },
    {
      'title': 'برمجة وتصميم ',
      'image': 'assets/images/categories/programing.svg',
    },
    {
      'title': 'الاجهزة',
      'image': 'assets/images/categories/devices.svg',
    },
    {
      'title': 'مكتبة وفنون',
      'image': 'assets/images/categories/libraries.svg',
    },
    {
      'title': 'الوظائف',
      'image': 'assets/images/categories/jobs.svg',
    },
    {
      'title': 'مستلزمات شخصية',
      'image': 'assets/images/categories/personal.svg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Color(0xff0AB28F),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xff7AD7C4),
              size: 30,
            ),
            label: 'الصفحة الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
              color: Color(0xff7AD7C4),
            ),
            label: 'المفضلة',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff0AB28F),
        shape: CircleBorder(
          side: BorderSide(
            color: Color(0xffE3F1EE),
            width: 3,
          ),
        ),
        child: Icon(
          Icons.add,
          size: 35,
          color: Color(0xff7AD7C4),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              AppAssets.upperNav,
              fit: BoxFit.cover,
            ),
            Container(
              color: AppColors.primaryColor,
              child: UpperBar(),
            ),
            Container(
              height: 0.05.height,
              color: AppColors.primaryColor,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      labels[index],
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.primaryColor,
                          ),
                    ),
                  ).allPadding(3),
                ),
                separatorBuilder: (context, index) => 0.01.width.vSpace,
                itemCount: labels.length,
              ),
            ).hPadding(0.01.width),
            Container(
              width: double.maxFinite,
              color: AppColors.primaryColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    SizedBox(
                      width: 1.width, // Full screen width
                      child: Divider(
                        color: Colors.black,
                        thickness: 1, // Optional: Adjust thickness if needed
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.snbBank,
                        ),
                        Text(
                          "01400028419910 ",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: AppColors.secondaryColor,
                                    fontSize: 10,
                                  ),
                        ),
                        0.01.width.vSpace,
                        Text(
                          "رقم الحساب المصر في ",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: AppColors.secondaryColor,
                                    fontSize: 10,
                                  ),
                        ),
                        0.01.width.vSpace,
                        Text(
                          "البنك الأهلي",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: AppColors.blueColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                        ),
                      ],
                    ).hPadding(0.01.width),
                  ],
                ),
              ),
            ),
            0.01.height.hSpace,
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 0.23.height,
                    child: _isVideoInitialized
                        ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          )
                        : Center(
                            child: Container(
                              width: double.maxFinite,
                              height: 0.23.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                              child: CircularProgressIndicator(
                                color: AppColors.secondaryColor,
                              ).center,
                            ),
                          ),
                  ),
                  // Play/Pause Button
                  if (_isVideoInitialized)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 30,
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                ],
              ),
            ).hPadding(0.02.width),
            0.01.height.hSpace,
            SizedBox(
              height: 0.15.height,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Categories(
                  path: categories[index]['image'],
                  text: categories[index]['title'],
                ),
                separatorBuilder: (context, index) => 0.01.width.vSpace,
                itemCount: 10,
              ),
            ),
            CarouselSlider(
              items: ads.map((e) => Image.asset(e)).toList(),
              options: CarouselOptions(
                initialPage: 0,
                height: 0.4.height,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SpecialAdsWidget(
              title: "إعلانات مميزة",
            ).hPadding(0.03.width),
            0.01.height.hSpace,
            SpecialAdsWidget(
              title: 'إعلانات ذوي الاحتياجات الخاصة',
            ).hPadding(0.03.width),
            0.01.height.hSpace,
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SvgPicture.asset(
                "assets/images/click_here.svg",
              ),
            ).hPadding(0.03.width),
            0.01.height.hSpace,
            About().hPadding(0.03.width),
            0.01.height.hSpace,
            Reviews().hPadding(0.03.width),
            0.01.height.hSpace,

          ],
        ),
      ),
    );
  }
}
