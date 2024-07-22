import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/layout/grid_layout.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/home/widgets/home_drawer_widget.dart';
import 'package:karngea4u/features/home/widgets/home_grid_container_widget.dart';
import 'package:karngea4u/features/home/widgets/home_widget_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    final List<HomeWidgetModel> homeList = CDummyData.homeWidgetList(context);

    return Scaffold(
      drawer: const HomeDrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: CColors.primaryColor),
        title: Text(
          'HOME',
          style: Theme.of(context).textTheme.titleMedium!,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              color: CColors.primaryColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: CColors.primaryColor,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Image(
              height: 60,
              width: width * .3,
              image: const AssetImage(
                CImageString.appLogo,
              ),
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwItem),
          SizedBox(
            height: height * .38,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
              child: CGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GridContainerWidget(
                    index: index,
                    widget: homeList[index],
                    width: width,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwItem),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Image(
              height: height * .2,
              // width: width * .4,
              image: const AssetImage(
                CImageString.homeBgImage,
              ),
              fit: BoxFit.contain,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Text(
              'Version 1.0.0',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: CColors.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
