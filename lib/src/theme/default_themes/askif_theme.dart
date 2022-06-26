import 'package:flutter/material.dart';
import 'package:tabbed_view/src/theme/content_area_theme_data.dart';
import 'package:tabbed_view/src/theme/equal_heights.dart';
import 'package:tabbed_view/src/theme/menu_theme_data.dart';
import 'package:tabbed_view/src/theme/tab_status_theme_data.dart';
import 'package:tabbed_view/src/theme/tab_theme_data.dart';
import 'package:tabbed_view/src/theme/tabbed_view_theme_data.dart';
import 'package:tabbed_view/src/theme/tabs_area_theme_data.dart';

/// Predefined minimalist theme builder.
class AskIfTheme {
  static TabbedViewThemeData build({required MaterialColor colorSet}) {
    return TabbedViewThemeData(
        tabsArea: tabsAreaTheme(colorSet: colorSet),
        tab: tabTheme(colorSet: colorSet),
        contentArea: contentAreaTheme(colorSet: colorSet),
        menu: menuTheme(colorSet: colorSet));
  }

  static TabsAreaThemeData tabsAreaTheme({required MaterialColor colorSet}) {
    return TabsAreaThemeData(
        buttonsAreaDecoration: BoxDecoration(color: colorSet[50]!),
        normalButtonColor: colorSet[700]!,
        hoverButtonColor: colorSet[700]!,
        disabledButtonColor: colorSet[300]!,
        buttonsAreaPadding: EdgeInsets.all(2),
        buttonPadding: const EdgeInsets.all(2),
        hoverButtonBackground: BoxDecoration(color: colorSet[300]!),
        equalHeights: EqualHeights.all,
        border: Border(bottom: BorderSide(color: colorSet[700]!, width: 1)));
  }

  static TabThemeData tabTheme({required MaterialColor colorSet}) {
    return TabThemeData(
      buttonsOffset: 10,
      textStyle: TextStyle(color: colorSet[900]!, fontSize: 13),
      padding: EdgeInsets.fromLTRB(6, 3, 3, 3),
      paddingWithoutButton: EdgeInsets.fromLTRB(6, 3, 6, 3),
      decoration: BoxDecoration(
          color: colorSet[50]!,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10))),
      normalButtonColor: colorSet[900]!,
      hoverButtonColor: colorSet[900]!,
      disabledButtonColor: colorSet[400]!,
      buttonPadding: const EdgeInsets.all(2),
      hoverButtonBackground: BoxDecoration(color: colorSet[300]!),
      highlightedStatus:
          TabStatusThemeData(
              decoration:
              BoxDecoration(
                  color: colorSet[300]!,
                  borderRadius:
                  BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)))),
      selectedStatus: TabStatusThemeData(
          normalButtonColor: colorSet[50]!,
          hoverButtonColor: colorSet[50]!,
          disabledButtonColor: colorSet[500]!,
          hoverButtonBackground: BoxDecoration(
                  color: colorSet[600]!,
                  borderRadius:
                  BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
          fontColor: colorSet[50]!,
          decoration: BoxDecoration(
              color: colorSet[700]!,
              borderRadius:
              BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 3,
                blurRadius: 1,
                offset: Offset(0, 7), // changes position of shadow
              ),
            ],
          )
      ),
    );
  }

  static ContentAreaThemeData contentAreaTheme(
      {required MaterialColor colorSet}) {
    BorderSide borderSide = BorderSide(width: 1, color: colorSet[900]!);
    BoxBorder border =
        Border(bottom: borderSide, left: borderSide, right: borderSide);
    BoxDecoration decoration =
        BoxDecoration(
            color: colorSet[50]!,
            borderRadius:
            BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)));
    return ContentAreaThemeData(decoration: decoration);
  }

  static MenuThemeData menuTheme({required MaterialColor colorSet}) {
    return MenuThemeData(
        border: Border.all(width: 1, color: colorSet[900]!),
        margin: EdgeInsets.all(8),
        menuItemPadding: EdgeInsets.all(8),
        textStyle: TextStyle(color: colorSet[900]!, fontSize: 13),
        color: colorSet[50]!,
        hoverColor: colorSet[200]!,
        dividerColor: colorSet[400]!,
        dividerThickness: 1);
  }
}
