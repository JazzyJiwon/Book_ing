import 'package:flutter/cupertino.dart';

import '../widgets/MybookPet.dart';
import '../widgets/TimeCheck.dart';

class ReadPage extends StatefulWidget {
  ReadPage({Key? key}) : super(key: key);

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimeCheck(),
      ],
    );
  }
}
