import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FurtherSteps extends ConsumerStatefulWidget {
  const FurtherSteps(
      {super.key, required this.interestList, required this.email});
  final List<String> interestList;
  final String email;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FurtherStepsState();
}

class _FurtherStepsState extends ConsumerState<FurtherSteps> {
  Map firstActn = ref.watch(provider);
  firstActn['interest']
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
