import 'package:flutter/material.dart';

class EmergencyContact extends StatefulWidget {
  const EmergencyContact({super.key});

  @override
  State<EmergencyContact> createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: Row(
          children: [
            Icon(Icons.call_outlined, color: Colors.white,),
            SizedBox(width: 10,),
            const Text("Emergency", style:TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              color:  Color(0xFF2C2C2C),
              child: Column(
                children: [
                  _buildOptionTile("RailWay","images/rail.png"  ),
                  Divider(color: Colors.white30),
                  _buildOptionTile("Bus","images/travel.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Casualty Hospital","images/places.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Medical Financial help","images/money.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Ambulance","images/ambulance.png" ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Blood Bank","images/blood.png" ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Child Helpline","images/childcall.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Airline","images/travelling.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Fire Brigade","images/fire.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Crane Service","images/crane.png"  ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("Roadway Enquiries","images/enquiry.png" ),
                  Divider(color: Colors.white30,),

                  _buildOptionTile("IMP Medical Message","images/message.png" ),
                ],
              ),
            )),
      ),
    );
  }
}
Widget _buildOptionTile(String title, String imagePath, {double height = 30, double width = 30}) {
  return Container(
    height: 60,
    width: double.infinity,
    color: Color(0xFF2C2C2C),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white70,

                child: Image.asset(
                  imagePath,
                  height: height, // Height of the image
                  width: width,   // Width of the image
                ),
              ),
              const SizedBox(width: 17),
              Text(title, style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w700,fontSize: 17),),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white70,),
        ],
      ),
    ),
  );
}

