import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: Image.network(
                    'https://picsum.photos/600/200',
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 75.0,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/237/150'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'User Name',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text('Job Title'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Connections'),
                    Text('500+'),
                  ],
                ),
                Column(
                  children: [
                    Text('Posts'),
                    Text('12'),
                  ],
                ),
                Column(
                  children: [
                    Text('Views'),
                    Text('1.2K'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis leo vitae lacus tincidunt aliquet. Quisque vitae nisl id leo sagittis sagittis.'),
                  SizedBox(height: 16.0),
                  Text(
                    'Experience',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.work, color: Theme.of(context).primaryColor),
                    title:
                        Text('Company Name', style: TextStyle(fontSize: 16.0)),
                    subtitle: Text('Job Title\nDuration\nLocation',
                        style: TextStyle(fontSize: 14.0)),
                    trailing: Icon(Icons.more_horiz,
                        color: Theme.of(context).primaryColor),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.work, color: Theme.of(context).primaryColor),
                    title:
                        Text('Company Name', style: TextStyle(fontSize: 16.0)),
                    subtitle: Text('Job Title\nDuration\nLocation',
                        style: TextStyle(fontSize: 14.0)),
                    trailing: Icon(Icons.more_horiz,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Education',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(Icons.school,
                        color: Theme.of(context).primaryColor),
                    title:
                        Text('School Name', style: TextStyle(fontSize: 16.0)),
                    subtitle: Text('Degree\nField of study\nGraduation year',
                        style: TextStyle(fontSize: 14.0)),
                    trailing: Icon(Icons.more_horiz,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
