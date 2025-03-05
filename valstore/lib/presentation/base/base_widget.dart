

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

abstract class BaseWidget<T extends ChangeNotifier, V extends StatefulWidget> extends State<V> {
  late T viewModel;

  bool isInit = false;

  void onPresented();
  Widget onBuildWidget(BuildContext context);

  @override
  void didChangeDependencies() {
    viewModel = Provider.of<T>(context, listen: true);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if(!isInit) {
      onPresented();
      isInit = true;
    }
    
    return onBuildWidget(context);
  }
}