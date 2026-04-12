part of '../ut_style.dart';

class UtResponsiveSize {
  final bool isMobile;
  final bool isFullWidth;
  final Size size;
  UtResponsiveSize({
    required this.isMobile,
    required this.isFullWidth,
    required this.size,
  });
  factory UtResponsiveSize.fromSize({
    required Size size,
    required double mobileWidth,
    required double fullWidth,
  }) {
    return UtResponsiveSize(
      size: size,
      isMobile: mobileWidth > size.width,
      isFullWidth: size.width > mobileWidth && size.width > fullWidth,
    );
  }
}
