import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class StudentServicesPage extends StatefulWidget {
  const StudentServicesPage({super.key});

  @override
  _StudentServicesPage createState() => _StudentServicesPage();
}

class _StudentServicesPage extends State<StudentServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('StMU International Students Hub')),
          actions: <Widget>[
            Semantics(
                label:
                    'Image of the St. Mary\'s University logo. The logo has a capital s, lowercase t, capital m and capital u. The letters are outline with blue then white then yellow. Under the letters, there is a cartoon snake, the St. Mary\'s mascot.',
                child: Image.asset('images/logo.png')),
          ],
        ),
        body: FooterView(
            footer: Footer(
              child: Column(
                children: const [
                  Text('Questions:'),
                  Text('International Student and Scholar Services'),
                  Text('phone: 210-431-5091'),
                  Text('email: isss@stmarytx.edu or cip@stmarytx.edu')
                ],
              ),
            ),
            flex: 8,
            children: [
              Column(children: [
                const Center(
                  child: Text(
                    'Student Services',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Center(
                  child: Text(
                    'Spirit',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 5),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label:
                          'Image of a male presenting student and a female presenting student walking in front of the offices of university ministry. The building is cream but has a yellow and blue mural with multiple biblical images in variety of colors',
                      child: Image.asset('images/ministry.jpg', width: 150),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'University Ministry(UMin) offers students a place to engage with their religion by having retreats, student ministers and many other opportunities.'),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label:
                          'Image of a mural which has a golden cross in the lower right corner. candles around an alter at the center and at the top center an image of Jesus',
                      child: Image.asset(
                        'images/mass.jpg',
                        width: 150,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'Mass and Confession is held throughout the week at our on-campus chapels, Assumption Chapel and Guadalupe Chapel as well as next door at Holy Rosary Catholic Church'),
                    )
                  ],
                ),
                const Padding(padding:EdgeInsets.only(top:8),),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Center(
                    child: Text(
                  'Mind',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label:
                          'Image of a male presenting professional and a female presenting personal talking. The male presenting professional is sitting and talking to the standing female presenting professional. There is a circle table with papers and a laptop in front of the professionals and a bookcase behind them.',
                      child: Image.asset(
                        'images/rsc.jpg',
                        width: 150,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'The Rattler Success Center provides advising, life skills training and tutoring.'),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label:
                          'Image of two female presenting people. One is facing the camera and behind a desk with pictures, a whiteboard calender and window behind them. One is facing away from the camera. Their black hair and white shirt are seen.',
                      child: Image.asset(
                        'images/cc.jpg',
                        width: 150,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'The Career and Professional Development Center provides document reviews, mock interviews and many other activities to help students secure a job after graduation'),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label: 'Image of a blue chair in front of a window.',
                      child: Image.asset(
                        'images/counseling.jpg',
                        width: 150,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'The Rattler Success Center provides group and individual counseling as well as consultation and educational services.'),
                    )
                  ],
                ),
                const Padding(padding:EdgeInsets.only(top:8),),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Center(
                    child: Text(
                  'Body',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label:
                          'Image of a light skin black male presenting student smiling in a blue columbia hoodie, gold cross chain and gray shirt.',
                      child: Image.asset(
                        'images/body.jpg',
                        width: 150,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'The Student Health Center helps students by providing discounted health services. It takes university insurance.'),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      image: true,
                      label:
                          'Image of a male presenting gym goer in lime green shorts, red shirt and white shoes walking amongst the gym equipment. Around him are medicine balls, poles to do pull ups on and other equipment.',
                      child: Image.asset(
                        'images/gym.jpg',
                        width: 150,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 2)),
                    const Flexible(
                      child: Text(
                          'The gym provides students with multiple machines and weights to work with as well as indoor basketball courts, an indoor swimming pool, a sky track and a rock climbing wall.'),
                    )
                  ],
                ),
              ])
            ]));
  }
}
