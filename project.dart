class Project {
  String? title;
  int? price;
  DateTime? receivingDate;
  DateTime? deadline;
  bool _isUiDone = false;
  bool _isFlutterDone = false;
  bool _isBackendDone = false;
  bool _isProjectDone = false;
  Project(
      {required this.title,
      required this.price,
      required this.receivingDate,
      required this.deadline});

  get getIsUiDone {
    return _isUiDone;
  }

  get getIsFlutterDone {
    return _isFlutterDone;
  }

  get getIsBackendDone {
    return _isBackendDone;
  }

  get getIsProjectDone {
    return _isProjectDone;
  }

  void uiFinished() {
    _isUiDone = true;
    if (_isUiDone == true && _isFlutterDone == true && _isBackendDone == true) {
      _isProjectDone = true;
    }
  }

  void flutterFinished() {
    _isFlutterDone = true;
    if (_isUiDone == true && _isFlutterDone == true && _isBackendDone == true) {
      _isProjectDone = true;
    }
  }

  void backendFinished() {
    _isBackendDone = true;
    if (_isUiDone == true && _isFlutterDone == true && _isBackendDone == true) {
      _isProjectDone = true;
    }
  }

  @override
  String toString() {
    return "project title : $title \n"
        "project price : $price \n"
        "project receivingDate : $receivingDate \n"
        "project title : $deadline ";
  }
}
