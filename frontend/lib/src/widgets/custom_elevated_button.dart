import 'package:clam_project/src/core/app_palette.dart';
import 'package:flutter/material.dart';

/// A customizable elevated button with scale animation and solid color or gradient background.
/// Provides visual feedback on press and supports various styling options.
/// Parameters:
/// - [onPressed]: Callback function when the button is pressed.
/// - [padding]: Padding around the button.
/// - [contentPadding]: Padding inside the button around the child widget.
/// - [borderRadius]: Border radius of the button.
/// - [backgroundColor]: Solid background color of the button (used in solid constructor).
/// - [foregroundColor]: Color of the button's child widget.
/// - [gradient]: Gradient background of the button (used in gradient constructor).
/// - [elevation]: Elevation of the button for shadow effect.
/// - [child]: The widget displayed inside the button.
///
/// ## Usage Example:
///
/// ### Solid Button
/// ```dart
/// CustomElevatedButton.solid(
///   onPressed: () { /* Handle press */ },
///   child: Text('Solid Button'),
/// );
/// ```
///
/// ### Gradient Button
/// ```dart
/// CustomElevatedButton.gradient(
///   onPressed: () { /* Handle press */ },
///   gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
///   child: Text('Gradient Button'),
/// );
/// ```
/// Note: Ensure that either [backgroundColor] or [gradient] is provided based on the constructor used.
/// Throws [ArgumentError] if [elevation] is negative.
class CustomElevatedButton extends StatefulWidget {
  /// Callback function when the button is pressed.
  final VoidCallback onPressed;

  /// Padding around the button.
  final EdgeInsetsGeometry padding;

  /// Padding inside the button around the child widget.
  final EdgeInsetsGeometry contentPadding;

  /// Border radius of the button.
  final double borderRadius;

  /// Solid background color of the button (used in solid constructor).
  /// Defaults to [Palette.primaryColor].
  /// Ignored if [gradient] is provided.
  final Color? backgroundColor;

  /// Color of the button's child widget.
  /// Defaults to [Palette.textColorLight].
  final Color? foregroundColor;

  /// Gradient background of the button (used in gradient constructor).
  /// Ignored if [backgroundColor] is provided.
  final Gradient? gradient;

  /// Elevation of the button for shadow effect.
  /// Must be non-negative. Defaults to 4.0.
  final double elevation;

  /// The widget displayed inside the button.
  final Widget child;

  /// Creates a [CustomElevatedButton] with a solid background color.
  /// The [backgroundColor] defaults to [Palette.primaryColor].
  /// The [elevation] parameter must be non-negative.
  /// The [onPressed] and [child] parameters are required.
  ///
  /// Example:
  /// ```dart
  /// CustomElevatedButton.solid(
  ///   onPressed: () { /* Handle press */ },
  ///   backgroundColor: Colors.blue,
  ///   child: Text('Solid Button'),
  /// );
  /// ```
  /// See also: [CustomElevatedButton.gradient]
  /// See Class: [CustomElevatedButton] for more details.
  CustomElevatedButton.solid({
    super.key,
    required this.onPressed,
    this.padding = const EdgeInsets.all(8.0),
    this.contentPadding = const EdgeInsets.all(12.0),
    this.borderRadius = 8.0,
    this.backgroundColor = Palette.primaryColor,
    this.foregroundColor = Palette.textColorLight,
    this.elevation = 4.0,
    required this.child,
  }) : gradient = null {
    if (elevation < 0) throw ArgumentError('Elevation cannot be negative');
  }

  /// Creates a [CustomElevatedButton] with a gradient background color.
  /// The [gradient] parameter is required.
  /// The [elevation] parameter must be non-negative.
  /// The [onPressed] and [child] parameters are required.
  ///
  /// Example:
  /// ```dart
  /// CustomElevatedButton.gradient(
  ///   onPressed: () { /* Handle press */ },
  ///   gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
  ///   child: Text('Gradient Button'),
  /// );
  /// ```
  /// See also: [CustomElevatedButton.gradient]
  /// See Class: [CustomElevatedButton] for more details.
  CustomElevatedButton.gradient({
    super.key,
    required this.onPressed,
    this.padding = const EdgeInsets.all(8.0),
    this.contentPadding = const EdgeInsets.all(12.0),
    this.borderRadius = 8.0,
    required Gradient this.gradient,
    this.foregroundColor = Palette.textColorLight,
    this.elevation = 4.0,
    required this.child,
  }) : backgroundColor = null {
    if (elevation < 0) throw ArgumentError('Elevation cannot be negative');
  }

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: Durations.short3,
        child: GestureDetector(
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          onTapCancel: _onTapCancel,
          child: IntrinsicWidth(
            child: AnimatedContainer(
              duration: Durations.short3,
              curve: Curves.easeInOut,
              constraints: const BoxConstraints(minHeight: 60, minWidth: 100),
              decoration: BoxDecoration(
                color: widget.gradient == null ? widget.backgroundColor : null,
                gradient: widget.gradient,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                boxShadow: [
                  if (widget.elevation > 0)
                    BoxShadow(
                      color: Colors.black26,
                      offset: _isPressed
                          ? Offset.zero
                          : Offset(2, widget.elevation / 2),
                      blurRadius: widget.elevation,
                    ),
                ],
              ),
              child: Padding(
                padding: widget.contentPadding,
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: widget.foregroundColor,
                    fontSize: 16,
                    fontFamily: 'Goldplay',
                  ),
                  child: Center(child: widget.child),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) => setState(() {
    _isPressed = true;
  });

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
    widget.onPressed();
  }

  void _onTapCancel() => setState(() {
    _isPressed = false;
  });
}
