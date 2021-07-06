// Assume design is nokia 5.1 plus which is smaller than samsung phone but has same aspect ratio
import 'package:flutter/material.dart';

const double designHeightInPixels = 878;
const double designWidthInPixels = 424;

bool Function(BuildContext context) isAsTallAsDesign =
    (context) => MediaQuery.of(context).size.height >= designHeightInPixels;
