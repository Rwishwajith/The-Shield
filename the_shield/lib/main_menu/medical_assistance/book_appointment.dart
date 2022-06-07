import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:the_shield/main_menu/medical_assistance/payment_confirm.dart';
import 'package:the_shield/main_menu/reports/reports.dart';
import 'package:the_shield/main_menu/vaccine_compatibility.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  _BookAppointmentScreenState createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  List<dynamic> doctorList = [
    {
      "title": "Dr.Lalith Rajapaksha",
      "image": 'assets/images/lalith.JPG',
      "specialty": "Cardiologist",
      "location": "MOH Kurunegala",
      "rating": 3
    },
    {
      "title": "Dr.Lalith Rajapaksha",
      "image": 'assets/images/VC.png',
      "specialty": "Cardiologist",
      "location": "MOH Kurunegala",
      "rating": 3
    },
    {
      "title": "Dr.Lalith Rajapaksha",
      "image": 'assets/images/VC.png',
      "specialty": "Cardiologist",
      "location": "MOH Kurunegala",
      "rating": 3
    },
  ];



  String doctor = "Doctor";
  String area = "SelectArea";
  String date = "Select Date";
  String illness = "Select the discomfort illness";

  var doctors = [
    'Doctor',
    'Dr. Ranjith',
    'pfyser',
  ];

  var areas = [
    'SelectArea',
    'Dr. Ranjith',
    'pfyser',
  ];

  var illnesses = [
    'Select the discomfort illness',
    'Dr. Ranjith',
    'pfyser',
  ];

  DateTime selectedDate = DateTime.now();
  String dateNow = 'Select Date';

  final AssetImage logoImage =
      const AssetImage('assets/images/shield_logo.png');

  @override
  Widget build(BuildContext context) {

    _selectDate(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950),
        lastDate: DateTime(2030),
      );
      if (selected != null && selected != selectedDate)
        setState(() {
          selectedDate = selected;
          dateNow =
          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
        });
    }

    return Scaffold(
        backgroundColor: Color(0xffcbc5f9),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 140.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Image(image: logoImage, width: 50, height: 50),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 160.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Book an Appointment',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 24,
                              ),
                              DropdownButton(
                                value: doctor,
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                style: TextStyle(color: Colors.black),
                                items: doctors.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    doctor = newValue!;
                                  });
                                },
                                // icon: Padding(
                                //   padding: const EdgeInsets.only(left: 55.0),
                                //   child: Icon(
                                //     Icons.keyboard_arrow_down,
                                //     color: Colors.red.shade900,
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                              DropdownButton(
                                value: area,
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                style: TextStyle(color: Colors.black),
                                items: areas.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    area = newValue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                          height: 60,
                          child: Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: TextFormField(
                              enabled: false,
                              style: TextStyle(color: Colors.black),
                              autofocus: false,
                              autocorrect: false,
                              keyboardType: TextInputType.visiblePassword,
                              // validator: (value) => value.isEmpty?'Please enter email':null,
                              onSaved: (value) => date = value!,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.calendar_today,color: Colors.black,),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  labelText: dateNow,
                                  labelStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            children: [
                              Icon(
                                Icons.coronavirus_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                              DropdownButton(
                                value: illness,
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                style: TextStyle(color: Colors.black),
                                items: illnesses.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    illness = newValue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: (){
                            print('tapped');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 30,
                            alignment: Alignment.center,
                            child: Text(
                              'Search',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFffffff),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            backgroundColor: MaterialStateProperty.all(Color(0xFF5251a34)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Color(0xFF5251a34))),
                            ),
                            minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                          )),
                    ],
                  ),
                ),
            ),
            SizedBox(
              height: 10,
            ),
            doctorListWidget(),
          ],
        )
    );
  }

  Widget doctorListWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Specialities',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,),
              ),
              Icon(Icons.filter_list, color: Colors.black,),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // height: 80,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              reverse: false,
              itemCount: doctorList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {

                AssetImage assetImage = AssetImage(doctorList[index]['image']);

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDoctorScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image(image: assetImage, width: 150, height: 150,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(doctorList[index]['title'], style: TextStyle(
                                      color: Colors.black
                                    ),),
                                    Text(doctorList[index]['specialty'], style: TextStyle(
                                        color: Colors.black
                                    ),),
                                    Text(doctorList[index]['location'], style: TextStyle(
                                        color: Colors.black
                                    ),),
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 1.0,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert, color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BookDoctorScreen extends StatefulWidget {
  const BookDoctorScreen({Key? key}) : super(key: key);

  @override
  _BookDoctorScreenState createState() => _BookDoctorScreenState();
}

class _BookDoctorScreenState extends State<BookDoctorScreen> {

  final AssetImage logoImage = const AssetImage('assets/images/shield_logo.png');
  final AssetImage assetImage = const AssetImage('assets/images/lalith.JPG');

  final AssetImage britain = const AssetImage('assets/images/britain.jpg');
  final AssetImage sriLanka = const AssetImage('assets/images/srilanka.png');

  List<dynamic> availableSlots = [
    {"title": "Thu, 09 May", "sub": '3 Slots available'},
    {"title": "Thu, 10 May", "sub": '2 Slots available'},
    {"title": "Thu, 11 May", "sub": '5 Slots available'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbc5f9),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 140.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Image(image: logoImage, width: 50, height: 50),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 160.0, left: 20.0),
          child: Container(
            height: 50,
            child: Text(
              'Available Slots',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image(image: assetImage,width: 100, height: 100,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dr. Lalith Rajapaksha', style: TextStyle(
                                  color: Colors.black
                              ),),
                              Text('Cardiologist', style: TextStyle(
                                  color: Colors.black
                              ),),
                              Text('MOH', style: TextStyle(
                                  color: Colors.black
                              ),),
                              Text('Kurunegala 5Km', style: TextStyle(
                                  color: Colors.black
                              ),),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                itemSize: 15,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 1.0,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: availableSlots.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12,);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: 260,
                      height: 80,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    availableSlots[index]['title'],
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    availableSlots[index]['sub'],
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  'See All',
                                  style: TextStyle(color: Colors.white, fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  '08:00',
                                  style: TextStyle(color: Colors.black, fontSize: 11),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  '08:00',
                                  style: TextStyle(color: Colors.black, fontSize: 11),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  '08:00',
                                  style: TextStyle(color: Colors.black, fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentConfirmationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      'Book Appointment',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFffffff),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    backgroundColor: MaterialStateProperty.all(Color(0xFF5251a34)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Color(0xFF5251a34))),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff443a77),
                        fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    'Clinic',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    'Feedback',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Languages',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image(image: britain, width: 20, height: 20,),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'English',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Image(image: sriLanka, width: 20, height: 20,),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sinhala',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Education',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.radio_button_off),
                        ),
                        Text(
                          'UCL - Clinique Saint - Luc (1987 - 1999) - Doctor',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.radio_button_off),
                        ),
                        Text(
                          'Cardiologue. Recherche au Laboratoire dechocardiographie.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.radio_button_off),
                        ),
                        Text(
                          'ULG-CHU Start-Tilman (1999 - 2000).Recherche',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Publications',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.radio_button_off),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              'Electrocardiograms Findings - Lebrun F,Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

