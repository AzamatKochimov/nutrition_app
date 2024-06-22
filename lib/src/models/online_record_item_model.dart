class OnlineRecordItemModel {

  OnlineRecordItemModel({
    required this.companyName,
    required this.masterName,
    required this.masterLocation,
    required this.recordTime,
    required this.cost,
    required this.masterID,
    required this.companyID,
  });
  final String companyName;
  final int masterID;
  final int companyID;
  final String masterName;
  final String masterLocation;
  String recordTime;
  final String cost;
}
