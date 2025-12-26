// import 'dart:convert';
// import 'package:e_mart/core/utils/app_urls.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiClient {
//   Future<Map<String, dynamic>> post(
//     String endpoint, {
//     Map<String, String>? headers,
//   }) async {
//     final url = AppUrls.baseUrl + endpoint;
//     print("URL => $url");

//     try {
//       final response = await http
//           .post(
//             Uri.parse(url),
//             headers: {
//               'Accept': 'application/json',
//               ...?headers,
//             },
//           )
//           .timeout(const Duration(seconds: 15));

//       print("STATUS => ${response.statusCode}");
//       print("BODY => ${response.body}");

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return jsonDecode(response.body);
//       } else {
//         throw Exception(
//           jsonDecode(response.body)['message'] ?? 'Server error',
//         );
//       }
//     } catch (e) {
//       print("API ERROR => $e");
//       rethrow;
//     }
//   }
// }

