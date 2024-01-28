// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  var getheaders = {
    "Accept": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
  };
  var postheaders = {
    'Content-Type': 'application/json; charset=utf-8',
    "Accept": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
  };

//method for get calls
  Future<http.Response> getRequest(String link) async {
    var response = await http.get(Uri.parse(link), headers: getheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.get(Uri.parse(link), headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }

  //method for post
  Future<http.Response> putRequest(String link) async {
    var response = await http.put(Uri.parse(link), headers: getheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.put(Uri.parse(link), headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }

  //method for post
  Future<http.Response> putbodyRequest(String link, var body) async {
    var response = await http.put(Uri.parse(link), body: jsonEncode(body), headers: postheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.put(Uri.parse(link), headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }
  //post calls with body method

  Future<http.Response> postRequest(String link, Map<String, dynamic> body) async {
    var response = await http.post(Uri.parse(link), body: jsonEncode(body), headers: postheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.post(Uri.parse(link), body: jsonEncode(body), headers: {
          'Content-Type': 'application/json; charset=utf-8',
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }

  //post calls with body method

  Future<http.Response> postcall(String link) async {
    var response = await http.post(Uri.parse(link), headers: postheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.post(Uri.parse(link), headers: {
          'Content-Type': 'application/json; charset=utf-8',
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }

//delete call with body method
  Future<http.Response> deletRequest(String link, Map<String, dynamic> body) async {
    var response = await http.delete(Uri.parse(link), body: jsonEncode(body), headers: postheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.delete(Uri.parse(link), body: jsonEncode(body), headers: {
          'Content-Type': 'application/json; charset=utf-8',
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }

  //delete call with body method
  Future<http.Response> deleteRequest(String link) async {
    var response = await http.delete(Uri.parse(link), headers: postheaders);
    //if user is not authenticated then refresh token
    if (response.statusCode == 401) {
      var refresh = await http.post(
          Uri.parse('$baseUrl$auth/refresh-token?oldtoken=${TokenService.instance.value.token.value}'),
          headers: postheaders);
      if (refresh.statusCode == 200) {
        UserInfo user = UserInfo.fromJson(jsonDecode(refresh.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //calling tha api again after token updating

        var response = await http.delete(Uri.parse(link), headers: {
          'Content-Type': 'application/json; charset=utf-8',
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": 'Bearer ${TokenService.instance.value.token.value}'
        });
        return response;
      }
    }
    return response;
  }

  //method for refresh token
  Future<http.Response> refreshToken(String link) async {
    var response = await http.post(Uri.parse(link), headers: postheaders);
    return response;
  }
}
