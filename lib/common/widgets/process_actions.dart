import 'package:flutter/material.dart';

class ProcessActions extends StatelessWidget {
  const ProcessActions(
      {super.key,
      required this.iconData,
      required this.label,
      required this.processDone});

  final IconData iconData;
  final String label;
  final bool processDone;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: processDone
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
                color: processDone
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primary.withOpacity(0.3),
                width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              iconData,
              size: 35,
              color: processDone
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: processDone
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.3)),
            ),
          ),
        )
      ],
    );
  }
}
