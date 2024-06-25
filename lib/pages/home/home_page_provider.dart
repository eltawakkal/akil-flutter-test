import 'package:akil_flutter_test/models/example_data_response.dart';
import 'package:akil_flutter_test/services/example_endpoint.dart';
import 'package:flutter/foundation.dart';

class HomePageProvider extends ChangeNotifier {

  bool _isMaxRequest = false;
  bool _isRequesting = false;
  bool _isRequestError = false;
  bool _isRequestSuccess = false;

  bool get isRequesting => _isRequesting;
  bool get isRequestError => _isRequestError;
  bool get isRequestSuccess => _isRequestSuccess;

  int currentPage = 1;
  int totalPage = 0;

  List<Data> userList = [];

  setRequesting(bool status) {
    _isRequesting = status;
    notifyListeners();
  }

  setRequestError(bool status) {
    _isRequestError = status;
    notifyListeners();
  }

  setRequestSuccess(bool status) {
    _isRequestSuccess = status;
    notifyListeners();
  }

  getUsers(int page) async {
    currentPage = page;

    if (currentPage == 1) {
      userList.clear();
    }

    setRequesting(true);
    setRequestError(false);

    try {

      ExampleDataResponse response = await ExampleEndpoint.getUsers(page);

      totalPage = response.totalPages!.toInt();

      userList.addAll(response.data!);

      setRequestSuccess(true);
      setRequestError(false);
    } catch (_) {
      setRequestError(true);
      setRequestSuccess(false);
    }

    setRequesting(false);
    print('total page: $totalPage\ncurrent page: $currentPage');
  }

}