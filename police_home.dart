import 'package:flutter/material.dart';

class PoliceHomePage extends StatelessWidget {
  const PoliceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Police Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Alert History",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with dynamic data count
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.notification_important),
                      title: Text("Alert #${index + 1}"),
                      subtitle: const Text("Ambulance incoming - clear route."),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Optionally navigate to alert details
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
