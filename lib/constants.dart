import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thppy_administration/models/Draw.dart';

class Constants {
  final Color bgDark = const Color.fromRGBO(30, 31, 35, 1);

  final drawee = [
    Draw(
      title: 'Dashboard',
      icon: Icons.home,
      route: '/',
    ),
    Draw(
      title: 'Youth',
      icon: Icons.child_care,
      route: '/youth',
    ),
    Draw(
      title: 'Blogs',
      icon: Icons.book,
      route: '/blogs',
    ),
    Draw(
      title: 'Bootcamps',
      icon: Icons.school,
      route: '/bootcamps',
    ),
    Draw(
      title: 'Trainers',
      icon: Icons.person,
      route: '/trainers',
    ),
    Draw(
      title: 'Gallery',
      icon: Icons.photo_library,
      route: '/gallery',
    ),
    Draw(
      title: 'Linkages',
      icon: Icons.link,
      route: '/linkages',
    ),
    Draw(
      title: 'Feedback',
      icon: Icons.message,
      route: '/feedback',
    ),
    Draw(
      title: 'Quiz',
      icon: Icons.question_answer,
      route: '/quiz',
    ),
    Draw(
      title: 'Services',
      icon: Icons.local_hospital,
      route: '/services',
    ),
    Draw(
      title: 'Social Media Analysis',
      icon: FontAwesomeIcons.chartLine,
      route: '/social_media_analysis',
    ),
    Draw(
      title: 'Teams',
      icon: Icons.group,
      route: '/teams',
    ),
    Draw(
      title: 'FAQ',
      icon: Icons.help,
      route: '/faq',
    ),
    Draw(
      title: 'About',
      icon: Icons.info,
      route: '/about',
    ),
  ];
}
