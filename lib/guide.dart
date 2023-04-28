import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:stmu_international_hub/admission.dart';
import 'package:stmu_international_hub/iep.dart';
import 'package:stmu_international_hub/main.dart';
import 'package:stmu_international_hub/visa.dart';
import 'package:url_launcher/url_launcher.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
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
          Center(
              child: Flexible(
            child: Column(
              children: [
                const Text('Guide',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text(
                  'Apply for undergraduate/graduate admission (instructions found on admissions page)',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const AdmissionPage();
                      }));
                    },
                    child: const Text('Admission Instructions')),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),

                const Text('Step 2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Center(
                    child: Text(
                  'Send Evaluation of International Credential using one of the organizations linked via the button',
                  textAlign: TextAlign.center,
                )),
                ElevatedButton(
                    onPressed: () async {
                      final url = Uri.https('www.naces.org', 'members');
                      await launchUrl(url);
                    },
                    child: const Text('Organizations')),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Center(
                    child: Text(
                  'Submit English Proficiency Scores\nWith Scores of: TOEFL iBT Test: 80 (MBA = min 87), IELTS: 6.0 (MBA = min 6.5), Duolingo English Test: 105+\nExcludes any students who went to an English school and gained a high school diploma or higher degree (ie. associates(arts and science), bachelor\'s or higher',
                  textAlign: TextAlign.center,
                )),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 4', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text(
                  'Provide Visa Proof or Provide documentation for sponsorship',
                  textAlign: TextAlign.center,
                ),
                Semantics(
                    button: true,
                    label:
                        'Leads to app page that explains steps to apply for sponsorship with St. Mary\'s',
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const VisaPage();
                        }));
                      },
                      child: Text('VISA'),
                    )),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text(
                  'Obtain health insurance\n- If J-1 holder, spouse and children must also get insurance.\n- All must provide proof of immunization record',
                  textAlign: TextAlign.center,
                ),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 6', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text(
                  'Submit housing application via the housing portal in Gateway',
                  textAlign: TextAlign.center,
                ),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 7', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text(
                  'Apply for IEP (instructions provided click button below)',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const IEPPage();
                      }));
                    },
                    child: const Text('IEP')),
                const Divider(
                  height: 10,
                  thickness: 3,
                  indent: 25,
                  endIndent: 25,
                  color: Color(0xFF0D4D84),
                ),
                const Text('Step 8', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text(
                  'Apply for financial aid',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
