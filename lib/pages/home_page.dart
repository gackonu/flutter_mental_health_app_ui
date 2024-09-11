import 'package:flutter/material.dart';
import 'package:flutter_default/models/feelings_model.dart';
import 'package:flutter_default/utils/emoticon_face.dart';
import 'package:flutter_default/utils/excercise_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FeelingsModel> feelings = [];

  void _getFeelings() {
    feelings = FeelingsModel.getFeelings();
  }

  @override
  Widget build(BuildContext context) {
    _getFeelings();
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Column(
                children: [
                  welcomeNotification(),
                  const SizedBox(
                    height: 20,
                  ),
                  searchField(),
                  const SizedBox(
                    height: 40,
                  ),
                  setFeeling(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)),
              child: Container(
                color: Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 40, left: 20, right: 20),
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Excercises',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.more_horiz_outlined)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        // shrinkWrap: true,
                        // scrollDirection: Axis.vertical,
                        children: [
                          ExcerciseTile(icon: Icons.favorite, excerciseName: 'Speaking Skills', numberOfExcercises: '16 Excercises', color: Colors.orange,),
                          ExcerciseTile(icon: Icons.book, excerciseName: 'Reading Speed', numberOfExcercises: '8 Excercises', color: Colors.blue,),
                          ExcerciseTile(icon: Icons.person_2_rounded, excerciseName: 'Dancing Ability', numberOfExcercises: '4 excercise', color: Colors.amber),
                          ExcerciseTile(icon: Icons.audiotrack_rounded, excerciseName: 'Singing Pitch', numberOfExcercises: '9 excercise', color: Colors.deepPurple),
                          ExcerciseTile(icon: Icons.access_alarm_rounded, excerciseName: 'Time Keeping', numberOfExcercises: '12 excercise', color: Colors.redAccent)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column setFeeling() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'How do you feel?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.white,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        // raw_row()
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              EmoticonFace(
                emojiFace: '😔',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Bad',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              EmoticonFace(
                emojiFace: '😊',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Fine',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              EmoticonFace(
                emojiFace: '😄',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Well',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              EmoticonFace(
                emojiFace: '😁',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Excellent',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ])
      ],
    );
  }

  Row rawRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/badly.svg'),
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Badly',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/fine.svg'),
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Fine',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/well.svg'),
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Well',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/excellent.svg'),
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Excellent',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    );
  }

  TextField searchField() {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.white24),
          filled: true,
          fillColor: Colors.blue[600],
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white24,
          )),
    );
  }

  Row welcomeNotification() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi Blankson',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '23th Jan, 2024',
              style: TextStyle(color: Colors.blue[100]),
            )
          ],
        ),
        Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12)),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ))
        // Notification
      ],
    );
  }
}
