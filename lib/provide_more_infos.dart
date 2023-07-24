import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoreInfoPrince extends ConsumerStatefulWidget {
  const MoreInfoPrince({
    super.key,
    required this.email,
  });
  final String email;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MoreInfoPrinceState();
}

class _MoreInfoPrinceState extends ConsumerState<MoreInfoPrince> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
