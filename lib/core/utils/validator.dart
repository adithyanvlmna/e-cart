String? feildValidation(String? value, {String? msg, bool submitted = false}) {


  if (!submitted) return null;

  if (value == null || value.trim().isEmpty) {
    return msg ?? "Field is required";
  }

  return null;
}