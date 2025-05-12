

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:valstore/presentation/base/base_viewmodel.dart';

abstract class BaseStatefulWidget<T extends BaseViewModel> extends State<StatefulWidget> {

  late T viewModel;

  Widget onBuildWidget(BuildContext context);

  @override
  void didChangeDependencies() {
    viewModel = Provider.of<T>(context, listen: true);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return onBuildWidget(context);
  }
}