import 'package:flutter/material.dart';

import '../widgets/home_meeting_button.dart';


class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
                onPressed: () {}, text: 'New Meeting', icon: Icons.videocam),
            HomeMeetingButton(
                onPressed: () {},
                text: 'Join Meeting',
                icon: Icons.add_box_rounded),
            HomeMeetingButton(
                onPressed: () {},
                text: 'Schedule',
                icon: Icons.calendar_today),
            HomeMeetingButton(
                onPressed: () {},
                text: 'Share Screen',
                icon: Icons.arrow_upward_rounded),
          ],
        ),
        const Expanded(
          child:  Center(
            child: Text('Create/join meetings with just one click!', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),

          ),
        ),
      ],
    );
  }
}
