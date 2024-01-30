import 'package:disneyland_app/models/admin_model/admin_model.dart';
import 'package:disneyland_app/models/character_model/character_model.dart';
import 'package:disneyland_app/models/misc/search_items.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:flutter/material.dart';

class AdminStateService with ChangeNotifier {
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

class UserStateService extends ChangeNotifier {
  List<UserModel> allusers = [];

  //all users
  void setAllUsers(List<UserModel> users) {
    allusers = users;
    notifyListeners();
  }

  //get all users
  List<UserModel> getAllUsers() {
    return allusers;
  }

  //delete user
  void deleteUser(int id) {
    int index = allusers.indexWhere((element) => element.userId == id);
    if (index != -1) {
      allusers = List<UserModel>.from(allusers)..removeAt(index);
      notifyListeners();
    }
  }

  //add user
  void addUser(UserModel user) {
    allusers = [...allusers, user];
    notifyListeners();
  }

  //update user
  void updateUser(UserModel user) {
    int index = allusers.indexWhere((element) => element.userId == user.userId);
    allusers = List<UserModel>.from(allusers)..[index] = user;
    notifyListeners();
  }

  //get user by index
  UserModel getUserByIndex(int index) {
    return allusers[index];
  }

  //get user by id
  UserModel getUserById(int id) {
    return allusers.firstWhere((element) => element.userId == id);
  }
}

class CharacterStateService extends ChangeNotifier {
  List<CharacterModel> allcharacters = [];

  //all characters
  void setAllCharacters(List<CharacterModel> characters) {
    allcharacters = characters;
    notifyListeners();
  }

  //get all characters
  List<CharacterModel> getAllCharacters() {
    return allcharacters;
  }

  //delete character
  void deleteCharacter(int id) {
    int index = allcharacters.indexWhere((element) => element.characterId == id);
    if (index != -1) {
      allcharacters = List<CharacterModel>.from(allcharacters)..removeAt(index);
      notifyListeners();
    }
  }

  //add character
  void addCharacter(CharacterModel character) {
    allcharacters = [...allcharacters, character];
    notifyListeners();
  }

  //update character
  void updateCharacter(CharacterModel character) {
    int index = allcharacters.indexWhere((element) => element.characterId == character.characterId);
    allcharacters = List<CharacterModel>.from(allcharacters)..[index] = character;
    notifyListeners();
  }

  //get character by index
  CharacterModel getCharacterByIndex(int index) {
    return allcharacters[index];
  }

  //get character by id
  CharacterModel getCharacterById(int id) {
    return allcharacters.firstWhere((element) => element.characterId == id);
  }
}

///this class deal with search states
///
///
class SearchState extends ChangeNotifier {
  List<SearchData> searchItems = [];

  List<SearchData> itemsToshow = [];

  //setting global api token
  setSearchList(List<SearchData> searchList) {
    searchItems = searchList;
    notifyListeners();
  }

  //set Items to show
  setItemsToShow(List<SearchData> items) {
    itemsToshow = items;
    notifyListeners();
  }

  //gett all searchItems
  List<SearchData> getSearchList() {
    return searchItems;
  }
}
