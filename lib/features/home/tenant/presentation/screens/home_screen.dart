import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/colors.dart';
import 'package:pexza/utils/helpers.dart';
import 'package:pexza/widgets/horizontal_spacer.dart';
import 'package:pexza/widgets/icon_button.dart';
import 'package:pexza/widgets/vertical_spacer.dart';
import 'package:pexza/utils/utils.dart';

class TenantHomeScreen extends StatelessWidget with AutoRouteWrapper {
  final List<Property> props = Property.list;

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.height * 0.02),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    "Hi, Dammy",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 22.0,
                    minRadius: 18.0,
                    child: Text("DA"),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.height * 0.03),
            //
            TextFormField(
              maxLines: 1,
              enableSuggestions: true,
              autocorrect: false,
              cursorColor: Theme.of(context).accentColor,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.done,
              style: TextStyle(fontSize: 17.0),
              decoration: const InputDecoration(
                hintText: "What do you want to do?",
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //     style: BorderStyle.none,
                //     width: 0.0,
                //   ),
                // ),
                contentPadding: EdgeInsets.only(top: 14.0, bottom: 14.0),
                prefixIcon: Icon(
                  Icons.search_sharp,
                  size: 20.0,
                ),
              ),
              onChanged: (value) {},
              validator: (value) {},
              onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
            ),
            //
            VerticalSpace(height: App.height * 0.03),
            //
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: props.length,
              separatorBuilder: (_, __) =>
                  VerticalSpace(height: App.height * 0.01),
              itemBuilder: (context, i) => InkWell(
                splashColor: Colors.grey.shade300,
                onTap: () => navigator.pushTenantPropertyDetailScreen(
                  property: props.elementAt(i),
                  onReject: (guard) {
                    print('Route Navigation rejected! ' + guard.toString());
                  },
                ),
                child: Hero(
                  tag: props.elementAt(i).id.value,
                  child: Container(
                    height: App.height * 0.09,
                    padding: EdgeInsets.symmetric(horizontal: App.width * 0.05),
                    decoration: BoxDecoration(
                      color: props.elementAt(i).color.getOrNull,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: HorizontalSpace(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  props.elementAt(i).type.getOrEmpty,
                                  style: TextStyle(
                                    color: AppColors.accentColor,
                                    fontSize: 18.0,
                                  ),
                                  maxLines: 1,
                                ),
                                //
                                VerticalSpace(height: 6.0),
                                //
                                AutoSizeText(
                                  props.elementAt(i).location.getOrEmpty,
                                  style: TextStyle(
                                    color: Helpers.computeLuminance(
                                        props.elementAt(i).color.getOrNull),
                                    fontSize: 16.0,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        AppIconButton(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.keyboard_backspace_rounded,
                              color: Helpers.computeLuminance(
                                  props.elementAt(i).color.getOrNull),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
