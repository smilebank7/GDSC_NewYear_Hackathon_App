import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdsc_newyear_q/pages/meta/multi_scenario.dart';

class Meta extends ConsumerWidget {
  const Meta({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:[
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: MultiScenario(),
                ),
              )
            ]
          ),
        )
      )

    );
  }
}