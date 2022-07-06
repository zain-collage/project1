import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:project1/tes/s.dart';

class CustomPainterImageProfile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = defaultColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    double degToRad(num deg) => deg * (3.14 / 180.0);
    Path path = Path();
    path.arcToPoint(Offset(0, size.height),
        radius: Radius.circular(70), clockwise: true);
    canvas.drawPath(path, paint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomClipperImageProfile extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.arcToPoint(Offset(0, size.height),
        radius: Radius.circular(70), clockwise: true);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
//! Test
// class A3 extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint_0_fill = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//     // paint_0_fill.color = Colors.white;
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.4426891, size.height * 2.715845);
//     // path_0.moveTo(size.width * 0.4426891, size.height * 2.715845);
//     path_0.lineTo(size.width * 0.3825483, size.height * 2.716557);
//     // path_0.cubicTo(
//     //     size.width * 0.3825483,
//     //     size.height * 2.716557,
//     //     size.width * 0.3825483,
//     //     size.height * 2.715875,
//     //     size.width * 0.3825483,
//     //     size.height * 2.714564);
//     path_0.lineTo(size.width * 0, size.height * 2.706392);
//     path_0.lineTo(size.width * 0, size.height * 2.209508);
//     path_0.lineTo(size.width * 0, size.height * 2.209508);
//     path_0.cubicTo(
//       size.width * 0.2790633,
//       size.height * 2.209508,
//       size.width * 0.3299170,
//       size.height * 2.215099,
//       size.width * 0.3703818,
//       size.height * 2.122769,
//     );
//     path_0.cubicTo(
//         size.width * 0.3921328,
//         size.height * 2.080049,
//         size.width * 0.4125995,
//         size.height * 2.067986,
//         size.width * 0.4293893,
//         size.height * 2.069379);
//     path_0.cubicTo(
//         size.width * 0.4461790,
//         size.height * 2.067980,
//         size.width * 0.4666458,
//         size.height * 2.080049,
//         size.width * 0.4883968,
//         size.height * 2.122769);
//     path_0.cubicTo(
//         size.width * 0.5288616,
//         size.height * 2.215105,
//         size.width * 0.5797153,
//         size.height * 2.209508,
//         size.width * 0.5797153,
//         size.height * 2.209508);
//     path_0.lineTo(size.width, size.height * 2.209508);
//     path_0.lineTo(size.width, size.height * 2.710866);
//     path_0.lineTo(size.width, size.height * 2.715445);
//     // path_0.cubicTo(
//     //     size.width * 0.4762348,
//     //     size.height * 2.716180,
//     //     size.width * 0.4762348,
//     //     size.height * 2.716557,
//     //     size.width * 0.4762348,
//     //     size.height * 2.716557);
//     path_0.close();

//     canvas.drawPath(path_0, paint_0_fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

