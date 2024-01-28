import 'package:disneyland_app/models/admin_model/admin_model.dart';
import 'package:flutter/material.dart';

class AppStateService with ChangeNotifier {
  List<AdminData> alladmins = [];

  //all admins
  void setAllAdmins(List<AdminData> admins) {
    alladmins = admins;
    notifyListeners();
  }

  //get all admins
  List<AdminData> getAllAdmins() {
    return alladmins;
  }

  //delete admin
  void deleteAdmin(int id) {
    int index = alladmins.indexWhere((element) => element.adminId == id);
    if (index != -1) {
      alladmins = List<AdminData>.from(alladmins)..removeAt(index);
      notifyListeners();
    }
    // alladmins = List<AdminData>.from(alladmins)..removeAt(index);
    // notifyListeners();
  }

  //add admin
  void addAdmin(AdminData admin) {
    alladmins = [...alladmins, admin];
    notifyListeners();
  }

  //update admin
  void updateAdmin(AdminData admin) {
    int index = alladmins.indexWhere((element) => element.adminId == admin.adminId);
    alladmins = List<AdminData>.from(alladmins)..[index] = admin;
    notifyListeners();
  }

  //get admin by index
  AdminData getAdminByIndex(int index) {
    return alladmins[index];
  }

  //get admin by id
  AdminData getAdminById(int id) {
    return alladmins.firstWhere((element) => element.adminId == id);
  }
}
