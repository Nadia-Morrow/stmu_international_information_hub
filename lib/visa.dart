import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class VisaPage extends StatefulWidget {
  const VisaPage({super.key});

  @override
  _VisaPage createState() => _VisaPage();
}

class _VisaPage extends State<VisaPage> {
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
          Column(
            children: [
              const Center(
                child: Text(
                  'VISA',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Semantics(
                image: true,
                label:
                    'image of 5 people in front of the St. Mary\'s metal sign with St. Louis building behind them',
                child: Image.asset('images/visa.jpg'),
              ),
              const Text(
                'To join St. Mary\'s as an international student, student must obtain a visa. There are two options: F-1 Visa and J-1 Visa. Below we will explain the difference.',
                textAlign: TextAlign.center,
              ),

              Row(children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                SizedBox(
                    height: 450,
                    width: 140,
                    child: DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Column(children: const [
                          Text(
                            'F-1 Visa',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Most common for students',
                            textAlign: TextAlign.center,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Text(
                            '- Any source of financial support is acceptable.',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Must show financial support for first year',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Work on-campus does not require work permit, off-campus does',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Dependents not eligible for any work permit.',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Dependents may study part time or in non-academic classes.',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Need to complete the I-20',
                            textAlign: TextAlign.center,
                          )
                        ]))),
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 16),
                ),
                SizedBox(
                    height: 450,
                    width: 140,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Column(children: const [
                          Text(
                            'J-1 Visa',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Generally for students in specific educational exchange programs',
                            textAlign: TextAlign.center,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Text(
                            '- 51% or more of financial support from institutional or government sponsor',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Must show financial support for entire length of program',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Any work requires a work permit',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Dependents may get permission to work but not guaranteed',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- May be required to return to home country for two years',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- May be barred from receiving J-1 Professor or Research Scholar if participated 12 months before',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- Need to complete the DS-2019',
                            textAlign: TextAlign.center,
                          )
                        ])))
              ]),
              const Padding(padding: EdgeInsets.only(top: 15)),
              const Text(
                'StMU VISA Requirements',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Undergraduates',
                style: TextStyle(
                    fontSize: 14, decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Enroll for at least 12 credit hours per semester',
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Three credit hours may be from distance education courses',
                textAlign: TextAlign.center,
              ),
              const Text(
                'Graduates',
                style: TextStyle(
                    fontSize: 14, decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Enroll for at least eight credits per semester',
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Three credit hours may be from distance education courses',
                textAlign: TextAlign.center,
              ),
              const Text(
                'Law Students',
                style: TextStyle(
                    fontSize: 14, decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Enroll at least 10 credits per semester',
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Three credit hours may be from distance education courses',
                textAlign: TextAlign.center,
              ),
              const Text(
                'Summer Session',
                style: TextStyle(
                    fontSize: 14, decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              const Text(
                '* Enroll full time',
                textAlign: TextAlign.center,
              ),
              const Text(
                '\t\t- Undergraduates: 12 credit hours',
                textAlign: TextAlign.center,
              ),
              const Text(
                '\t\t- Graduate/Law: 3 credit hours',
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
