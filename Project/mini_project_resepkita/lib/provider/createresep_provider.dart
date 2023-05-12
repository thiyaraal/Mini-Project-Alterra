import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/models/create_model.dart';

class ResepListProvider with ChangeNotifier {
  final List<ResepModel> _resepList = [];
  final TextEditingController _bahanawalController = TextEditingController();
  final TextEditingController _bahantambahanController = TextEditingController();
  /////////////////////////////
  final TextEditingController _caramasakController = TextEditingController();

  /// underscroe provate field
  ///getter untuk mengambil Reseplist
  List<ResepModel> get resepList => _resepList;
  TextEditingController get bahanawalController => _bahanawalController;
  TextEditingController get bahantambahanController => _bahantambahanController;
  ////////////////////////////
  TextEditingController get caramasakController => _caramasakController;

  ///nmabah resep
  // ignore: non_constant_identifier_names
  void addResep(ResepModel ResepModel) {
    _resepList.add(ResepModel);
    _bahanawalController.clear();
    _bahantambahanController.clear();
    ////////////////
     _caramasakController.clear();
    notifyListeners();
  }

  void removeResep() {
    _resepList.removeLast();
    notifyListeners();
  }

}
