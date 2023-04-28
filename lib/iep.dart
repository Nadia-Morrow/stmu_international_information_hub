import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:stmu_international_hub/visa.dart';
import 'package:url_launcher/url_launcher.dart';

import 'guide.dart';

class IEPPage extends StatefulWidget {
  const IEPPage({super.key});

  @override
  _IEPPage createState() => _IEPPage();
}

class _IEPPage extends State<IEPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('StMU International Students Hub')),
        actions: <Widget>[
          Semantics(
              image: true,
              label:
                  'Image of the St. Mary\'s University logo. The logo has a capital s, lowercase t, capital m and capital u. The letters are outline with blue then white then yellow. Under the letters, there is a cartoon snake, the St. Mary\'s mascot.',
              child: Image.asset('images/logo.png')),
        ],
      ),
      body: FooterView(
          flex: 8,
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
          children: [
            Center(
              child: Flexible(
                child: Column(
                  children: [
                    const Text(
                      'Intensive English Program',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Semantics(
                      image: true,
                      label:
                          'Image of a textured map of the world. The texture comes from a pyramid. There are circles within the countries connected by lines. It is also a gradient of the rainbow across the world. Blue on the far left to green on the far right.',
                      child: Image.asset('images/iep.jpg'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    const Text(
                      'Program Overview',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'The Intensive English Program was created to assist international students develop their English proficiency to communicate in an academic and professional setting. The requirements of IEP include:',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '\t\t\t- Minimum of 18 years of age',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '\t\t\t- High school graduate',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '\t\t\t- Minimum TOEFLT iBT score of 19-29 or IELTS 2.5',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '\t\t\t- Active participation in class',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '\t\t\t- Basic understanding of the English language',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '\t\t\t- Basic English communication skills',
                      textAlign: TextAlign.center,
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
                    const Text(
                      'Important Dates Fall 2023',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'Application Deadline: June 1',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'Placement Testing and Orientation: Monday, August 7 - Friday, August 11',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'First Day of Class/Tuition Due: Monday, August 14',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'Last Day of Class: Friday, November 17',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'IEP Final/Exit Program: November 15 - 16',
                      textAlign: TextAlign.center,
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
                    const Text(
                      'IEP Application Checklist',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5),),
                    const Text(
                      '1. Obtain copy of passport',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '2. Retrieve financial documentation proving capability of affording program',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '3. Complete Online application',
                      textAlign: TextAlign.center,
                    ),
                    Semantics(
                      button: true,
                      label:
                          'Leads to the St. Mary\'s University Online Application Portal for IEP',
                      child: ElevatedButton(
                          onPressed: () async {
                            final url = Uri.https('apply.stmarytx.edu',
                                'register/IEP?_ga=2.158446777.2073629009.1652796495-1084597466.1647893683');
                            await launchUrl(url);
                          },
                          child: const Text('IEP Application')),
                    ),
                    const Text(
                      '4. Upon acceptance, request an I-20 or DS-2019',
                      textAlign: TextAlign.center,
                    ),
                    Semantics(
                      button: true,
                      label: 'Leads to app page that explains process for visa',
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const VisaPage();
                            }));
                          },
                          child: const Text('VISA')),
                    ),
                    const Text(
                      '4.5. For transfer students only, complete the IEP transfer form.',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '5. Obtain mandatory health insurance(Can purchase one through university.)',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '6. Provide evidence of Meningitis vaccine and current Tuberculosis screening (Health center page)',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '7. Upload financial guarantee forms',
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '8. Submit all paperwork before application deadline',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
