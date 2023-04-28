import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/url_launcher.dart';

class AdmissionPage extends StatefulWidget {
  const AdmissionPage({super.key});

  @override
  _AdmissionPage createState() => _AdmissionPage();
}

class _AdmissionPage extends State<AdmissionPage> {
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
        )),
        flex: 8,
        children: [
          Column(children: [
            const Center(child: Text('Admission', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                Column(children: [
                  const Text(
                    'Undergraduate',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: 685,
                      width: 140,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Column(
                          children: [
                            const Text(
                                'Step 1: Choose your application portal.',textAlign: TextAlign.center,),
                            Semantics(
                              button: true,
                              label:
                                  'Leads to the St. Mary\'s University Online Application Portal',
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final url = Uri.https(
                                        'apply.stmarytx.edu', 'apply');
                                    await launchUrl(url);
                                  },
                                  child: const Text('StMU Online App')),
                            ),
                            Semantics(
                              button: true,
                              label: 'Leads to the Common App website',
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final url = Uri.https('www.commonapp.org',
                                        'explore/st-marys-university');
                                    await launchUrl(url);
                                  },
                                  child: const Text('Common App')),
                            ),
                            Semantics(
                              button: true,
                              label:
                                  'Leads to the ApplyTexas Application Website',
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final url = Uri.https('www.applytexas.org');
                                    await launchUrl(url);
                                  },
                                  child: const Text('ApplyTexas')),
                            ),
                            Semantics(
                              button: true,
                              label: 'Leads to the Coalition App website',
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final url = Uri.https(
                                        'app.scoir.com', 'app/signup/1100493');
                                    await launchUrl(url);
                                  },
                                  child: const Text('Coalition App')),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            const Text('Step 2: Complete the Application',textAlign: TextAlign.center,),
                            const Text(
                                'You\'ll need personal, demographic and educational information ready.',textAlign: TextAlign.center,),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            const Text(
                                'Step 3: Request and send official transcripts to St. Mary\'s with the contact information below',textAlign: TextAlign.center,),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            const Text(
                                'Step 4: Submit any additional documents (optional)',textAlign: TextAlign.center,),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            const Text(
                                'Step 5: Contact department about any scholarships or additional aid opportunities.',textAlign: TextAlign.center,),
                            SizedBox(
                                child: Semantics(
                              image: true,
                              label:
                                  'image of four people, 2 female presenting, 2 male presenting, walking and talking at the bell tower circle. Behind them is Reinbolt Chapel and Tower.',
                              child:
                                  Image.asset('images/undergradAdmission.jpg'),
                            ))
                          ],
                        ),
                      )),
                ]),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Column(
                  children: [
                    const Text(
                      'Graduate',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                        height: 685,
                        width: 140,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: Column(
                            children: [
                              const Text(
                                  'Step 1: Click button and check for necessary materials for your desired degree',textAlign: TextAlign.center,),
                              const Text('May include:',textAlign: TextAlign.center,),
                              const Text('- letters of recommendation',textAlign: TextAlign.center,),
                              const Text('- GRE/GMAT',textAlign: TextAlign.center,),
                              const Text('- Resume/CV',textAlign: TextAlign.center,),
                              const Text('- Statement of Purpose',textAlign: TextAlign.center,),
                              Semantics(
                                button: true,
                                label:
                                    'Leads to the St. Mary\'s graduate admission webpage',
                                child: ElevatedButton(
                                    onPressed: () async {
                                      final url = Uri.https('www.stmarytx.edu',
                                          'admission/graduate-admission/#requirements');
                                      await launchUrl(url);
                                    },
                                    child: const Text('StMU Grad Admissions ', textAlign: TextAlign.center,)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              const Text(
                                  'Step 2: Complete application with necessary materials ready',textAlign: TextAlign.center,),
                              Semantics(
                                button: true,
                                label:
                                    'Leads to the St. Mary\'s University Online Application Portal',
                                child: ElevatedButton(
                                    onPressed: () async {
                                      final url = Uri.https(
                                          'apply.stmarytx.edu', 'apply');
                                      await launchUrl(url);
                                    },
                                    child: const Text('StMU Online App')),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              const Text(
                                  'Step 3: Contact department about any Graduate Assistant positions or other types of financial aid.',textAlign: TextAlign.center,),
                              const Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              SizedBox(
                                  child: Semantics(
                                image: true,
                                label:
                                    'image of five people, 4 female presenting, 1 male presenting, walking and talking with yellow and purple flowers at the bottom and the edge of the fountain to the right. Behind are trees and a cream building',
                                child: Image.asset('images/gradAdmission.jpg'),
                              ))
                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Text('Contact The Office of Admission',textAlign: TextAlign.center,),
            const Text('Via email: uadm@stmarytx.edu',textAlign: TextAlign.center,),
            const Text('Via Campus Location: Chaminade Tower',textAlign: TextAlign.center,),
            const Text('Via Mail: One Camino Santa Maria (street)',textAlign: TextAlign.center,),
            const Text('San Antonio (city), Texas (state)',textAlign: TextAlign.center,),
            const Text('78228 (zipcode)',textAlign: TextAlign.center,),
          ]),
        ],
      ),
    );
  }
}
