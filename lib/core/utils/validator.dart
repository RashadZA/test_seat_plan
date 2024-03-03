class Validator{
  static String? rowValidator(String? value) {
    if (value?.trim().isEmpty ?? true) return "Row required!";

    if (value != null && double.parse(value) <= 0 ) {
      return "Row required!";
    }else if(value != null && double.parse(value) > 5){
      return "Max 5 rows.";
    }
    return null;
  }
  static String? columnValidator(String? value) {

   if(value != null && double.parse(value) > 5){
      return "Max 5 column.";
    }
    return null;
  }
}
