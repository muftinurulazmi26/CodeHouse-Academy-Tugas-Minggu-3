import 'package:flutter/material.dart';
import 'package:photograpps/widgets/theme.dart';

class PhotoCard extends StatelessWidget {
  String? backgroundPhoto;
  String? urlAvatar;
  String? fullName;
  String? profession;
  String? totLove;

  PhotoCard({
    Key? key,
    this.backgroundPhoto,
    this.urlAvatar,
    this.fullName,
    this.profession,
    this.totLove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              backgroundPhoto!,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              margin: const EdgeInsets.only(left: 8, bottom: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(urlAvatar!),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fullName!,
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            profession!,
                            style: TextStyle(
                              fontSize: 10,
                              color: whiteColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        totLove!,
                        style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset("assets/icons/ic_love.png")
                    ],
                  )
                ],
              ),
            ),
          )
          // Positioned.fill(
          //   child: Align(
          //     alignment: Alignment.bottomLeft,
          //     child:
          //   ),
          // )
        ],
      ),
    );
  }
}