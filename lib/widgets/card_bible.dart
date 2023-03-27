import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardBible extends StatelessWidget {
  const CardBible({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: const Text('here title'),
          subtitle: const Text(
              'Ea consequat esse in ipsum do ea deserunt. Tempor sunt est id elit dolor mollit occaecat adipisicing elit nulla do officia cupidatat aliqua. Culpa enim ullamco ad incididunt sit. Ut proident consectetur est mollit incididunt. Fugiat eiusmod ut eu non occaecat adipisicing ex.Deserunt proident nulla pariatur'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
