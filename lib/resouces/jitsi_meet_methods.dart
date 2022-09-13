import 'package:flutter/material.dart';
import '';

class JitsiMeetMethods {
  void createNewMeeting({required String roomName}) async {
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution.MD_RESOLUTION; // Limit video resolution to 360p

      var options = JitsiMeetingOptions(
        room: roomName
      )
        ..room = "myroom" // Required, spaces will be trimmed
        ..serverURL = "https://someHost.com"
        ..subject = "Meeting with Gunschu"
        ..userDisplayName = "My Name"
        ..userEmail = "myemail@email.com"
        ..userAvatarURL = "https://someimageurl.com/image.jpg" // or .png
        ..audioOnly = true
        ..audioMuted = true
        ..videoMuted = true
        ..featureFlag = featureFlag;

      await JitsiMeet.joinMeeting(options);
    } catch (error) {
      debugPrint("error: $error");
    }
  }
}
