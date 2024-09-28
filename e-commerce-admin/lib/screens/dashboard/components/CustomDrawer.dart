import 'package:admin/utility/extensions.dart';
import 'package:flutter/material.dart';

import '../../../utility/responsive.dart';
import '../../main/components/side_menu.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        color: Colors.black,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        DrawerHeader(
                          child: Image.asset("assets/images/logo.png"),
                        ),
                        DrawerListTile(
                          title: "Dashboard",
                          svgSrc: "assets/icons/menu_dashboard.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Dashboard');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Category",
                          svgSrc: "assets/icons/menu_tran.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Category');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Sub Category",
                          svgSrc: "assets/icons/menu_task.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('SubCategory');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Brands",
                          svgSrc: "assets/icons/menu_doc.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Brands');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Variant Type",
                          svgSrc: "assets/icons/menu_store.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('VariantType');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Variants",
                          svgSrc: "assets/icons/menu_notification.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Variants');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Orders",
                          svgSrc: "assets/icons/menu_profile.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Order');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Coupons",
                          svgSrc: "assets/icons/menu_setting.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Coupon');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Posters",
                          svgSrc: "assets/icons/menu_doc.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Poster');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                        DrawerListTile(
                          title: "Notifications",
                          svgSrc: "assets/icons/menu_notification.svg",
                          press: () {
                            context.mainScreenProvider
                                .navigateToScreen('Notifications');
                            if (!Responsive.isDesktop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -5,
              right: -5,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
