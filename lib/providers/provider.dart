import 'package:flutter/cupertino.dart';

import '../models/class.dart';
import '../serviec/user_serviec.dart';

class myp extends ChangeNotifier
{
  UserProfile? p;
  Future<void> fech() async
  {
    p=await prayer_serviec.getuserprofile();
    notifyListeners();
  }
}



