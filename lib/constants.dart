import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thppy_administration/models/Draw.dart';

class Constants {
  final Color bgDark = const Color.fromRGBO(30, 31, 35, 1);

  // Dashboard
  // Users
  // Youth
  // Countries
  // Centers
  // Regions
  // Ambassadors
  // Blogs
  // Bootcamps
  // Bootcamp Events
  // Chats
  // Comments
  // FAQ
  // Gallery
  // Interactions
  // Linkages
  // Media
  // Messages
  // Quiz
  // Quiz Groups
  // Quiz Responses
  // Services
  // Social Media
  // Social Media Analysis
  // Teams
  // Trainers
  // About

  final drawee = [
    Draw(
      title: 'Dashboard',
      icon: Icons.home,
      route: '/home',
    ),
    Draw(
      title: 'Users',
      icon: Icons.people,
      route: '/users',
    ),
    Draw(
      title: 'Youth',
      icon: Icons.child_care,
      route: '/youth',
    ),
    Draw(
      title: 'Countries',
      icon: Icons.flag,
      route: '/countries',
    ),
    Draw(
      title: 'Centers',
      icon: Icons.school,
      route: '/centers',
    ),
    Draw(
      title: 'Regions',
      icon: Icons.location_city,
      route: '/regions',
    ),
    Draw(
      title: 'Ambassadors',
      icon: Icons.person,
      route: '/ambassadors',
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
      title: 'Bootcamp Events',
      icon: Icons.event,
      route: '/bootcamp_events',
    ),
    Draw(
      title: 'Chats',
      icon: Icons.chat,
      route: '/chats',
    ),
    Draw(
      title: 'Comments',
      icon: Icons.comment,
      route: '/comments',
    ),
    Draw(
      title: 'FAQ',
      icon: Icons.help,
      route: '/faq',
    ),
    Draw(
      title: 'Gallery',
      icon: Icons.photo_library,
      route: '/gallery',
    ),
    Draw(
      title: 'Interactions',
      icon: Icons.touch_app,
      route: '/interactions',
    ),
    Draw(
      title: 'Linkages',
      icon: Icons.link,
      route: '/linkages',
    ),
    Draw(
      title: 'Media',
      icon: Icons.image,
      route: '/media',
    ),
    Draw(
      title: 'Messages',
      icon: Icons.message,
      route: '/messages',
    ),
    Draw(
      title: 'Quiz',
      icon: Icons.question_answer,
      route: '/quiz',
    ),
    Draw(
      title: 'Quiz Groups',
      icon: Icons.group,
      route: '/quiz_groups',
    ),
    Draw(
      title: 'Quiz Responses',
      icon: Icons.check_circle,
      route: '/quiz_responses',
    ),
    Draw(
      title: 'Services',
      icon: Icons.local_hospital,
      route: '/services',
    ),
    Draw(
      title: 'Social Media',
      icon: Icons.share,
      route: '/social_media',
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
      title: 'Trainers',
      icon: Icons.person,
      route: '/trainers',
    ),
    Draw(
      title: 'About',
      icon: Icons.info,
      route: '/about',
    ),
  ];
}
