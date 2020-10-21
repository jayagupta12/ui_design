library signup_view;


import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'signup_view_model.dart';

part 'signup_mobile.dart';
part 'signup_tablet.dart';
part 'signup_desktop.dart';

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SignupViewModel viewModel = SignupViewModel();
    return ViewModelProvider<SignupViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _SignupMobile(viewModel),
          desktop: _SignupDesktop(viewModel),
          tablet: _SignupTablet(viewModel),  
        );
      }
    );
  }
}