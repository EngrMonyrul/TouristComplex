import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turistappvisaquery/common/constants/visa_process.dart';
import 'package:turistappvisaquery/common/widgets/custom_appbar.dart';
import 'package:turistappvisaquery/core/views/data_processing.dart';

import '../../common/widgets/applicant_details.dart';
import '../../common/widgets/area_details.dart';
import '../../common/widgets/process_actions.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showLeadingIcon: false,
        title: const Text("Visa Query"),
        leadingIconData: Icons.arrow_back,
        leadingOnPressed: () {
          Navigator.pop(context);
        },
        actionWidgets: [
          IconButton(
            onPressed: () {},
            icon: const Badge(
              label: Text("1"),
              offset: Offset(1, -2),
              child: Icon(CupertinoIcons.bell_fill),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Track Your Visa Status',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Card(
                        color: Colors.white.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5),
                          child: Text(
                            "Provide Passport Number",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Card(
                        color: Colors.white.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5),
                          child: Text(
                            "Provide Invoice Number",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5),
                    child: Text(
                      "Track Visa Status",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                AreaDetails(label: "Thailand", viewDetailsPressed: () {}),
                const SizedBox(height: 10),
                AreaDetails(label: "Singapore", viewDetailsPressed: () {}),
                const SizedBox(height: 10),
                AreaDetails(label: "Malaysia", viewDetailsPressed: () {}),
                const SizedBox(height: 10),
                Card(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your visa file is",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 0),
                                child: Text(
                                  "90%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                ),
                              ),
                            ),
                            Text(
                              "Complete",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            )
                          ],
                        ),
                        Text(
                          "------- Visa Tracking Process -------",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: visaProcessItems.length,
                            itemBuilder: (context, index) {
                              final visaItem = visaProcessItems[index];
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProcessActions(
                                      iconData: visaItem.icon!,
                                      label: visaItem.name!,
                                      processDone: visaItem.done!),
                                  Visibility(
                                    visible:
                                        index < (visaProcessItems.length - 1),
                                    child: SizedBox(
                                      height: 50,
                                      width: 35,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: visaItem.done!
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                            : Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .08),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ApplicantDetails(
                                  iconData: Icons.person,
                                  label: "Applicant Name",
                                  value: "Mr. Sultan Mahmud"),
                              ApplicantDetails(
                                  iconData: Icons.book,
                                  label: "Applicant Passport",
                                  value: "Mr. Sultan Mahmud"),
                              ApplicantDetails(
                                  iconData: Icons.date_range,
                                  label: "Applicant Date of Birth",
                                  value: "26/01/1996"),
                              ApplicantDetails(
                                  iconData: CupertinoIcons.globe,
                                  label: "Country Name",
                                  value: "Malaysia")
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const DataProcessingView(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("SPECIAL NOTES",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                  ),
                ),
                Card(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      """Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here.Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here. Any text,image, link can be place here.""",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
