import 'package:flutter_application_5/models/product_model.dart';

List<ProductModel> productsList = [
  ProductModel(name: 'مجموعة مكعبات ليجو - السفينة', price: '150 JOD'),
  ProductModel(
    name: 'مجموعة ليجو سيتي - مركز الشرطة',
    price: '85 JOD',
    // إذا لم تقم بتمرير الصورة، ستأخذ الصورة الافتراضية
  ),
  ProductModel(name: 'ساعة ذكية - الإصدار الرياضي', price: '45 JOD'),
  ProductModel(name: 'سماعات لاسلكية', price: '30 JOD'),
  ProductModel(name: 'حقيبة ظهر للكمبيوتر المحمول', price: '25 JOD'),
];
