import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampOrNullConverter implements JsonConverter<DateTime?, dynamic> {
  const TimestampOrNullConverter();

  @override
  Timestamp? toJson(DateTime? date) => date == null ? null : Timestamp.fromDate(date);

  @override
  DateTime? fromJson(dynamic timestamp) {
    if (timestamp is Timestamp) {
      return timestamp.toDate();
    } else if (timestamp is int) {
      return Timestamp.fromMillisecondsSinceEpoch(timestamp).toDate();
    }
    return null;
  }
}
