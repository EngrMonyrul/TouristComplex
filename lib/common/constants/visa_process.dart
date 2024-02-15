import 'package:turistappvisaquery/data/models/visa_process.dart';
import 'package:flutter/material.dart';

final visaProcessItems = [
  VisaProcess(
    icon: Icons.search,
    name: "File Received",
    done: true,
    date: "12 January, 2024",
    message:
    "Your file has been received. Please wait we are reviewing your documents.",
    alert: "Image Missing, NOC Missing",
  ),
  VisaProcess(
    icon: Icons.engineering,
    name: "On Process",
    done: true,
    date: "18 January, 2024",
    message:
    "We have successfully received all the required files. Please be pa�ent, we are working on your visa file.",
  ),
  VisaProcess(
    icon: Icons.contact_phone_rounded,
    name: "Submitted to Embassy / Online",
    done: true,
    date: "25 January, 2024",
    message:
    "Your file is submitted to embassy. You may received call or email from embassy anytime. Please make sure your phone is your nearby.",
    alert: "Embassy work may delay due to rush time.",
  ),
  VisaProcess(
    icon: Icons.home_work,
    name: "Received from Embassy / Online",
    done: false,
    date: "01 February, 2024",
    message:
    "We have received your file from embassy. Please wait, we are checking your file.",
  ),
  VisaProcess(
    icon: Icons.shopping_cart,
    name: "Ready to Collect",
    done: false,
    date: "10 February, 2024",
    message:
    "Your visa file is ready. Please collect it from our office. Thank you for being with Cosmos Holiday.",
  ),
];
