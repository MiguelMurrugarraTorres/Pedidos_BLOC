import '../../../core/app_export.dart';/// This class is used in the [orderdetailssection_item_widget] screen.
class OrderdetailssectionItemModel {OrderdetailssectionItemModel({this.orderNumber, this.orderText, this.deliveryStatus, this.billingStatus, this.id, }) { orderNumber = orderNumber  ?? "Pedido #245879975";orderText = orderText  ?? "FKT5S1-C1F52D-KID1W7";deliveryStatus = deliveryStatus  ?? "Entregado";billingStatus = billingStatus  ?? "FACTURADO";id = id  ?? ""; }

String? orderNumber;

String? orderText;

String? deliveryStatus;

String? billingStatus;

String? id;

 }
