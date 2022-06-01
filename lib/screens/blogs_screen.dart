import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_blogs.dart';
import 'package:thppy_administration/screens/mobile/mobile_blogs.dart';

class BlogsScreen extends StatefulWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileBlogs(),
      desktop: DesktopBlogs(),
    );
  }
}
