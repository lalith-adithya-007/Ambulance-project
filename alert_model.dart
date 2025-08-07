class AlertModel {
  final String patientLocation;
  final String driverLiveLocationUrl;
  final DateTime timestamp;

  AlertModel({
    required this.patientLocation,
    required this.driverLiveLocationUrl,
    required this.timestamp,
  });
}
