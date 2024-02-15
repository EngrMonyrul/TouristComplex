import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:turistappvisaquery/common/constants/visa_process.dart';

class DataProcessingView extends StatelessWidget {
  const DataProcessingView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        children: List.generate(visaProcessItems.length, (index) {
          final visaItem = visaProcessItems[index];
          return Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: screenSize.height * .15,
                width: screenSize.width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: index == 0
                                  ? screenSize.height * 0.05
                                  : screenSize.height * .1,
                              width: screenSize.width * .04,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: index == 0
                                    ? const BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        topLeft: Radius.circular(5))
                                    : null,
                              ),
                            ),
                            Container(
                              height: screenSize.height * 0.05,
                              width: screenSize.width * .1,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: CircleAvatar(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                child: Text("${index + 1}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(visaItem.date!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold)),
                          Container(
                            height: screenSize.height * .05,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(Icons.search),
                                ),
                                SizedBox(width: screenSize.width * .05),
                                Text(
                                  "File Received",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "File Received",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "File Received",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                    fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30,
                bottom: 45,
                child: Transform.rotate(
                  angle: -10,
                  child: Text("----------------",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
