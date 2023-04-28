import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stmu_international_hub/admission.dart';
import 'package:stmu_international_hub/extra.dart';
import 'package:stmu_international_hub/guide.dart';
import 'package:stmu_international_hub/iep.dart';
import 'package:stmu_international_hub/studentServices.dart';
import 'package:stmu_international_hub/visa.dart';

void main() {
  runApp(const MyApp());
}
extension ToMaterialColor on Color {
  MaterialColor get asMaterialColor {
    Map<int, Color> shades = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900]
        .asMap()
        .map((key, value) => MapEntry(value, withOpacity(1 - (1 - (key + 1) / 10))));

    return MaterialColor(value, shades);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'St. Mary\'s University International Information Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color(0xFF0D4D84).asMaterialColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Color(0xFFF2CA27).asMaterialColor,
            backgroundColor: Color(0xFF0D4D84)
          )
        )
      ),
      home: const MyHomePage(title: 'StMU International Students Hub'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const text = Text.rich(TextSpan(text: ' ', children: <TextSpan>[
    TextSpan(
        text: '          Welcome',
        style: TextStyle(fontWeight: FontWeight.bold)),
    TextSpan(
        text:
            '\nHere is the place to find important information to help you on your journey to St. Mary\'s. We hope this helps you! :)')
  ]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: FittedBox(fit: BoxFit.fitWidth, child: Text(widget.title)),
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
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:5)),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Semantics(
                        label:
                            "Image of two female presenting students walking past the metal St. Mary's sign. Around the sign is bushes, trees, street light, and the St. Louis Building.",
                        child: Image.asset(
                          'images/homeImage.jpg',
                          width: 150,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 2),
                    ),
                    const Flexible(child: text)
                  ]),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                  ),
                  SizedBox(
                    width: 310,
                    child: DottedBorder(
                      color: Color(0xFF0D4D84),
                      strokeWidth: 1,
                      child: Column( children: const [
                  Text(
                    'Upcoming Deadlines',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3)),
                  Text(
                    'Undergraduate/Graduate',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Fall Semester(August to December): May 1'),
                  Text('Spring Semester(January to May): October 1'),
                  FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                          'Summer Semester(begins late May or early June): February 1')),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  Text(
                    'Intensive English Program(IEP) Fall 2023',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Application Deadline: June 1')]))),
                  Semantics(
                    button: true,
                  label: 'Leads to the app page that gives a guide of the full process',
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const GuidePage();
                        }));
                      },
                      child: const Text('Guide'))),
                  Padding(padding: EdgeInsets.only(right: 10),),
                  Row(children: [
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Semantics(
                      button: true,
                    label: 'Leads to the app page about admissions',
                    child:ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const AdmissionPage();
                          }));
                        },
                        child: const Text('Admission'))),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Semantics(
                      button: true,
                    label: 'Leads to the app page about the student services available on campus',
                    child:ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const StudentServicesPage();
                          }));
                        },
                        child: const Text('Student Services'))),
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.only(left: 90)),
                    Semantics(
                      button: true,
                    label: 'Leads to the app page explaining the intensive english program',
                    child:ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const IEPPage();
                          }));
                        },
                        child: const Text('IEP'))),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Semantics(
                      button: true,
                      label: 'Leads to app page for visa information',
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const VisaPage();
                            }));
                          },
                          child: const Text('VISA')),
                    ),
                  ]),
                  Semantics(
                    button: true,
                  label:'Leads to the page about extracurriculars available at St. Mary\'s',
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const ExtracurricularPage();
                        }));
                      },
                      child: const Text('Extracurriculars'))
                  )],
              ),
            )
          ],
        ));
  }
}
