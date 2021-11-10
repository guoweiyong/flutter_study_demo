//前面是给double类型的数据做一个扩展， 现在给int类型的数据做一个扩展
import 'size_fit.dart';
extension IntFit on int {
  double get px {
    return this.toDouble() * GYSizeFit.instance.px;
  }

  double get dpx {
    return this.toDouble() * GYSizeFit.instance.dpr;
  }
}