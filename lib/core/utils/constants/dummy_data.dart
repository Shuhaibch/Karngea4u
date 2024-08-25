import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/features/blog/screens/blog_home_screen.dart';
import 'package:karngea4u/features/cv/screens/basic_details/cv_basic_details_text_form_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_achievement/cv_achievement_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_association/cv_association_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_attachments/cv_attachments_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_awards/cv_awards_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_certificates/cv_certificates_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_education/cv_education_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_experience/cv_experiecnce_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_home_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_languages/cv_languages_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_members/cv_members_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_portfolio/cv_portfolio_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_professional_skills/cv_pro_skills_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_projects/cv_projects_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_publication/cv_publication_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_reference/cv_reference_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_reserch/cv_reserch_screen.dart';
import 'package:karngea4u/features/cv/screens/cv_video/cv_video_screen.dart';
import 'package:karngea4u/features/employer/screen/employer_home_screen.dart';
import 'package:karngea4u/features/home/widgets/widget_model.dart';
import 'package:karngea4u/features/job/jobs/screens/job_home_screen.dart';

class CDummyData {
  static List<GridWidgetModel> homeWidgetList(BuildContext context) {
    return [
      GridWidgetModel(
        title: "JOBS",
        icon: Icons.search,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const JobHomeScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "EMPLOYERS",
        icon: Icons.personal_injury_sharp,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const EmployerHomeScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "CV",
        icon: Iconsax.card5,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvHomeScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "BLOGS",
        icon: Iconsax.note,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const BlogHomeScreen(),
          ));
        },
      ),
    ];
  }

  static List<LanguageWidgetModel> languageWidgetModel() {
    return [
      LanguageWidgetModel(logo: CImageString.khmerIcons, language: "Khmer"),
      LanguageWidgetModel(logo: CImageString.englishIcons, language: "English"),
      LanguageWidgetModel(logo: CImageString.chineseIcons, language: "Chinese"),
    ];
  }

  static List<GridWidgetModel> cvWidgetList(BuildContext context) {
    return [
      GridWidgetModel(
        title: "BASIC DETAIL",
        icon: Iconsax.user_tick,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvBasicDetailsTextFormScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "EDUCATION",
        icon: Icons.school,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvEducationScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "EXPERIENCE",
        icon: Iconsax.brifecase_tick,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvExperiecnceScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "PROFESSIONAL SKILL",
        icon: Iconsax.search_zoom_in,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvProSkillsScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "PORTFOLIO",
        icon: Iconsax.folder_open,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvPortfolioScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "VIDEO",
        icon: Iconsax.video,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvVideoScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "AWARDS",
        icon: Iconsax.cup,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvAwardScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "RESERCH",
        icon: Icons.content_paste_search_outlined,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvResearchScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "CERTIFICATES\n/ LICENSES",
        icon: Iconsax.wallet_1,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvCertificatesScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "PUBLICATIONS",
        icon: Icons.local_print_shop_outlined,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvPublicationScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "MEMBER\n/ GROUP",
        icon: Icons.card_membership,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvMembersScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "ATTACH FILES",
        icon: Icons.file_present,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvAttachmentsScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "REFERENCES",
        icon: Icons.group,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvReferenceScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "LANGUAGE",
        icon: Iconsax.translate,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvLanguagesScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "PROJECTS",
        icon: Icons.foundation,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvProjectsScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "ACHIEVEMENTS",
        icon: Icons.area_chart_outlined,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvAchievementScreen(),
          ));
        },
      ),
      GridWidgetModel(
        title: "ASSOCIATIONS",
        icon: Icons.cable_sharp,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CvAssociationScreen(),
          ));
        },
      ),
    ];
  }

  static List<JobDetailsModel> jobDetalsWidgetList(BuildContext context) {
    return [
      JobDetailsModel(
        title: "Career Level",
        subTitle: "GM / CEO / Country Head/ President",
        icon: Iconsax.cup,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Years of Experience",
        subTitle: "5 Years",
        icon: Iconsax.cup,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Qualification",
        subTitle: "Master",
        icon: Iconsax.layer,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Industry",
        subTitle: "Medicine",
        icon: Iconsax.building,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Shift",
        subTitle: "Normal Shift",
        icon: Iconsax.calendar,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Hiring",
        subTitle: "12",
        icon: Iconsax.cup,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Skills",
        subTitle: "GM / CEO / Country Head / President",
        icon: Iconsax.briefcase,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Age",
        subTitle: "20-30",
        icon: Iconsax.user,
        onTap: () {},
      ),
      JobDetailsModel(
        title: "Gender",
        subTitle: "No Preference",
        icon: Iconsax.user,
        onTap: () {},
      ),
    ];
  }

  static List<String> skillList() {
    return [
      "Communication",
      "Teamwork",
      "Problem-solving",
      "Time management",
      "Critical thinking",
      "Leadership",
      "Technical skills",
      "Project management",
      "Adaptability",
      "Interpersonal skills",
      "Creativity",
      "Decision-making",
      "Conflict resolution",
      "Negotiation",
      "Networking",
      "Research skills",
      "Attention to detail",
      "Customer service",
      "Strategic planning",
      "Data analysis",
      "Public speaking",
      "Writing skills",
      "Software development",
      "Marketing",
      "Sales",
      "Finance management",
      "Human resources",
      "Operations management",
      "Foreign language proficiency",
      "Graphic design"
    ];
  }

  static List<String> languageSkillsList() {
    return [
      "Beginner",
      "Elementary",
      "Intermediate",
      "Upper-Intermediate",
      "Advanced",
      "Fluent",
      "Native Speaker"
    ];
  }

  static List<String> locationList() {
    return [
      "Malappuram",
      "Kozhikode",
      "Thrissur",
      "Ernakulam",
      "Thiruvananthapuram",
      "Palakkad",
      "Kannur",
      "Kollam",
      "Alappuzha",
      "Kottayam",
      "Idukki",
      "Wayanad",
      "Pathanamthitta",
      "Kasargod"
    ];
  }

  static List<String> categoryList() {
    return [
      "Software Development",
      "Data Science",
      "Product Management",
      "Marketing",
      "Sales",
      "Human Resources",
      "Finance",
      "Customer Service",
      "Design",
      "Engineering",
      "Operations",
      "Legal",
      "Healthcare",
      "Education",
      "Research",
      "Consulting",
      "Administrative",
      "Logistics",
      "Public Relations",
      "IT Support"
    ];
  }

  static List<String> blogFilterList() {
    return [
      "Employee",
      "Employer",
      "Community",
    ];
  }

  static List<String> nationalityList() {
    return [
      // Common Nationalities
      'Afghan', 'Albanian', 'Algerian', 'American', 'Andorran', 'Angolan',
      'Antiguan and Barbudan',
      'Argentine', 'Armenian', 'Australian', 'Austrian', 'Azerbaijani',
      'Bahamian', 'Bahraini', 'Bangladeshi',
      'Barbadian', 'Belarusian', 'Belgian',
      'Belizean', 'Beninese', 'Bermudan',
      'Bhutanese', 'Bolivian',
      'Bosnian', 'Botswana', 'Brazilian', 'British', 'Bruneian', 'Bulgarian',
      'Burkinabé', 'Burmese',
      'Burundian', 'Cambodian', 'Cameroonian', 'Canadian', 'Cape Verdean',
      'Central',
      'African', 'Chadian',
      'Chilean', 'Chinese', 'Colombian', 'Comorian', 'Congolese', 'Costa Rican',
      'Croatian', 'Cuban',
      'Cypriot', 'Czech', 'Danish', 'Djiboutian', 'Dominican', 'Dutch',
      'East Timorese', 'Ecuadorean',
      'Egyptian', 'Emirati', 'Equatorial Guinean', 'Eritrean', 'Estonian',
      'Ethiopian',
      'Fijian', 'Filipino',
      'Finnish', 'French', 'Gabonese', 'Gambian', 'Georgian', 'German',
      'Ghanaian', 'Greek', 'Grenadian',
      'Guatemalan', 'Guinean',
      'Guinean-Bissauan', 'Guyanese', 'Haitian', 'Honduran', 'Hungarian',
      'Icelandic',
      'Indian', 'Indonesian', 'Iranian', 'Iraqi', 'Irish', 'Israeli', 'Italian',
      'Jamaican', 'Japanese',
      'Jordanian', 'Kazakh', 'Kenyan',
      'Kiribati', 'Kosovar', 'Kuwaiti', 'Kyrgyz', 'Lao', 'Latvian',
      'Lebanese', 'Liberian', 'Libyan', 'Liechtenstein', 'Lithuanian',
      'Luxembourgish', 'Macedonian',
      'Malagasy', 'Malawian', 'Malaysian', 'Maldivan', 'Malian', 'Maltese',
      'Marshallese', 'Mauritanian',
      'Mauritian', 'Mexican', 'Micronesian', 'Moldovan',
      'Monegasque', 'Mongolian', 'Montenegrin',
      'Moroccan', 'Mozambican', 'Namibian', 'Nauruan', 'Nepalese',
      'Netherlands',
      'Antilles', 'New Zealander',
      'Nicaraguan', 'Nigerien', 'Nigerian', 'Niuean', 'North Korean',
      'Northern Irish', 'Norwegian',
      'Omani', 'Pakistani', 'Palauan', 'Panamanian', 'Papua New Guinean',
      'Paraguayan', 'Peruvian',
      'Philippine', 'Polish', 'Portuguese', 'Qatari', 'Romanian', 'Russian',
      'Rwandan', 'Saint Lucian',
      'Saint Vincentian', 'Samoan', 'San Marinese', 'Sao Tomean', 'Saudi',
      'Senegal', 'Serbian',
      'Seychellois', 'Sierra Leonean', 'Singaporean', 'Slovak', 'Slovenian',
      'Solomon Islander',
      'Somali', 'South African', 'South Korean', 'South Sudanese', 'Spanish',
      'Sri Lankan', 'Sudanese',
      'Surinamese', 'Swazi', 'Swedish', 'Swiss', 'Syrian', 'Taiwanese', 'Tajik',
      'Tanzanian', 'Thai',
      'Togolese', 'Tongan', 'Trinidadian or Tobagonian', 'Tunisian',
      'Turkish', 'Turkmen', 'Tuvaluan',
      'Ugandan', 'Ukrainian',
      'Emirati', 'Uruguayan', 'Uzbek', 'Venezuelan', 'Vietnamese',
      'Vanuatuan', 'Vatican', 'Welsh', 'Yemenite', 'Zambian', 'Zimbabwean',
    ];
  }

  static List<String> degreeList() {
    return [
      // Undergraduate Degrees
      "Bachelor of Arts (BA)",
      "Bachelor of Science (BS)",
      "Bachelor of Engineering (BE)",
      "Bachelor of Technology (BTech)",
      "Bachelor of Medicine, Bachelor of Surgery (MBBS)",
      "Bachelor of Commerce (BCom)",
      "Bachelor of Business Administration (BBA)",

      // Postgraduate Degrees
      "Master of Arts (MA)",
      "Master of Science (MSc)",
      "Master of Business Administration (MBA)",
      "Master of Philosophy (MPhil)",
      "Doctor of Philosophy (PhD)",

      // Other Qualifications
      "Chartered Accountancy (CA)",
      "Company Secretary (CS)",
      "Cost Accountant (CMA)",

      // Specific Courses (example)
      "Computer Science",
      "Information Technology",
      "Electrical Engineering",
      "Mechanical Engineering",
      "Marketing",
      "Finance",
      "Law",
      "Medicine",
      "Nursing",
    ];
  }

  static List<String> feildOfStudyList() {
    return [
      // Engineering
      "Computer Science",
      "Information Technology",
      "Electrical Engineering",
      "Mechanical Engineering",
      "Civil Engineering",
      "Chemical Engineering",
      "Aerospace Engineering",
      "Biomedical Engineering",

      // Science
      "Physics", "Chemistry", "Biology", "Mathematics", "Statistics",
      "Environmental Science", "Geology", "Psychology",
      // Arts and Humanities
      "English", "History", "Philosophy", "Sociology", "Psychology", "Art",
      "Music", "Drama", "Literature",
      // Business and Management
      "Business Administration", "Marketing", "Finance", "Accounting",
      "Human Resources", "Economics",
      // Medicine and Health
      "Medicine", "Dentistry", "Nursing", "Pharmacy", "Physiotherapy",
      "Occupational Therapy",
      // Law
      "Law",
      // Other
      "Education", "Social Work", "Architecture",
    ];
  }

  static List<String> resultList() {
    return [
      "Success",
      "Failure",
      "Pending",
      "Error",
      // Add more result types as needed
    ];
  }

  static List<String> genderList() {
    return [
      "Male",
      "Female",
    ];
  }

  static List<String> maritalStatusesList() {
    return [
      'Single',
      'Married',
      'Divorced',
      'Widowed',
      'Separated',
      'Unknown',
      'Prefer not to say',
    ];
  }

  static List<String> cvExpericeList() {
    return [
      "Less than 1 year",
      "1-2 years",
      "2-3 years",
      "3-4 years",
      "4-5 years",
      "5-6 years",
      "6-7 years",
      "7-8 years",
      "8-9 years",
      "9-10 years",
      "10-15 years",
      "15-20 years",
      "20+ years"
    ];
  }
}
