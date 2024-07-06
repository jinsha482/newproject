
import 'package:flutter/material.dart';
import 'package:nexteons/modules/errorscreen/view/network_error.screen.dart';
import 'package:nexteons/modules/errorscreen/view/something_went.screen.dart';

import '../../modules/homescreen/view/help_screen.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/': (BuildContext context) => const HelpScreen(),
   'network-error': (BuildContext context) => const NetworkErrorScreen(),
   'common-error' :(BuildContext context) => const CommonErrorScreen(),
};