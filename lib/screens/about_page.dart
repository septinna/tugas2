import 'package:flutter/material.dart';
import '../components/footer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> teamImages = [
      'assets/image1.jpg',
      'assets/image2.jpg',
      'assets/image3.jpg',
      'assets/image1.jpg',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/slider1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Center(
                        child: Text(
                          "SHORT STATEMENT\nABOUT THE TEAM",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text("OUR TEAM", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.2,
                    children: List.generate(4, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(teamImages[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "TEAM MEMBER ${index + 1}",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Position ${index + 1}",
                                      style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/slider2.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Center(
                        child: Text(
                          "SHORT STATEMENT\nABOUT THE COMPANY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text("HISTORY", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel est eget nunc mattis ultrices.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Sed ut lectus nunc. Suspendisse potenti. In hac habitasse platea dictumst.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
