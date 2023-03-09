import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:adam/config/colors.dart';
import 'package:adam/config/pd.dart';
import 'package:adam/models/products.dart';

class ProductHorizontalListItem extends StatelessWidget {
  final Product product;
  final bool discount;
  const ProductHorizontalListItem({
    Key? key,
    required this.product,
    required this.discount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: PsDimens.space4,
      ),
      width: PsDimens.space180,
      child: InkWell(
        onTap: () {},
        child: Card(
          elevation: 0.0,
          color: Colors.transparent,
          child: Container(
            // padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: PsColors.secondary50,
              borderRadius:
                  const BorderRadius.all(Radius.circular(PsDimens.space8)),
            ),
            child:
                // Stack(
                //   children: <Widget>[
                Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Container(
                        width: double.infinity, //PsDimens.space180,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(PsDimens.space4),
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: context.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            if (true)
                              Container(
                                margin: const EdgeInsets.only(
                                    top: PsDimens.space4,
                                    left: PsDimens.space4,
                                    right: PsDimens.space4),
                                height: 25,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(PsDimens.space4),
                                    color: PsColors.mainColor),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: PsDimens.space4,
                                        left: PsDimens.space4,
                                        right: PsDimens.space4),
                                    child: Text('sold out',
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: PsColors.white))),
                              ),
                            if (false)
                              Container(
                                margin: const EdgeInsets.only(
                                    top: PsDimens.space4,
                                    left: PsDimens.space4,
                                    right: PsDimens.space4),
                                height: 25,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(PsDimens.space4),
                                    color: Colors.red),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: PsDimens.space4,
                                        left: PsDimens.space4,
                                        right: PsDimens.space4),
                                    child: Text(
                                        '5% ${'dashboard__is_discount'}',
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: PsColors.white))),
                              ),
                          ],
                        ),
                      ),
                      if (true)
                        Positioned(
                          top: PsDimens.space6,
                          right: PsDimens.space6,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: PsDimens.space4,
                                  left: PsDimens.space4,
                                  right: PsDimens.space4,
                                  bottom: PsDimens.space4),
                              decoration: BoxDecoration(
                                  color: PsColors.white,
                                  border: Border.all(color: PsColors.white),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.favorite_border,
                                color: PsColors.secondary200,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: PsDimens.space8,
                            right: PsDimens.space8,
                            top: PsDimens.space8),
                        child: Text(
                          product.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            // color: PsColors.secondary800,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: PsDimens.space8,
                      right: PsDimens.space8,
                      top: PsDimens.space4,
                      bottom: PsDimens.space4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Material(
                                  type: MaterialType.transparency,
                                  child: Text(
                                    product.price.toString(),
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            decoration: discount
                                                ? TextDecoration.lineThrough
                                                : TextDecoration.none,
                                            color: PsColors.textColor1,
                                            fontSize: 15),
                                  )),
                              Visibility(
                                  maintainSize: true,
                                  maintainAnimation: true,
                                  maintainState: true,
                                  visible: discount,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: PsDimens.space4),
                                        child: Text(
                                          '${product.price - 1000}',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      ),
                      // Row(
                      //   children: <Widget>[
                      //     Expanded(
                      //       child: Row(
                      //         children: <Widget>[
                      //           Icon(
                      //             Icons.location_on_outlined,
                      //             size: 12,
                      //             color: Colors.grey[400],
                      //           ),
                      //           Expanded(
                      //               child: Padding(
                      //                   padding: const EdgeInsets.only(
                      //                       left: PsDimens.space4,
                      //                       right: PsDimens.space4),
                      //                   child: Text('product.cityName',
                      //                       overflow: TextOverflow.ellipsis,
                      //                       textAlign: TextAlign.start,
                      //                       style: Theme.of(context)
                      //                           .textTheme
                      //                           .bodySmall!
                      //                           .copyWith(
                      //                               fontSize: 12,
                      //                               color:
                      //                                   PsColors.textColor3)))),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      if (true)
                        const SizedBox(
                          height: PsDimens.space6,
                        ),
                    ],
                  ),
                ),
              ],
            ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
