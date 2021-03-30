import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  paihang, collect, xiazai, paixu_jiangxu, paixu_shengxu, beisu_x, beisu_x_1, beisu_x_2, beisu_x_3, beisu_x_4, beisu_x_5
}

/// A class includes all icons which you provided from https://iconfont.cn
///
/// How to use it:
/// ```dart
/// IconFont(IconNames.xxx);
/// IconFont(IconNames.xxx, color: '#f00');
/// IconFont(IconNames.xxx, colors: ['#f00', 'blue']);
/// IconFont(IconNames.xxx, size: 30, color: '#000');
/// ```
///
/// The name is dynamic to against server interface.
/// Feel free to input string literal.
/// ```dart
/// IconFont('xxx');
/// ```
class IconFont extends StatelessWidget {
  IconNames name;
  final String color;
  final List<String> colors;
  final double size;

  IconFont(dynamic iconName, { this.size = 18, this.color, this.colors }) {
    switch (iconName) {
      case 'paihang':
        iconName = IconNames.paihang;
        break;
      case 'collect':
        iconName = IconNames.collect;
        break;
      case 'xiazai':
        iconName = IconNames.xiazai;
        break;
      case 'paixu_jiangxu':
        iconName = IconNames.paixu_jiangxu;
        break;
      case 'paixu_shengxu':
        iconName = IconNames.paixu_shengxu;
        break;
      case 'beisu_x':
        iconName = IconNames.beisu_x;
        break;
      case 'beisu_x_1':
        iconName = IconNames.beisu_x_1;
        break;
      case 'beisu_x_2':
        iconName = IconNames.beisu_x_2;
        break;
      case 'beisu_x_3':
        iconName = IconNames.beisu_x_3;
        break;
      case 'beisu_x_4':
        iconName = IconNames.beisu_x_4;
        break;
      case 'beisu_x_5':
        iconName = IconNames.beisu_x_5;
        break;

    }

    this.name = iconName;
  }

  static String getColor(int arrayIndex, String color, List<String> colors, String defaultColor) {
    if (color != null && color.isNotEmpty) {
      return color;
    }

    if (colors != null && colors.isNotEmpty && colors.length > arrayIndex) {
      return colors.elementAt(arrayIndex);
    }

    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml;

    switch (this.name) {
      case IconNames.paihang:
        svgXml = '''
          <svg viewBox="0 0 1125 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M52.512821 782.065934h187.545787v241.934066h-187.545787V782.065934zM345.084249 534.505495h195.985348v489.494505H345.084249V534.505495z m291.6337 93.772893h195.047619v394.783883H636.717949v-393.846154z m292.571428-239.120879H1125.274725v634.842491H929.289377V389.157509zM0 542.945055l454.798535-418.227106 261.626373 256L963.047619 93.772894l-93.772894-93.772894H1125.274725v243.809524l-88.14652-93.772894-320.703297 391.970696-264.43956-271.003663L63.765568 632.967033 0 542.945055z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.collect:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M553.15 775.124c-40.36 35.76-79.32 70.286-113.34 104.121-35.678-35.473-76.387-71.273-118.6-108.323C205.327 669.2 73.998 553.9 74.648 459.162c0.892-127.18 56.618-203.1 149.124-203.1 60.232 0 119.533 32.781 154.734 85.534l62.376 93.452 60.26-94.842c23.485-36.843 60.968-64.276 102.458-76.897v-75.585c-64.72 13.636-126.007 53.092-164.214 113.224-50.404-75.532-134.545-118.103-215.615-118.103-113.408 0-220.967 83.21-222.294 275.789C0.154 649.562 314.166 831.3 439.88 987.649c119.706-149.97 436.581-340.08 437.402-529.123h-73.295c-0.604 94.746-139.277 217.65-250.837 316.59z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M877.332 184.856V38.847h-72.986v146.009H658.338v72.965h146.009V403.8h72.986V257.821h145.941v-72.965H877.332z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.xiazai:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M926.9 944h-832V176H352v64H158.9v640h704V240H672v-64h254.9z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M512 709L331 528l45.2-45.2L512 618.5l135.8-135.7L693 528z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
            <path
              d="M479.964 632.236v-544h64v544z"
              fill="''' + getColor(2, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.paixu_jiangxu:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M843.84 690.368V256.32a31.488 31.488 0 0 0-9.152-22.848 32.192 32.192 0 0 0-22.912-9.472 32.512 32.512 0 0 0-32 32.32v434.048l-128.192-126.72a31.552 31.552 0 0 0-45.44 0 31.488 31.488 0 0 0 0 44.928l181.312 179.328a31.552 31.552 0 0 0 22.4 9.536 32.896 32.896 0 0 0 23.04-8.32l181.376-179.2a30.912 30.912 0 0 0 0-45.056 32.192 32.192 0 0 0-45.504 0l-124.928 125.44zM32 730.88h512.512c17.728 0 32.064 14.208 32.064 31.68a31.872 31.872 0 0 1-32 31.68H32a31.872 31.872 0 0 1-32-31.68c0-17.472 14.336-31.68 32-31.68z m0-253.44h320.32c17.728 0 32 14.208 32 31.68a31.872 31.872 0 0 1-32 31.68H32.064A31.872 31.872 0 0 1 0 509.12c0-17.472 14.336-31.68 32-31.68zM544.576 224H32.064c-17.728 0-32 14.208-32 31.68s14.272 31.68 32 31.68h512.512c17.728 0 32-14.208 32-31.68a31.872 31.872 0 0 0-32-31.68z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.paixu_shengxu:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M843.84 331.072v434.048a31.488 31.488 0 0 1-9.152 22.848 32.192 32.192 0 0 1-22.912 9.472 32.512 32.512 0 0 1-32-32.32V331.072l-128.192 126.72a31.552 31.552 0 0 1-45.44 0 31.488 31.488 0 0 1 0-44.928l181.312-179.328a31.552 31.552 0 0 1 22.4-9.536 32.896 32.896 0 0 1 23.04 8.32l181.376 179.2a30.912 30.912 0 0 1 0 45.056 32.192 32.192 0 0 1-45.504 0l-124.928-125.44zM32 730.88h512.512c17.728 0 32.064 14.208 32.064 31.68a31.872 31.872 0 0 1-32 31.68H32a31.872 31.872 0 0 1-32-31.68c0-17.472 14.336-31.68 32-31.68z m0-253.44h320.32c17.728 0 32 14.208 32 31.68a31.872 31.872 0 0 1-32 31.68H32.064A31.872 31.872 0 0 1 0 509.12c0-17.472 14.336-31.68 32-31.68zM544.576 224H32.064c-17.728 0-32 14.208-32 31.68s14.272 31.68 32 31.68h512.512c17.728 0 32-14.208 32-31.68a31.872 31.872 0 0 0-32-31.68z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.beisu_x:
        svgXml = '''
          <svg viewBox="0 0 1327 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M891.259259 170.666667H417.185185C229.451852 170.666667 75.851852 324.266667 75.851852 512s153.6 341.333333 341.333333 341.333333h474.074074c187.733333 0 341.333333-153.6 341.333334-341.333333S1078.992593 170.666667 891.259259 170.666667z m0 625.777777H417.185185c-157.392593 0-284.444444-127.051852-284.444444-284.444444s127.051852-284.444444 284.444444-284.444444h474.074074c157.392593 0 284.444444 127.051852 284.444445 284.444444s-127.051852 284.444444-284.444445 284.444444z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M644.740741 347.022222c-26.548148 0-49.303704 7.585185-64.474074 24.651852-15.17037 17.066667-24.651852 39.822222-24.651852 68.266667v155.496296c0 28.444444 7.585185 51.2 24.651852 68.266667s37.925926 24.651852 64.474074 24.651852 49.303704-7.585185 64.474074-24.651852 24.651852-39.822222 24.651852-68.266667v-155.496296c0-28.444444-7.585185-53.096296-24.651852-68.266667-15.17037-17.066667-37.925926-24.651852-64.474074-24.651852z m43.614815 248.414815c0 32.237037-15.17037 49.303704-43.614815 49.303704-28.444444 0-43.614815-17.066667-43.614815-49.303704v-155.496296c0-34.133333 15.17037-51.2 43.614815-51.2 28.444444 0 43.614815 17.066667 43.614815 51.2v155.496296zM961.422222 458.903704c-17.066667 0-30.340741 3.792593-41.718518 13.274074v-77.748148h106.192592v-41.718519h-149.807407v182.044445h43.614815c5.688889-20.859259 17.066667-32.237037 36.029629-32.237037 22.755556 0 34.133333 17.066667 34.133334 49.303703V587.851852c0 37.925926-11.377778 56.888889-36.02963 56.888889-22.755556 0-36.02963-15.17037-36.02963-45.511111H872.296296c0 28.444444 9.481481 49.303704 22.755556 66.37037s34.133333 24.651852 58.785185 24.651852c26.548148 0 45.511111-7.585185 60.681482-24.651852 15.17037-17.066667 22.755556-43.614815 22.755555-75.851852v-37.925926c0-28.444444-7.585185-51.2-20.859259-68.266666-15.17037-17.066667-32.237037-24.651852-54.992593-24.651852zM800.237037 629.57037c-7.585185 0-13.274074 1.896296-18.962963 7.585186-3.792593 3.792593-7.585185 11.377778-7.585185 18.962963s1.896296 13.274074 7.585185 18.962962c3.792593 3.792593 11.377778 7.585185 18.962963 7.585186s13.274074-1.896296 18.962963-7.585186c3.792593-3.792593 7.585185-11.377778 7.585185-18.962962s-1.896296-13.274074-7.585185-18.962963c-5.688889-3.792593-11.377778-7.585185-18.962963-7.585186zM451.318519 400.118519c-13.274074-9.481481-30.340741-7.585185-39.822223 5.688888l-47.407407 60.681482-47.407408-60.681482c-9.481481-13.274074-28.444444-15.17037-39.822222-5.688888-13.274074 9.481481-15.17037 28.444444-5.688889 39.822222l56.888889 72.059259-56.888889 72.059259c-9.481481 13.274074-7.585185 30.340741 5.688889 39.822222s30.340741 7.585185 39.822222-5.688888l47.407408-60.681482 47.407407 60.681482c9.481481 13.274074 28.444444 15.17037 39.822223 5.688888 13.274074-9.481481 15.17037-28.444444 5.688888-39.822222l-56.888888-72.059259 56.888888-72.059259c9.481481-11.377778 7.585185-30.340741-5.688888-39.822222z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.beisu_x_1:
        svgXml = '''
          <svg viewBox="0 0 1327 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M872.296296 170.666667H455.111111C267.377778 170.666667 113.777778 324.266667 113.777778 512s153.6 341.333333 341.333333 341.333333h417.185185c187.733333 0 341.333333-153.6 341.333334-341.333333S1060.02963 170.666667 872.296296 170.666667z m0 625.777777H455.111111c-157.392593 0-284.444444-127.051852-284.444444-284.444444s127.051852-284.444444 284.444444-284.444444h417.185185c157.392593 0 284.444444 127.051852 284.444445 284.444444s-127.051852 284.444444-284.444445 284.444444z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M593.540741 396.325926v51.2l51.2-34.133333v271.17037h45.511111V350.814815h-34.133333zM766.103704 629.57037c-7.585185 0-13.274074 1.896296-18.962963 7.585186-3.792593 3.792593-7.585185 11.377778-7.585185 18.962963s1.896296 13.274074 7.585185 18.962962c3.792593 3.792593 11.377778 7.585185 18.962963 7.585186s13.274074-1.896296 18.962963-7.585186c3.792593-3.792593 7.585185-11.377778 7.585185-18.962962s-1.896296-13.274074-7.585185-18.962963c-5.688889-3.792593-11.377778-7.585185-18.962963-7.585186zM927.288889 347.022222c-26.548148 0-49.303704 7.585185-64.474074 24.651852-15.17037 17.066667-24.651852 39.822222-24.651852 68.266667v155.496296c0 28.444444 7.585185 51.2 24.651852 68.266667s37.925926 24.651852 64.474074 24.651852 49.303704-7.585185 64.474074-24.651852 24.651852-39.822222 24.651852-68.266667v-155.496296c0-28.444444-7.585185-53.096296-24.651852-68.266667-17.066667-17.066667-37.925926-24.651852-64.474074-24.651852z m43.614815 248.414815c0 32.237037-15.17037 49.303704-43.614815 49.303704-28.444444 0-43.614815-17.066667-43.614815-49.303704v-155.496296c0-34.133333 15.17037-51.2 43.614815-51.2 28.444444 0 43.614815 17.066667 43.614815 51.2v155.496296zM489.244444 400.118519c-13.274074-9.481481-30.340741-7.585185-39.822222 5.688888l-47.407407 60.681482-47.407408-60.681482c-9.481481-13.274074-28.444444-15.17037-39.822222-5.688888-13.274074 9.481481-15.17037 28.444444-5.688889 39.822222l56.888889 72.059259-56.888889 72.059259c-9.481481 13.274074-7.585185 30.340741 5.688889 39.822222s30.340741 7.585185 39.822222-5.688888l47.407408-60.681482 47.407407 60.681482c9.481481 13.274074 28.444444 15.17037 39.822222 5.688888 13.274074-9.481481 15.17037-28.444444 5.688889-39.822222l-56.888889-72.059259 56.888889-72.059259c9.481481-11.377778 7.585185-30.340741-5.688889-39.822222z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.beisu_x_2:
        svgXml = '''
          <svg viewBox="0 0 1327 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M853.333333 170.666667H455.111111C267.377778 170.666667 113.777778 324.266667 113.777778 512s153.6 341.333333 341.333333 341.333333h398.222222c187.733333 0 341.333333-153.6 341.333334-341.333333S1041.066667 170.666667 853.333333 170.666667z m0 625.777777H455.111111c-157.392593 0-284.444444-127.051852-284.444444-284.444444s127.051852-284.444444 284.444444-284.444444h398.222222c157.392593 0 284.444444 127.051852 284.444445 284.444444s-127.051852 284.444444-284.444445 284.444444z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M587.851852 396.325926v51.2l49.303704-34.133333v271.17037h47.407407V350.814815h-34.133333zM923.496296 458.903704c-17.066667 0-30.340741 3.792593-41.718518 13.274074v-77.748148H986.074074v-41.718519h-149.807407v182.044445h43.614814c5.688889-20.859259 17.066667-32.237037 36.02963-32.237037 22.755556 0 34.133333 17.066667 34.133333 49.303703V587.851852c0 37.925926-11.377778 56.888889-36.029629 56.888889-22.755556 0-36.02963-15.17037-36.02963-45.511111h-45.511111c0 28.444444 9.481481 49.303704 22.755556 66.37037s34.133333 24.651852 58.785185 24.651852c26.548148 0 45.511111-7.585185 60.681481-24.651852 15.17037-17.066667 22.755556-43.614815 22.755556-75.851852v-37.925926c0-28.444444-7.585185-51.2-20.859259-68.266666-13.274074-17.066667-32.237037-24.651852-53.096297-24.651852zM760.414815 629.57037c-7.585185 0-13.274074 1.896296-18.962963 7.585186-3.792593 3.792593-7.585185 11.377778-7.585185 18.962963s1.896296 13.274074 7.585185 18.962962c3.792593 3.792593 11.377778 7.585185 18.962963 7.585186s13.274074-1.896296 18.962963-7.585186c3.792593-3.792593 7.585185-11.377778 7.585185-18.962962s-1.896296-13.274074-7.585185-18.962963c-5.688889-3.792593-11.377778-7.585185-18.962963-7.585186zM489.244444 400.118519c-13.274074-9.481481-30.340741-7.585185-39.822222 5.688888l-47.407407 60.681482-47.407408-60.681482c-9.481481-13.274074-28.444444-15.17037-39.822222-5.688888-13.274074 9.481481-15.17037 28.444444-5.688889 39.822222l56.888889 72.059259-56.888889 72.059259c-9.481481 13.274074-7.585185 30.340741 5.688889 39.822222s30.340741 7.585185 39.822222-5.688888l47.407408-60.681482 47.407407 60.681482c9.481481 13.274074 28.444444 15.17037 39.822222 5.688888 13.274074-9.481481 15.17037-28.444444 5.688889-39.822222l-56.888889-72.059259 56.888889-72.059259c9.481481-11.377778 7.585185-30.340741-5.688889-39.822222z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.beisu_x_3:
        svgXml = '''
          <svg viewBox="0 0 1327 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M891.259259 170.666667H417.185185C229.451852 170.666667 75.851852 324.266667 75.851852 512s153.6 341.333333 341.333333 341.333333h474.074074c187.733333 0 341.333333-153.6 341.333334-341.333333S1078.992593 170.666667 891.259259 170.666667z m0 625.777777H417.185185c-157.392593 0-284.444444-127.051852-284.444444-284.444444s127.051852-284.444444 284.444444-284.444444h474.074074c157.392593 0 284.444444 127.051852 284.444445 284.444444s-127.051852 284.444444-284.444445 284.444444z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M618.192593 589.748148c5.688889-7.585185 11.377778-15.17037 18.962963-24.651852l11.377777-11.377777 11.377778-13.274075c18.962963-20.859259 34.133333-37.925926 41.718519-53.096296 13.274074-20.859259 18.962963-41.718519 18.962963-60.681481 0-22.755556-7.585185-41.718519-20.85926-56.888889-15.17037-17.066667-36.02963-24.651852-62.577777-24.651852-24.651852 0-43.614815 7.585185-58.785186 22.755555-15.17037 15.17037-22.755556 37.925926-24.651851 66.370371h43.614814c0-30.340741 13.274074-45.511111 37.925926-45.511111 11.377778 0 22.755556 3.792593 28.444445 11.377778 5.688889 7.585185 9.481481 15.17037 9.481481 26.548148 0 15.17037-5.688889 32.237037-18.962963 49.303703-3.792593 7.585185-11.377778 15.17037-18.962963 24.651852l-9.481481 13.274074-11.377778 13.274074c-41.718519 45.511111-62.577778 87.22963-62.577778 127.051852v32.237037h172.562963v-43.614815h-125.155555c0-17.066667 7.585185-34.133333 18.962963-53.096296zM788.859259 629.57037c-7.585185 0-13.274074 1.896296-18.962963 7.585186-3.792593 3.792593-7.585185 11.377778-7.585185 18.962963s1.896296 13.274074 7.585185 18.962962c3.792593 3.792593 11.377778 7.585185 18.962963 7.585186s13.274074-1.896296 18.962963-7.585186c3.792593-3.792593 7.585185-11.377778 7.585185-18.962962s-1.896296-13.274074-7.585185-18.962963c-5.688889-3.792593-13.274074-7.585185-18.962963-7.585186zM948.148148 347.022222c-26.548148 0-49.303704 7.585185-64.474074 24.651852-15.17037 17.066667-24.651852 39.822222-24.651852 68.266667v155.496296c0 28.444444 7.585185 51.2 24.651852 68.266667s37.925926 24.651852 64.474074 24.651852 49.303704-7.585185 64.474074-24.651852c15.17037-17.066667 24.651852-39.822222 24.651852-68.266667v-155.496296c0-28.444444-7.585185-53.096296-24.651852-68.266667-15.17037-17.066667-37.925926-24.651852-64.474074-24.651852z m43.614815 248.414815c0 32.237037-15.17037 49.303704-43.614815 49.303704-28.444444 0-43.614815-17.066667-43.614815-49.303704v-155.496296c0-34.133333 15.17037-51.2 43.614815-51.2 28.444444 0 43.614815 17.066667 43.614815 51.2v155.496296zM451.318519 400.118519c-13.274074-9.481481-30.340741-7.585185-39.822223 5.688888l-47.407407 60.681482-47.407408-60.681482c-9.481481-13.274074-28.444444-15.17037-39.822222-5.688888-13.274074 9.481481-15.17037 28.444444-5.688889 39.822222l56.888889 72.059259-56.888889 72.059259c-9.481481 13.274074-7.585185 30.340741 5.688889 39.822222s30.340741 7.585185 39.822222-5.688888l47.407408-60.681482 47.407407 60.681482c9.481481 13.274074 28.444444 15.17037 39.822223 5.688888 13.274074-9.481481 15.17037-28.444444 5.688888-39.822222l-56.888888-72.059259 56.888888-72.059259c9.481481-11.377778 7.585185-30.340741-5.688888-39.822222z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.beisu_x_4:
        svgXml = '''
          <svg viewBox="0 0 1327 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M967.111111 170.666667H360.296296C172.562963 170.666667 18.962963 324.266667 18.962963 512s153.6 341.333333 341.333333 341.333333h606.814815c187.733333 0 341.333333-153.6 341.333333-341.333333S1154.844444 170.666667 967.111111 170.666667z m0 625.777777H360.296296c-157.392593 0-284.444444-127.051852-284.444444-284.444444s127.051852-284.444444 284.444444-284.444444h606.814815c157.392593 0 284.444444 127.051852 284.444445 284.444444s-127.051852 284.444444-284.444445 284.444444z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
            <path
              d="M493.037037 396.325926v51.2l49.303704-34.133333v271.17037h47.407407V350.814815h-34.133333zM665.6 629.57037c-7.585185 0-13.274074 1.896296-18.962963 7.585186-3.792593 3.792593-7.585185 11.377778-7.585185 18.962963s1.896296 13.274074 7.585185 18.962962c3.792593 3.792593 11.377778 7.585185 18.962963 7.585186s13.274074-1.896296 18.962963-7.585186c3.792593-3.792593 7.585185-11.377778 7.585185-18.962962s-1.896296-13.274074-7.585185-18.962963c-5.688889-3.792593-11.377778-7.585185-18.962963-7.585186zM1041.066667 458.903704c-17.066667 0-30.340741 3.792593-41.718519 13.274074v-77.748148h106.192593v-41.718519h-149.807408v182.044445h43.614815c5.688889-20.859259 17.066667-32.237037 36.02963-32.237037 22.755556 0 34.133333 17.066667 34.133333 49.303703V587.851852c0 37.925926-11.377778 56.888889-36.02963 56.888889-22.755556 0-36.02963-15.17037-36.029629-45.511111h-45.511111c0 28.444444 9.481481 49.303704 22.755555 66.37037s34.133333 24.651852 58.785185 24.651852c26.548148 0 45.511111-7.585185 60.681482-24.651852 15.17037-17.066667 22.755556-43.614815 22.755556-75.851852v-37.925926c0-28.444444-7.585185-51.2-20.85926-68.266666-15.17037-17.066667-34.133333-24.651852-54.992592-24.651852zM800.237037 589.748148c5.688889-7.585185 11.377778-15.17037 18.962963-24.651852l11.377778-11.377777 11.377778-13.274075c18.962963-20.859259 34.133333-37.925926 41.718518-53.096296 13.274074-20.859259 18.962963-41.718519 18.962963-60.681481 0-22.755556-7.585185-41.718519-20.859259-56.888889-15.17037-17.066667-36.02963-24.651852-62.577778-24.651852-24.651852 0-43.614815 7.585185-58.785185 22.755555-15.17037 15.17037-22.755556 37.925926-24.651852 66.370371h43.614815c0-30.340741 13.274074-45.511111 37.925926-45.511111 11.377778 0 22.755556 3.792593 28.444444 11.377778 5.688889 7.585185 9.481481 15.17037 9.481482 26.548148 0 15.17037-5.688889 32.237037-18.962963 49.303703-3.792593 7.585185-11.377778 15.17037-18.962963 24.651852l-11.377778 11.377778-11.377778 13.274074c-41.718519 45.511111-62.577778 87.22963-62.577778 127.051852v32.237037h172.562963v-43.614815h-125.155555c1.896296-15.17037 7.585185-32.237037 20.859259-51.2zM394.42963 400.118519c-13.274074-9.481481-30.340741-7.585185-39.822223 5.688888l-47.407407 60.681482-47.407407-60.681482c-9.481481-13.274074-28.444444-15.17037-39.822223-5.688888-13.274074 9.481481-15.17037 28.444444-5.688889 39.822222l56.888889 72.059259-56.888889 72.059259c-9.481481 13.274074-7.585185 30.340741 5.688889 39.822222s30.340741 7.585185 39.822223-5.688888l47.407407-60.681482 47.407407 60.681482c9.481481 13.274074 28.444444 15.17037 39.822223 5.688888 13.274074-9.481481 15.17037-28.444444 5.688889-39.822222l-56.888889-72.059259 56.888889-72.059259c9.481481-11.377778 7.585185-30.340741-5.688889-39.822222z"
              fill="''' + getColor(1, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.beisu_x_5:
        svgXml = '''
          <svg viewBox="0 0 1327 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M967.111111 170.666667c187.733333 0 341.333333 153.6 341.333333 341.333333s-153.6 341.333333-341.333333 341.333333H360.296296C172.562963 853.333333 18.962963 699.733333 18.962963 512S172.562963 170.666667 360.296296 170.666667h606.814815z m0 56.888889H360.296296c-157.392593 0-284.444444 127.051852-284.444444 284.444444s127.051852 284.444444 284.444444 284.444444h606.814815c157.392593 0 284.444444-127.051852 284.444445-284.444444s-127.051852-284.444444-284.444445-284.444444z m108.088889 115.674074v41.718518h-106.192593v77.748148c11.377778-9.481481 26.548148-13.274074 41.718519-13.274074 22.755556 0 39.822222 7.585185 53.096296 24.651852 13.274074 17.066667 20.859259 37.925926 20.859259 68.266667v37.925926c0 32.237037-7.585185 58.785185-22.755555 75.851852-13.274074 17.066667-34.133333 24.651852-60.681482 24.651851-24.651852 0-43.614815-7.585185-58.785185-24.651851-15.17037-15.17037-22.755556-37.925926-22.755555-66.370371h45.511111c1.896296 30.340741 13.274074 45.511111 36.029629 45.511111 24.651852 0 36.02963-18.962963 36.02963-56.888889v-34.133333c0-34.133333-11.377778-49.303704-34.133333-49.303704-18.962963 0-30.340741 11.377778-36.02963 32.237037h-43.614815v-182.044444h151.703704z m-187.733333 1.896296v32.237037l-89.125926 299.614815h-47.407408l85.333334-288.237037h-113.777778v-41.718519h164.977778zM589.748148 341.333333v333.748148h-45.511111V403.911111L493.037037 438.044444v-53.096296l62.577778-45.511111h34.133333z m75.851852 278.755556c7.585185 0 13.274074 1.896296 18.962963 7.585185 3.792593 3.792593 7.585185 11.377778 7.585185 18.962963s-1.896296 13.274074-7.585185 18.962963c-3.792593 3.792593-11.377778 7.585185-18.962963 7.585185s-13.274074-1.896296-18.962963-7.585185c-3.792593-3.792593-7.585185-11.377778-7.585185-18.962963s1.896296-13.274074 7.585185-18.962963c5.688889-3.792593 11.377778-7.585185 18.962963-7.585185zM394.42963 400.118519c13.274074 9.481481 15.17037 28.444444 5.688889 39.822222l-56.888889 72.059259 56.888889 72.059259c9.481481 13.274074 7.585185 30.340741-5.688889 39.822222s-30.340741 7.585185-39.822223-5.688888l-47.407407-60.681482-47.407407 60.681482c-9.481481 13.274074-28.444444 15.17037-39.822223 5.688888-13.274074-9.481481-15.17037-28.444444-5.688889-39.822222l56.888889-72.059259-56.888889-72.059259c-9.481481-13.274074-7.585185-30.340741 5.688889-39.822222s30.340741-7.585185 39.822223 5.688888l47.407407 60.681482 47.407407-60.681482c9.481481-13.274074 28.444444-15.17037 39.822223-5.688888z"
              fill="''' + getColor(0, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;

    }

    return SvgPicture.string(svgXml, width: this.size, height: this.size);
  }
}