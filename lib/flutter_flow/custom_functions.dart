import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool? verify(String? vlu) {
  // get true if vlu=='Done' else false
  if (vlu == 'Done') return true;
  return false;
}

bool? intToBoolean(int? vlu) {
  // get false when vlu==0 and true when vlu==1
  if (vlu == 0) {
    return false;
  } else {
    return true;
  }
}

bool? iSAdmin(String? vlu) {
  if (vlu == 'True') return true;
  return false;
}

bool? visible(String? vlu) {
  {
    if (vlu == 'null') {
      return false;
    } else {
      return true;
    }
  }
}

String? mobileformate(String? ph) {
  return ph!.substring(3);
}
