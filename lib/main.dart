import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/firebase_options.dart';
import 'package:thppy_administration/models/CurrentUser.dart';
import 'package:thppy_administration/screens/about_screen.dart';
import 'package:thppy_administration/screens/ambassadors_screen.dart';
import 'package:thppy_administration/screens/auth_state_screen.dart';
import 'package:thppy_administration/screens/blogs_screen.dart';
import 'package:thppy_administration/screens/bootcamp_events_screen.dart';
import 'package:thppy_administration/screens/bootcamps_screen.dart';
import 'package:thppy_administration/screens/centers_screen.dart';
import 'package:thppy_administration/screens/chats_screen.dart';
import 'package:thppy_administration/screens/comments_screen.dart';
import 'package:thppy_administration/screens/countries_screen.dart';
import 'package:thppy_administration/screens/faq_screen.dart';
import 'package:thppy_administration/screens/forgot_password_screen.dart';
import 'package:thppy_administration/screens/gallery_screen.dart';
import 'package:thppy_administration/screens/home_screen.dart';
import 'package:thppy_administration/screens/interactions_screen.dart';
import 'package:thppy_administration/screens/linkages_screen.dart';
import 'package:thppy_administration/screens/login_screen.dart';
import 'package:thppy_administration/screens/messages_screen.dart';
import 'package:thppy_administration/screens/partners_screen.dart';
import 'package:thppy_administration/screens/permissions_screen.dart';
import 'package:thppy_administration/screens/quiz_group_screen.dart';
import 'package:thppy_administration/screens/quiz_screen.dart';
import 'package:thppy_administration/screens/reactions_screen.dart';
import 'package:thppy_administration/screens/region_screen.dart';
import 'package:thppy_administration/screens/quiz_response_screen.dart';
import 'package:thppy_administration/screens/services_screen.dart';
import 'package:thppy_administration/screens/social_media_analysis_screen.dart';
import 'package:thppy_administration/screens/social_media_screen.dart';
import 'package:thppy_administration/screens/teams_screen.dart';
import 'package:thppy_administration/screens/trainers_screen.dart';
import 'package:thppy_administration/screens/users_screen.dart';
import 'package:thppy_administration/screens/youth_screen.dart';
import 'package:thppy_administration/services/auth_services.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<CurrentUser?>.value(
          value: AuthServices().user,
          initialData: CurrentUser(),
        ),
      ],
      child: MaterialApp(
        title: 'THPPY Administration',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const AuthStateScreen(),
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          '/forgot_password': (context) => const ForgotPasswordScreen(),
          '/countries': (context) => const CountriesScreen(),
          '/users': (context) => const UsersScreen(),
          '/centers': (context) => const CentersScreen(),
          '/about': (context) => const AboutScreen(),
          '/ambassadors': (context) => const AmbassadorsScreen(),
          '/blogs': (context) => const BlogsScreen(),
          '/bootcamps': (context) => const BootcampsScreen(),
          '/bootcamp_events': (context) => const BootcampEventsScreen(),
          '/chats': (context) => const ChatsScreen(),
          '/comments': (context) => const CommentsScreen(),
          '/faq': (context) => const FAQScreen(),
          '/gallery': (context) => const GalleryScreen(),
          '/interactions': (context) => const InteractionsScreen(),
          '/messages': (context) => const MessagesScreen(),
          '/partners': (context) => const PartnersScreen(),
          '/linkages': (context) => const LinkagesScreen(),
          '/permissions': (context) => const PermissionsScreen(),
          '/quiz': (context) => const QuizScreen(),
          '/quiz_groups': (context) => const QuizGroupsScreen(),
          '/quiz_responses': (context) => const QuizResponsesScreen(),
          '/reactions': (context) => const ReactionsScreen(),
          '/regions': (context) => const RegionsScreen(),
          '/services': (context) => const ServicesScreen(),
          '/social_media': (context) => const SocialMediaScreen(),
          '/social_media_analysis': (context) =>
              const SocialMediaAnalysisScreen(),
          '/teams': (context) => const TeamsScreen(),
          '/trainers': (context) => const TrainersScreen(),
          '/youth': (context) => const YouthScreen(),
        },
        theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
