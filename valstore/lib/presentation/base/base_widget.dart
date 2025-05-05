

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:valstore/presentation/base/base_viewmodel.dart';

abstract class BaseStatelessWidget<T extends BaseViewModel> extends StatelessWidget {
  late T viewModel;

  bool isInit = false;

  BaseStatelessWidget({super.key});

  void onPresented(BuildContext context);
  Widget onBuildWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if(!isInit) {
      viewModel = Provider.of<T>(context, listen: true);

      if(!viewModel.isDisposed) {
        onPresented(context);
        isInit = true;
      }
    }

    return onBuildWidget(context);
  }
}