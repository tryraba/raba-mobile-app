DateTime? parseDate(String? date) {
  if (date == null) return null;
  final parts = date.split('-');
  if (parts.length == 1) {
    // year only
    return DateTime(int.parse(parts[0]));
  }
  if (parts.length == 2) {
    // year-month only
    return DateTime(int.parse(parts[0]), int.parse(parts[1]));
  }
  return DateTime.parse(date);
}
