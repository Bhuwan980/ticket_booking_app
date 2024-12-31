import 'package:flutter/material.dart';

class AppLayoutBuilderDots extends StatelessWidget {
  const AppLayoutBuilderDots({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrain) => Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
          // here constrain gives the width available and 6 tells how many dots you want
          (constrain.constrainWidth() / 6).floor(),
          (index) => const SizedBox(
            width: 4,
            height: 1.5,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// just a note for future rererence
/*

1. first layout builder calculate the width of the expanded/widget
2. then it generates the no of dots based on the width where flex is used to gives the space between generate dots

// dots are basically a sized box hight of 3 and width 1.5 

 */
