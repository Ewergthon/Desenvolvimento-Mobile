import 'package:unithub/core/extensions/date_time_extension.dart';

extension StringDateTimeExtension on String {
  String formatedToBrazilianTime() {
    if (isEmpty) '';

    DateTime? dateTime = DateTime.tryParse(this);

    if (dateTime != null) {
      return dateTime.brazilianDateTime;
    } else {
      return this;
    }
  }

  String? brazilianTime() {
    if (isEmpty) '';

    try {
      DateTime? dateTime = DateTime.parse(this);
      return dateTime.brazilianDateTime;
    } catch (e) {
      return this;
    }
  }
}
