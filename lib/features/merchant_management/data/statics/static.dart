import 'package:cherubini/features/merchant_management/data/models/tech_active_model.dart';

class ManagementStatics {
  static List<TechActiveModel> techActiveList = [
    TechActiveModel(
      name: 'أحمد محمد علي',
      status: 'نشط',
      number: '056345210',
      email: 'ahmed1@gmail.com',
      points: '5680',
      scan: '45',
    ),
    TechActiveModel(
      name: 'محمد خالد سعيد',
      status: 'نشط ',
      number: '056345210',
      email: 'ahmed1@gmail.com',
      points: '3420',
      scan: '28',
    ),
    TechActiveModel(
      name: 'محمد خالد سعيد',
      status: 'نشط ',
      number: '056345210',
      email: 'ahmed1@gmail.com',
      points: '3420',
      scan: '28',
    ),
  ];
  static List<TechActiveModel> techWaitingList = [
    TechActiveModel(
      name: 'أحمد محمد علي',
      status: 'قيد المراجعة',
      number: '056345210',
      email: 'ahmed1@gmail.com',
      points: '5680',
      scan: '45',
      date: 'تاريخ الطلب :20/10/2025'
    ),
    TechActiveModel(
      name: 'محمد خالد سعيد',
      status: 'قيد المراجعة ',
      number: '056345210',
      email: 'ahmed1@gmail.com',
      points: '3420',
      scan: '28',
        date: 'تاريخ الطلب :25/10/2025'
    ),
    TechActiveModel(
      name: 'محمد خالد سعيد',
      status: 'قيد المراجعة ',
      number: '056345210',
      email: 'ahmed1@gmail.com',
      points: '3420',
      scan: '28',
        date: 'تاريخ الطلب :28/11/2025'
    ),
  ];
}
