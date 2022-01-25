import 'dart:convert';

import 'package:flutter/material.dart';
import '../../api/api.dart';
import '../../blocs/bloc.dart';
import '../../configs/config.dart';
import '../../models/model.dart';
// import '../../models/screen_models/screen_models.dart';
import '../../utils/util.dart';
import '../../widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _profile() {
    Navigator.pushNamed(context, Routes.profile);
  }

  //Build profile UI
  Widget _buildProfile() {
    String? userstr = UtilPreferences.getString(Preferences.user);
    UserModel user = UserModel.fromJson(jsonDecode(userstr!));

    return AppUserInfo(
      // user: _profilePage?.user,
      user: user,
      onPressed: _profile,
      type: AppUserType.home,
    );
  }

  Widget _buildGrid() {
    List<Widget> listHomeMenu = <Widget>[];
    listHomeMenu.add(
      InkWell(
        onTap: () {},
        child: HomeMenu(
            title: 'Attendance Form',
            imgurl: Images.iconAttendanceForm,
            onPressed: () {
              Navigator.pushNamed(context, Routes.attendanceForm);
            }),
      ),
    );
    listHomeMenu.add(
      InkWell(
        onTap: () {},
        child: HomeMenu(
            title: 'Attendance List',
            imgurl: Images.iconAttendanceList,
            onPressed: () {
              Navigator.pushNamed(context, Routes.attendanceList);
            }),
      ),
    );
    listHomeMenu.add(
      InkWell(
        onTap: () {},
        child: HomeMenu(
            title: 'R3forms',
            imgurl: Images.iconR3Form,
            onPressed: () {
              Navigator.pushNamed(context, Routes.r3forms);
            }),
      ),
    );
    listHomeMenu.add(
      InkWell(
        onTap: () {},
        child: HomeMenu(
            title: 'Scan QR',
            imgurl: Images.iconScanQr,
            onPressed: () {
              Navigator.pushNamed(context, Routes.scanqr);
            }),
      ),
    );

    return SizedBox(
      height: 230.0,
      child: GridView.count(
        crossAxisCount: 4,
        children: listHomeMenu,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Relax'),
        //   backgroundColor: Colors.transparent,
        // ),
        // extendBodyBehindAppBar: true,
        body: SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Image.asset(
                  Images.homeCover,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 55.0, child: _buildProfile()),
          ),
          Column(
            children: [
              const SizedBox(
                height: 180.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(36.0),
                    ),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildGrid(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  AppHeadlineTitle(title: 'Info Terbaru'),
                                  AppHeadlineTitle(title: 'Layanan Asistensi'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        Images.homeFooter,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
