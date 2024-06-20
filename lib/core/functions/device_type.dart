import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';

DeviceType getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }

  if (width >= 950) {
    return DeviceType.desktop;
  } else if (width >= 600) {
    return DeviceType.tablet;
  }
  return DeviceType.phone;
}
