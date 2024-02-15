import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    required this.showLeadingIcon,
    this.leadingIconData,
    this.actionWidgets,
    this.leadingOnPressed,
    this.centerTitle,
  });

  final Widget? title;
  final bool showLeadingIcon;
  final IconData? leadingIconData;
  final List<Widget>? actionWidgets;
  final VoidCallback? leadingOnPressed;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle ?? false,
      title: title,
      actions: actionWidgets,
      leading: showLeadingIcon
          ? IconButton(
              onPressed: leadingOnPressed,
              icon: const Icon(Icons.arrow_back),
            )
          : leadingIconData != null
              ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIconData),
                )
              : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
