import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          profileCard(),
          SizedBox(height: 24),
          navigation(),
          moreNavigationTitle(),
          moreNavigation()
        ],
      ),
    );
  }

  Container moreNavigation() {
    return Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.1),
                blurRadius: 20
              )
            ]
          ),
          child: Column(
            children: [
              helpAndSupport(),
              SizedBox(height: 24),
              aboutApp(),
            ],
          ),
        );
  }

  Row aboutApp() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/heart.svg')
                    ),
                    SizedBox(width: 16),
                    Text(
                      "About App",
                      style: TextStyle(
                        color: Color(0xff181D27),
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/icons/rightArrow.svg')
              ],
            );
  }

  Row helpAndSupport() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/bell.svg')
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Help & Support",
                      style: TextStyle(
                        color: Color(0xff181D27),
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/icons/rightArrow.svg')
              ],
            );
  }

  Padding moreNavigationTitle() {
    return Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "More",
            style: TextStyle(
              color: Color(0xff181D27),
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        );
  }

  Container navigation() {
    return Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.1),
                blurRadius: 20
              )
            ]
          ),
          child: Column(
            children: [
              myAccount(),
              SizedBox(height: 24),
              savedBeneficiary(),
              SizedBox(height: 24),
              faceIdOrToughId(),
              SizedBox(height: 24),
              twoFactorAuthentication(),
              SizedBox(height: 24),
              logout(),
            ],
          ),
        );
  }

  Row logout() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/logout.svg')
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Log out",
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Logging out your account",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SvgPicture.asset('assets/icons/rightArrow.svg')
              ],
            );
  }

  Row twoFactorAuthentication() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/shield.svg')
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Two-Factor Authentication",
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Further secure your account for safety",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SvgPicture.asset('assets/icons/rightArrow.svg')
              ],
            );
  }

  Row faceIdOrToughId() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/lock.svg')
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Face ID / Touch ID",
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Manage your device security",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SvgPicture.asset('assets/icons/toggle.svg')
              ],
            );
  }

  Row savedBeneficiary() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/profile.svg')
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Saved Beneficiary",
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Manage your saved account",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SvgPicture.asset('assets/icons/rightArrow.svg')
              ],
            );
  }

  Row myAccount() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2FB),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: SvgPicture.asset('assets/icons/profile.svg')
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Account",
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Make changes to your account",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/warning.svg'),
                    SizedBox(width: 32),
                    SvgPicture.asset('assets/icons/rightArrow.svg')
                  ],
                ),
              ],
            );
  }

  Container profileCard() {
    return Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.only(left: 18, right: 27, top: 18, bottom: 18),
          decoration: BoxDecoration(
            color: Color(0xff0601B4),
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.25),
                blurRadius: 4,
                spreadRadius: 1.0,
                offset: Offset(0, 4)
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 57,
                    height: 57,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Image.asset('assets/images/avatar.png')
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Itunuoluwa Abidoye',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '@Itunuoluwa',
                        style: TextStyle(
                          color: Color(0xffD7D7D7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal
                        ),
                      )
                    ],
                  )
                ],
              ),
              SvgPicture.asset(
                'assets/icons/edit.svg',
                width: 24,
                height: 24,
              )
            ],
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xffF7F7F7),
      title: Text(
        'Profile',
        style: TextStyle(
          color: Color(0xff181D27),
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}