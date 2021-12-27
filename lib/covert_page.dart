import 'package:flutter/material.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({Key? key}) : super(key: key);

  @override
  _ConvertPageState createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  var myControler = TextEditingController();
  var m_km = 0.0;
  var m_cm = 0.0;
  var m_mm = 0.0;
  var m_nm = 0.0;

  double convert_from_m_to_km(m) {
    m_km = m / 1000;
    return m_km;
  }

  double convert_from_m_to_cm(m) {
    m_cm = m * 100;
    return m_cm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Converter App" , style: TextStyle(color: Colors.deepPurple, fontSize: 30)),
        backgroundColor: Colors.white54,
      ),
      body: Container(
          color: Colors.deepPurple,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                      scrollPadding: const EdgeInsets.all(20.0),
                      decoration: InputDecoration(
                        labelText: "Enter meters",
                        labelStyle:
                        const TextStyle(fontSize: 35, color: Colors.white),
                        hintText: "Enter meters to start coverting",
                        hintStyle: const TextStyle(fontSize: 15, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 4.0, color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0)),
                        prefixIcon: const Icon(Icons.animation, color: Colors.white),
                      ),
                      keyboardType: TextInputType.number,
                      controller: myControler,
                    )),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  width: 300.0,
                  child: Text("Kilometers result:\n$m_km  Km",
                      style: const TextStyle(fontSize: 20, color: Colors.white)),
                ),
                const SizedBox(height: 30),
                Container(
                    margin: const EdgeInsets.all(12.0),
                    width: 300.0,
                    child: Text("Centimeters result:\n$m_cm  Cm",
                        style: const TextStyle(fontSize: 20, color: Colors.white))),
                const SizedBox(height: 30),
                Container(
                  width: 300.0,
                  margin: const EdgeInsets.all(12.0),
                  child: Text("Millimeters result:\n$m_mm  Mm",
                      style: const TextStyle(fontSize: 20, color: Colors.white)),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300.0,
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(3.0),
                  child: Text("Nanometers result:\n$m_nm  Nm",
                      style: const TextStyle(fontSize: 20, color: Colors.white)),
                ),
                const SizedBox(height: 30),
                Container(
                    margin: const EdgeInsets.all(12.0),
                    child: FlatButton(
                      color: Colors.white,
                      hoverColor: Colors.white12,
                      child: const Text(
                        "Clear",
                        style:
                        TextStyle(fontSize: 30.0, color: Colors.deepPurple),
                      ),
                      textColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () => setState(() {
                        myControler.text = "";
                        // m_km = 0.0;
                        // m_cm = 0.0;
                        // m_mm = 0.0;
                        // m_nm = 0.0;
                      }),
                    ))
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.white12,
        backgroundColor: Colors.white,
        child: const Text("Conv.", style: TextStyle(color: Colors.deepPurple)),
        onPressed: () => setState(() {
          // str = myControler.text.replaceAll(',', '.');
          // convert_from_m_to_km(double.parse(str));
          // convert_from_m_to_cm(double.parse(str));
          // convert_from_m_to_mm(double.parse(str));
          // convert_from_m_to_nm(double.parse(str));
        }),
        tooltip: 'Click to covert',
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
