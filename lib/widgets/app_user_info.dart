import 'package:flutter/material.dart';
import '../models/model.dart';
import '../widgets/widget.dart';

enum AppUserType { basic, information, home }

class AppUserInfo extends StatelessWidget {
  final UserModel? user;
  final VoidCallback? onPressed;
  final AppUserType type;

  AppUserInfo({
    Key? key,
    this.user,
    this.onPressed,
    this.type = AppUserType.basic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      switch (type) {
        case AppUserType.information:
          return AppPlaceholder(
            child: Row(
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 100,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            height: 10,
                            width: 100,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 150,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        default:
          return AppPlaceholder(
            child: Row(
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 10,
                        width: 100,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                      ),
                      Container(
                        height: 10,
                        width: 150,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
      }
    }

    switch (type) {
      case AppUserType.information:
        return InkWell(
          onTap: onPressed,
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        // image: AssetImage(user.image),
                        image: NetworkImage(
                            'https://app.phss.pertamina.com/relax/content/relax/image/no-image.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(4),
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   child: Text(
                  //     "new",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 8,
                  //     ),
                  //   ),
                  // )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user!.users?.name ?? 'N/A',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4, bottom: 4),
                        child: Text(
                          user!.posname ?? 'N/A',
                          maxLines: 1,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      Text(
                        user!.users?.email ?? 'N/A',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      case AppUserType.home:
        return InkWell(
          onTap: onPressed,
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white),
                      image: DecorationImage(
                        // image: AssetImage(user.image),
                        image: NetworkImage(
                            'https://app.phss.pertamina.com/relax/content/relax/image/no-image.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user!.users?.name ?? 'N/A',
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4, bottom: 4),
                        child: Text(
                          user!.posname ?? 'N/A',
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      default:
        return Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    // image: AssetImage(
                    //   user.image,
                    // ),
                    image: NetworkImage(
                        'https://app.phss.pertamina.com/relax/content/relax/image/no-image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      user!.users?.name ?? 'N/A',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      user!.posname ?? 'N/A',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              )
            ],
          ),
        );
    }
  }
}
