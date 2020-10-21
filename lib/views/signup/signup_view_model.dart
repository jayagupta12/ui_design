import 'package:ui_design/core/base/base_view_model.dart';
import 'package:ui_design/core/locator.dart';
import 'package:ui_design/core/services/callapi.dart';

class SignupViewModel extends BaseViewModel {
  SignupViewModel();
   final ApiService _api = locator<ApiService>();

  // Add ViewModel specific code here
  Future registerUser(String fname,String lname,String email,String phoneno,String zipcode,String password) async {
    busy = true;
    
  
      var response = await _api.getSigninResponse(fname,lname,email,phoneno,zipcode,password);
      print(response);
     
    busy = false;
  }
}