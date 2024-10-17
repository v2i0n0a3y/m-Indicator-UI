import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        surfaceTintColor: Colors.white70,
        backgroundColor: Color(0xFF2C2C2C),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                children: <Widget>[
                  Text(
                    'Mumbai',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20), // Add some space between the text and images
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space out the images evenly
                    children: <Widget>[
                      Image.asset(
                        'images/share.png', // First image path
                        width: 50,
                        height: 50,
                      ),
                      Image.asset(
                        'images/facebook.png', // Second image path
                        width: 50,
                        height: 50,
                      ),
                      Image.asset(
                        'images/twitter.png', // Third image path
                        width: 50,
                        height: 50,
                      ),
                      Image.asset(
                        'images/playstore.png', // Fourth image path
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  Text("m-Indicator v17.0.309",
                    textAlign:TextAlign.right,
                    style:TextStyle(fontSize: 12, color: Colors.white70),)
                ],
              ),
            ),
            ListTile(
              trailing: Icon(Icons.check_circle_sharp, color: Colors.green,),
              title: Text('Mumbai',style:TextStyle(color: Colors.white54,fontWeight: FontWeight.w700)),
            ),
            Divider(color: Colors.white30,),

            ListTile(
              title: Text('Pune',style:TextStyle(color: Colors.white54,fontWeight: FontWeight.w700)),
            ),

            Divider(color: Colors.white30,thickness: 10,),

            ListTile(
              leading: Icon(Icons.share,color: Colors.white54),
              title: Text('Share',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),
            ListTile(
              leading: Icon(Icons.error_outlined,color: Colors.white54),
              title: Text('Select Language',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),
            ListTile(
              leading: Icon(Icons.star_rate_sharp,color: Colors.white54),
              title: Text('Rate Us',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),

            ListTile(
              leading: Icon(Icons.android,color: Colors.white54),
              title: Text('Upgrade',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),
            ListTile(
              leading: Icon(Icons.phone,color: Colors.white54),
              title: Text('Contact Us',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),
            ListTile(
              leading: Icon(Icons.email,color: Colors.white54),
              title: Text('Feedback',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),

            ListTile(
              leading: Icon(Icons.note_alt_rounded,color: Colors.white54),
              title: Text('Terms & Conditions',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),

            ListTile(
              leading: Icon(Icons.settings,color: Colors.white54),
              title: Text('Settings',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),
            ListTile(
              leading: Icon(Icons.verified, color: Colors.white54,),
              title: Text('Version',style:TextStyle(color: Colors.white54)),
            ),
            Divider(color: Colors.white30,),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Set the color you want here
        ),
        backgroundColor: Colors.red.shade700,
        title: const Text("Mumbai", style:TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                _buildRowWithTiles([
                  "images/rail.png",
                  "images/travel.png",
                  "images/car-wash.png",
                  "images/train.png",
                ], [
                  "Train",
                  "Bus",
                  "Taxi",
                  "Metro",
                ]),
                _buildRowWithTiles([
                  "images/chatt.png",
                  "images/sky.png",
                  "images/track.png",
                  "images/riksha.png",
                ], [
                  "Train Chat",
                  "Mono",
                  "Express",
                  "Auto",
                ]),
                _buildRowWithTiles([
                  "images/cruise.png",
                  "images/job-offer.png",
                  "images/car.png",
                  "images/globe.png",
                ], [
                  "Ferry",
                  "Job",
                  "Cab",
                  "Map",
                ]),
                const SizedBox(height: 20),
                const Text("OTHER", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                _buildOptionTile("Land survey Map","images/location.png",),
                _buildOptionTile("Mumbai Exhibitions", alternate: true,"images/ticket-office.png" ),
                _buildOptionTile("Natak - Marathi Hindi Gujarati", "images/theater.png" ),
                _buildOptionTile("Penalty - Traffic and Railway", alternate: true,"images/red-card.png" ),
                _buildOptionTile("Property","images/house.png"   ),
                _buildOptionTile("Picnic", alternate: true,"images/beach.png"),
                const SizedBox(height: 20),
                const Text("SAFETY", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                _buildOptionTile("Emergency Contact","images/phone-call.png" ),
                _buildOptionTile("Police station locator", alternate: true,"images/policeman.png"  ),
                const SizedBox(height: 20),
                const Text("EXPLORE MUMBAI", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                _buildOptionTile("Mumbai Map","images/pin.png"  ),
                _buildOptionTile("How to travel", alternate: true,"images/transport.png"  ),
                _buildOptionTile("Popular places","images/places.png"  ),
                _buildOptionTile("Shopping", alternate: true,"images/shopping.png"  ),
                _buildOptionTile("Food and Drinks","images/dinner.png" ),
                _buildOptionTile("Hotels", alternate: true,"images/hotel.png" ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildOptionTile(String title, String imagePath, {bool alternate = false, double height = 30, double width = 30}) {
    return Container(
      height: 50,
      width: double.infinity,
      color: alternate ? Colors.white70 : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  imagePath,
                  height: height, // Height of the image
                  width: width,   // Width of the image
                ),
                const SizedBox(width: 10),
                Text(title, style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700),),
              ],
            ),
            const Icon(Icons.arrow_forward_ios_sharp,color: Colors.black54,),
          ],
        ),
      ),
    );
  }
}

class ImageTextTile extends StatelessWidget {
  final String imagePath;
  final String label;
  final double imageHeight;
  final double imageWidth;
  final TextStyle textStyle;
  final Color backgroundColor;

  const ImageTextTile({
    Key? key,
    required this.imagePath,
    required this.label,
    this.imageHeight = 50,
    this.imageWidth = 50,
    this.textStyle = const TextStyle(color: Colors.white, ),
    this.backgroundColor = Colors.white12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 80,
      width: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: imageHeight, width: imageWidth),
          const SizedBox(height: 4), // Space between image and text
          Text(label, style: textStyle),
        ],
      ),
    );
  }
}

Widget _buildRowWithTiles(List<String> imagePaths, List<String> labels) {
  return Container(
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(imagePaths.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ImageTextTile(
            imagePath: imagePaths[index],
            label: labels[index],
          ),
        );
      }),
    ),
  );
}
