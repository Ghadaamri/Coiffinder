import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      home: BeautySalonDetailsPage(),
    );
  }
}

class BeautySalonDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beauty Salon Details'),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Salon Name: Elegant Beauty Spa',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            Text(
              'Welcome to Elegant Beauty Spa, where we provide top-notch beauty services in a relaxing and luxurious environment.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Location:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            Text(
              '123 Beauty Street, Cityville, Country',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Services Available:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ServiceCard('Haircut', '\$30 - \$50'),
                  ServiceCard('Manicure', '\$20 - \$35'),
                  ServiceCard('Pedicure', '\$25 - \$40'),
                  ServiceCard('Massage', '\$50 - \$80'),
                  ServiceCard('Makeup', '\$40 - \$60'),
                  ServiceCard('Waxing', '\$15 - \$30'),
                  // Add more service cards as needed
                ],
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Special Treatments:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TreatmentCard('Facial', '\$50 - \$100'),
                  TreatmentCard('Spa', '\$80 - \$120'),
                  TreatmentCard('Bridal Packages', '\$150 - \$300'),
                  TreatmentCard('Nail Art', '\$20 - \$50'),
                  TreatmentCard('Hair Coloring', '\$60 - \$120'),
                  // Add more treatment cards as needed
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReservationPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
                child: Text(
                  'Réserver',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final String priceRange;

  ServiceCard(this.serviceName, this.priceRange);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                serviceName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(priceRange),
            ],
          ),
        ),
      ),
    );
  }
}

class TreatmentCard extends StatelessWidget {
  final String treatmentName;
  final String priceRange;

  TreatmentCard(this.treatmentName, this.priceRange);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                treatmentName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(priceRange),
            ],
          ),
        ),
      ),
    );
  }
}

class ReservationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réserver un rendez-vous'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formulaire de réservation',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            // Add reservation form fields here
          ],
        ),
      ),
    );
  }
}
