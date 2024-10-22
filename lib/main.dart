import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorScreen(),
    );
  }
}

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find a Doctor'),
        actions: [
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search doctor...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/6e76/389f/b8c80d0899c8c8ea2b2d81ea6e01642f?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T8AfzMv5GWrd4BDhoHTb64DH0dmsiP8M6LCqhkcdtv36lvxLh6AMe0cVARTg8M4Gp5wfvtUngAUCBrXMKnmmhN0kG0wKSKS1NVI24sA4FCev76659~XlyMxnTH7G7OwC7cyg1tcvWDFzVE71iAbjq8Wr3CckBSo6ZlLZuvs43xRcw3CpCsNcFDeLfY8TiNx86MZwv5fEqOrvXsPmfXqAOSIpKN~hZgemkjOoQTqB8NoH685iObIxoTp0ZqbOp31QE6ZIv02fAqtng5uz9V8Y7hZYUJcfHeKealKuoHTpMgTPJdTnKFqBqyWCYIiw9teBrO1kmFzSDpK62prnLtk1Uw__'),
                          radius: 30,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            'Looking for Specialist Doctors?',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard(icon: Icons.health_and_safety, label: 'Cardiology', color: Colors.red),
                  CategoryCard(icon: Icons.child_care, label: 'Pediatrics', color: Colors.blue),
                  CategoryCard(icon: Icons.healing, label: 'Orthopedics', color: Colors.green),
                  CategoryCard(icon: Icons.woman, label: 'Gynecology', color: Colors.purple),
                  CategoryCard(icon: Icons.visibility, label: 'Ophthalmology', color: Colors.cyan),
                  CategoryCard(icon: Icons.psychology, label: 'Neurology', color: Colors.indigo),
                  CategoryCard(icon: Icons.bloodtype, label: 'Laboratory', color: Colors.pink),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Nearby Medical Centers',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            CenterList(),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Doctors',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            DoctorList(),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  CategoryCard({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            child: Icon(icon, color: color), // Use the color passed in for icon
            radius: 30,
            backgroundColor: Colors.grey[200], // Background color for the circle
          ),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}

class CenterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CenterCard(centerName: 'Sunrise Health Clinic', reviews: 56, imageUrl: 'https://s3-alpha-sig.figma.com/img/9f50/e360/edb80c5d0e9f43d9cc9e7c48030fa945?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RoJ98DbJBEpeZsFWN24bJBhJamuMvwiVBwMrPuZ1zgOSuTEo91lU2Vk~agCaRVXPYDu7F4msG6oAArqfXfauP6WvSsu-yWEUX0GhbP~DSyAl-3TAP3z78eFhX2BpbZ1yHqrLvGOJuLeNURMFDJrzdM1xIqimyc4lUNYmbMTMZd8YspioQtaZ-VPiVVN7iTzkwndfcVkvSfMWGlqwiGARVY-xos7Vhlgx0BUiHlH6vg3CaaxJJLYvZTfGKD1aPAq1CrqQ5E4vCfnWEydfNtqyQcO80~9F70FTyA-k~7zvtvkdnKJY2sy3M4RT4GeTAEo5~AW459JJYvG-9RWwvuEFWA__'),
        CenterCard(centerName: 'Golden Cardio Clinic', reviews: 120, imageUrl: 'https://s3-alpha-sig.figma.com/img/0b53/b0b9/f213d7dbdf0e01693c868dd621270fcb?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=D~rVgId0XGki1KncJOQuLo7i-bVoIIs7FmHJowX0vR3u6sT27ORrnSbKsMwYzU-reRH8BEs8cRIUSsCTxilwh-GGVUFTBUpX54bwFL1hsGakl~cuA~MreMXgpxrPqkQF0toEmLYEZurH4NLjol8osUFYhEi15LKmK4jloYdTC4ihzi~d-IreR~1iDEPXE64pzMDKrKHdPe3oTY7LiQDBPT2yHuN2Txhh66digXrBFLyvhzXTK0PLrDTPBUgX5450uzVnC84IMlblWHC9MBmgEcL3Yc~78nyHpvVoe5cFeCkWY2MKY09YeD4BwRkZkRRH8EqC81J~VfNEbsNO1FSKtw__'),
      ],
    );
  }
}

class CenterCard extends StatelessWidget {
  final String centerName;
  final int reviews;
  final String imageUrl;

  CenterCard({required this.centerName, required this.reviews, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 30,
        ),
        title: Text(centerName),
        subtitle: Text('$reviews reviews'),
        trailing: Icon(Icons.star, color: Colors.yellow),
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DoctorCard(
          doctorName: 'Dr. David Patel',
          specialization: 'Cardiologist',
          location: 'Cardiology Center, USA',
          imageUrl:
          'https://s3-alpha-sig.figma.com/img/ab8e/d8d0/b0db1e98ab7f1a31afba13769f282033?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HEFib6NI3OLKRXAhdUDhESy6N7m5wWxT5hnnR654~SuxMt617Y2YESBcaDAO25r6UC7oCCSBEh7ZkSFzSeFqTIuUzBzj7rIl1fjRQsDZUVdIEvvuw3FbZWxk3uwMRFCYhYJRnNnNR2o0HeEfxz2e9wjej2AIiQgtMHIWLHNYSZyeewKORkPtS9lXkJbaEv4m2JalrCJ3q4xXOKtn4o7lxiyANhiKdmI9zxE44r4-7ebAJhQFcUDFjQ3S93hph~1Q~rv~Cw93haNdmytybv517lSWYWbm~5gz0yI6-RV09GV8YGn4akchunrFTKIfYzFVEDA89b9QPc2ZDyT-dgbBEg__',
        ),
        DoctorCard(
          doctorName: 'Dr. Jessica Turner',
          specialization: 'Gynecologist',
          location: 'Women\'s Clinic, Seattle, USA',
          imageUrl:
          'https://s3-alpha-sig.figma.com/img/eda2/ee92/bffb300537aa46caf4c65351a0a20dde?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IJ8hNEjXiZ0IJlLkHu-PAxPPkvOuJi9Zht4376dKNua697PCZILXCD5fYgHuBBBnqo~PEUtxz4ohndq2FMPK3KtclERp0C6xIEFSVSgTR2ViDQRZ5tx-WfcWMnPR5RmbshYda0oMtNuQ8uFqUevn8jMdjAjWe7cLQoFVsQmQPA3DVq~HltPIull0Ilep3MBDmwErDRr2dpsrP~NMoEDZoUN4zWRQQydZpoBrD8JGqwOXUurIpwNvvnaROC-d5omuc5fN-iZemSBWcPI-sXrXT5n~rlYlxFmi4krdy~XVocjzXw9yyP~TNhyhgyO0UlyS7STSElCJG9FqEFfjiRtUTg__',
        ),
        DoctorCard(
          doctorName: 'Dr. Michael Johnson',
          specialization: 'Orthopedic Surgeon',
          location: 'Maple Associates, NY, USA',
          imageUrl: 'https://s3-alpha-sig.figma.com/img/86b5/e652/0800f3ee36c944ded270e36c1763aaed?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HgIsfLm~gzu5pFjwuLVfIb-FiBaK0J1UnCO06AaGkrgxcA-5OdDeh3fueB2~t8B7wvQWX-~Ty9Rbtk7jCckimtY0YJBf-6D6m67Ps-r2tVqbXKN~ySiQ7IhoU0dxtzJQ4tif57DX72qhfA~AqcGnX2GtU0oivFGX0joH4011BgQIZXntj6Afi4dFWKvvwUqR~GDMLaldiC5e~XAdbUnA~16quLbvzXUg~ATexAgRmm5kIpMi0PyyEocNQFjfPIZm0rFL5sOaZ35lH~qLoXvCnHYo0XcwiPHkixp8bVUULNX6yTOW-QQhChD52bPTz~5O~epOw~3um3QBUcv3EAe2ag__', // Local image for this doctor
        ),
        DoctorCard(
          doctorName: 'Dr. Emily Walker',
          specialization: 'Pediatrics',
          location: 'Serenity Pediatrics Clinic',
          imageUrl: 'https://s3-alpha-sig.figma.com/img/f501/868c/d62449885187cf0eb057a3fdee941589?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Npw95p7nvROKuLKeAMRy6RUvohsrkaA0006KO35THwd26EqjI9bKYVxkM-rcZXUFCFpq~C0NPf9Nertpd6RigwWaydpo6lm9jkY6i97c9vujAR-OBbMdGheZi6auuc3mL3U-VbX15kgOZrdLchC6kidR-K0w1I7bo90mS4bHgUdmHbqWRy4VAwR1Ad-j33~l~zdhGc~7tcIMEDM4sTuePXkAx2TC6Iesifjo0UatQJGzzGqfqsIaXIokykdYTOWo1G-~OkNfVZ7aE6B1txiAnh0qZB-iVPQiPBoDFdKNDGesHs0HSbNSMCojCkQjf3kfqVP0t6AwJvtqqzwieB7Nxg__', // Local image for this doctor
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String location;
  final String imageUrl;

  DoctorCard({
    required this.doctorName,
    required this.specialization,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 30,
        ),
        title: Text(doctorName),
        subtitle: Text('$specialization\n$location'),
        trailing: Icon(Icons.favorite_border),
      ),
    );
  }
}
