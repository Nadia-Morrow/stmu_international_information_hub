import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ExtracurricularPage extends StatefulWidget {
  const ExtracurricularPage({super.key});

  @override
  _ExtracurricularPage createState() => _ExtracurricularPage();
}

class _ExtracurricularPage extends State<ExtracurricularPage> {
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
              child: Text('Extracurriculars', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            ),
            const Padding(padding:EdgeInsets.only(top:8),),
            const Divider(
              height: 10,
              thickness: 3,
              indent: 25,
              endIndent: 25,
              color: Color(0xFF0D4D84),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            const Center(
              child: Text(
                'Science, Technology, Engineering and Math Organizations(Orgs)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue beaker filled half way up',
                  child: Image.asset('images/stem.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Society of Hispanic Professional Engineers(SHPE)\n- Forensic Science Club\n- Infinite Loops\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Business and Professional Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue briefcase',
                  child: Image.asset('images/business.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Accounting Club\n- Greehey Scholars Program\n- Investments Club\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Arts, Humanities and Social Sciences Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue music note',
                  child: Image.asset('images/arts.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- The Rattler Newspaper\n- St. Mary\'s Band Committee\n- Student Therapy Association\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Health, Wellness and Medical Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue briefcase with a plus sign',
                  child: Image.asset('images/health.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- American Red Cross Campus Club\n- Health Occupation Students of America\n- Pharmacy Club\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Honors Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue graduation cap',
                  child: Image.asset('images/honor.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Beta Beta Beta Biological Honor Society\n- Greehey Scholars Program\n- Phi Sigma Tau (Philosophy)\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Leadership Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue square with a white tie',
                  child: Image.asset('images/lead.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Enactus\n- Girl Up StMU\n- IGNITE\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Social and Other Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of three blue people. One in the front and two behind',
                  child: Image.asset('images/social.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Environment, Conservation and Outreach (ECO) Club\n- For the Animals\n- Residence Hall Association\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Cultural Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue world',
                  child: Image.asset('images/culture.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Asian Cultural Association\n- Black Student Union\n- Hispanic Student Union\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Recreation Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue game controller',
                  child: Image.asset('images/recreation.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Code Blue Dance Team\n- Color Guard\n- Ultimate Frisbee Club\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Service Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of two blue hands shaking hands',
                  child: Image.asset('images/service.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Alpha Phi Omega(Service)\n- StMU Humanitarians\n- Women\'s Affairs Council\n- And much more...'),
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Center(
              child: Text(
                'Law Orgs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  image: true,
                  label:
                  'Image of blue justice scale',
                  child: Image.asset('images/law.png', width: 150),
                ),
                const Padding(padding: EdgeInsets.only(left: 2)),
                const Flexible(
                  child: Text(
                      '- Aggie Bar Association\n- AgPro Law Association\n- Asian-Pacific American Law Student Association\n- And much more...'),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            Semantics(
              button: true,
              label: 'Leads to St. Mary\'s webpage about organizations',
              child: ElevatedButton(
                  onPressed: () async {
                    final url = Uri.https('www.stmarytx.edu', 'campuslife/activities/organizations');
                    await launchUrl(url);
                  },
                  child: const Text('Learn More')),
            )
          ],)
        ],
      ),
    );
  }
}
