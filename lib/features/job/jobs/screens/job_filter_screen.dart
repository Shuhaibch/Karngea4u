import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/drop_down/drop_down_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/jobs/widget/job_filter_radio_button_widget.dart';
import 'package:karngea4u/features/job/jobs/widget/job_filter_title_widget.dart';

class JobFilterScreen extends StatefulWidget {
  const JobFilterScreen({super.key});

  @override
  State<JobFilterScreen> createState() => _JobFilterScreenState();
}

class _JobFilterScreenState extends State<JobFilterScreen> {
  String? locationValue;
  String? categoryValue;
  String? jobTypeValue;
  String? levelValue;
  String? salaryValue;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    return Scaffold(
      backgroundColor: CColors.primaryColor,
      appBar: CAppbar(
        showBackArrow: true,
        dividerColor: CColors.secondaryColor,
        title: Text(
          "Advanced Filter",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: Column(
              children: [
                const JobFilterTitleWidget(icon: Iconsax.sort, title: "Filter"),
                // SizedBox(height: CSizes.sm),
                CDropDownFeild(
                    icon: Icons.pin_drop,
                    hintText: 'Location',
                    value: locationValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        locationValue = newValue!;
                      });
                    },
                    items: CDummyData.locationList()),
                // SizedBox(height: CSizes.sm),
                CDropDownFeild(
                    icon: Icons.dashboard,
                    hintText: 'Categorirs',
                    value: categoryValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        categoryValue = newValue!;
                      });
                    },
                    items: CDummyData.categoryList()),

                //* JOb Type
                const SizedBox(height: CSizes.spaceBtwItem),

                const JobFilterTitleWidget(
                    icon: Iconsax.building, title: "Job Type"),
                Row(
                  children: [
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Full Time',
                        groupValue: jobTypeValue,
                        onChanged: (value) {
                          setState(() {
                            jobTypeValue = value;
                          });
                        },
                        title: "Full Time",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Part Time',
                        groupValue: jobTypeValue,
                        onChanged: (value) {
                          setState(() {
                            jobTypeValue = value;
                          });
                        },
                        title: "Part Time",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Contract',
                        groupValue: jobTypeValue,
                        onChanged: (value) {
                          setState(() {
                            jobTypeValue = value;
                          });
                        },
                        title: "Contract",
                      ),
                    ),
                  ],
                ),
                JobRadioButtonWidget(
                  value: 'Internship',
                  groupValue: jobTypeValue,
                  onChanged: (value) {
                    setState(() {
                      jobTypeValue = value;
                    });
                  },
                  title: "Internship",
                ),
                const SizedBox(height: CSizes.spaceBtwItem),

                //* JOB LEVEL
                const JobFilterTitleWidget(
                    icon: Iconsax.trend_up, title: "Job Level"),

                Row(
                  children: [
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Entry Level',
                        groupValue: levelValue,
                        onChanged: (value) {
                          setState(() {
                            levelValue = value;
                          });
                        },
                        title: "Entry Level",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Junior',
                        groupValue: levelValue,
                        onChanged: (value) {
                          setState(() {
                            levelValue = value;
                          });
                        },
                        title: "Junior",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Senior',
                        groupValue: levelValue,
                        onChanged: (value) {
                          setState(() {
                            levelValue = value;
                          });
                        },
                        title: "Senior",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Supervisor',
                        groupValue: levelValue,
                        onChanged: (value) {
                          setState(() {
                            levelValue = value;
                          });
                        },
                        title: "Supervisor",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'Manager',
                        groupValue: levelValue,
                        onChanged: (value) {
                          setState(() {
                            levelValue = value;
                          });
                        },
                        title: "Manager",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: 'CEO',
                        groupValue: levelValue,
                        onChanged: (value) {
                          setState(() {
                            levelValue = value;
                          });
                        },
                        title: "CEO",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: CSizes.spaceBtwItem),

                //* JOB Salary
                const JobFilterTitleWidget(
                    icon: Iconsax.money, title: "Salary Level"),

                Row(
                  children: [
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: '0\$ - 250\$',
                        groupValue: salaryValue,
                        onChanged: (value) {
                          setState(() {
                            salaryValue = value;
                          });
                        },
                        title: "0\$ - 250\$",
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: '250\$ - 500\$',
                        groupValue: salaryValue,
                        onChanged: (value) {
                          setState(() {
                            salaryValue = value;
                          });
                        },
                        title: '250\$ - 500\$',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: '500\$ - 1000\$',
                        groupValue: salaryValue,
                        onChanged: (value) {
                          setState(() {
                            salaryValue = value;
                          });
                        },
                        title: '500\$ - 1000\$',
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: '1000\$ - 2000\$',
                        groupValue: salaryValue,
                        onChanged: (value) {
                          setState(() {
                            salaryValue = value;
                          });
                        },
                        title: '1000\$ - 2000\$',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: '2000\$ - 4000\$',
                        groupValue: salaryValue,
                        onChanged: (value) {
                          setState(() {
                            salaryValue = value;
                          });
                        },
                        title: '2000\$ - 4000\$',
                      ),
                    ),
                    Expanded(
                      child: JobRadioButtonWidget(
                        value: '4000\$ - 10000\$',
                        groupValue: salaryValue,
                        onChanged: (value) {
                          setState(() {
                            salaryValue = value;
                          });
                        },
                        title: '4000\$ - 10000\$',
                      ),
                    ),
                  ],
                ),
                JobRadioButtonWidget(
                  value: '10000\$+',
                  groupValue: salaryValue,
                  onChanged: (value) {
                    setState(() {
                      salaryValue = value;
                    });
                  },
                  title: ' 10000\$+',
                ),
                SizedBox(height: height * .02),
                OutlinedButton(
                  onPressed: () {},
                  style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                      side: const WidgetStatePropertyAll(
                          BorderSide(color: CColors.secondaryColor, width: 2))),
                  child: const Text(
                    'Apply',
                    style: TextStyle(color: CColors.whiteColor),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
