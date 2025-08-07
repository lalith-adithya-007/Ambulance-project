import 'package:flutter/material.dart';

class PoliceHomePage extends StatelessWidget {
  const PoliceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traffic Police Dashboard'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Received Alerts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Change to dynamic count if fetching from backend
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(Icons.local_hospital, color: Colors.red),
                      title: Text('Ambulance Alert #${index + 1}'),
                      subtitle: const Text('Patient Address: Example Location'),
                      trailing: IconButton(
                        icon: const Icon(Icons.map),
                        onPressed: () {
                          // Navigate to live location (future enhancement)
                        },
                      ),
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
