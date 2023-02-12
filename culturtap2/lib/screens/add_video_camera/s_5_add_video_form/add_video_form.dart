import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/form_provider.dart';
import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/star.dart';
import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/successPage.dart';
import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/textformField.dart';
import 'package:culturtap/screens/edit_profile_screen.dart/form/dropdowns/drop1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// final text1 =   GoogleFonts.poppins( fontSize: 16, color: Colors.white,
//   fontWeight: FontWeight.w700,
// );

text1({size = 16.0, color = Colors.white, fontWeight = FontWeight.w700}) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: fontWeight);
}

class ProviderFormPage extends StatefulWidget {
  const ProviderFormPage({Key? key}) : super(key: key);
  @override
  _ProviderFormPageState createState() => _ProviderFormPageState();
}

class _ProviderFormPageState extends State<ProviderFormPage> {
  final _formKey = GlobalKey<FormState>();
  late FormProvider _formProvider;
  var DropdownButton1;
  String? dropdownvalue = 'private';
  var items = <String>['private', 'protected'];
  @override
  Widget build(BuildContext context) {
    _formProvider = Provider.of<FormProvider>(context);
    return Scaffold(
      // ------------------------- app bar ---------------
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios_rounded),
                  Text(
                    'Back',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                'COMPOSE',
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Icon(
                Icons.settings,
                size: 25,
              )
            ],
          )),

      // ------------------------------------------------------
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.black,
            child: SingleChildScrollView(
                child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),

                    // margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: Colors.white),
                        Text('Location', style: text1()),
                        Text('284002, Out Side datia gate, Jhansi',
                            style: text1()),
                        SizedBox(
                          height: 30,
                        ),
                        Text('EDIT', style: text1(color: Colors.orange)),
                      ],
                    ),
                  ),
                  Text('Describe ypur experience', style: text1()),
                  CustomFormField(
                    hintText: 'Type Here ...',
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r"[a-zA-Z]+|\s"),
                      )
                    ],
                    onChanged: _formProvider.validateName,
                    errorText: _formProvider.name.error,
                  ),
                  Text('What you don’t like about this place? ',
                      style: text1()),
                  CustomFormField(
                    hintText: 'Type Here ...',
                    onChanged: _formProvider.validateName,
                    errorText: _formProvider.email.error,
                  ),
                  Text('Review this place ', style: text1()),
                  CustomFormField(
                    hintText: 'Type Here ...',
                    onChanged: _formProvider.validatePhone,
                    errorText: _formProvider.phone.error,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r"[0-9]"),
                      )
                    ],
                  ),
                  Text('Rate your Expereince here ', style: text1()),
                  mystar(),


                  Container(
                    // height: 50,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                   
                   
                ),


                   padding: EdgeInsets.fromLTRB(  30, 5, 30, 5),
                    child: DropdownButton<String>(dropdownColor: Color.fromARGB(255, 255, 255, 255),
                      icon: const Icon(Icons.expand_more, color: Color.fromARGB(255, 0, 0, 0)),


                    
                    value: dropdownvalue,  
                      items: items.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style:const TextStyle(color: Color.fromARGB(255, 0, 0, 0)
                          )),
                        );
                      }).toList(),
                      onChanged: (selectedItem) {
                        setState(() {
                          dropdownvalue = selectedItem;
                          print(DropdownButton1);
                        });
                      },
                    ),
                  ),
                  Consumer<FormProvider>(builder: (context, model, child) {
                    return ElevatedButton(
                      onPressed: () {
                        if (model.validate) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => success_page(),
                            ),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    );
                  })
                ],
              ),
            ))),
      ),
    );
  }
}
