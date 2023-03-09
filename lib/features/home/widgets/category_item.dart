import 'package:adam/config/colors.dart';
import 'package:adam/config/pd.dart';
import 'package:flutter/material.dart';

class CategoryHorizontalListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
            horizontal: PsDimens.space6, vertical: PsDimens.space8),
        child: Container(
          width: PsDimens.space80,
          height: PsDimens.space80,
          child: InkWell(
            onTap: () {},
            child: Ink(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //cat image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(PsDimens.space24),
                      child: Container(
                        width: PsDimens.space44,
                        height: PsDimens.space44,
                        color: PsColors.secondary100,
                        padding: const EdgeInsets.all(PsDimens.space10),
                        child: Image.asset(
                          'assets/images/logo.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: PsDimens.space8,
                    ),
                    //cat name
                    Flexible(
                      child: Text(
                        'name',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: PsColors.secondary600, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
