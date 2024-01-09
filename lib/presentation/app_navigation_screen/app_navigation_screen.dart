import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Menu Seguridad".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.menuSeguridadScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Touch ID".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.touchIdScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Tipos de sesion".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.tiposDeSesionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mas".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.masScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FACE ID".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.faceIdScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla de Inicio".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaDeInicioScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inicioScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Datos Empresa".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.datosEmpresaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Datos del usuario".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.datosDelUsuarioScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Panel Principal".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.panelPrincipalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Rutas - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rutasTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pedidos detalle - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pedidosDetalleContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Cobrar".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cobrarScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Registrar Clientes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registrarClientesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Datos del usuario One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.datosDelUsuarioOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pedidos detalle primera forma producto".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pedidosDetallePrimeraFormaProductoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detalles Cobrar".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detallesCobrarScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Clientes vista tienda".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.clientesVistaTiendaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detalles de Ruta".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detallesDeRutaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "metodos de pago".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.metodosDePagoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detalle Tienda Clientes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detalleTiendaClientesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pedidos detalle primera forma producto Four"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pedidosDetallePrimeraFormaProductoFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Carrito vista principal".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.carritoVistaPrincipalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Metodos de pago One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.metodosDePagoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Agregar Clientes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.agregarClientesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "detalles de la bodega".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detallesDeLaBodegaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Seleccionar cliente".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.seleccionarClienteScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Metodos de pago Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.metodosDePagoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "buscador de cliente".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.buscadorDeClienteScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reportar problema".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reportarProblemaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "pedidos cliente registrados - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pedidosClienteRegistradosTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Metodos de pago 2 yape resultado".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.metodosDePago2YapeResultadoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "historial cobrar".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.historialCobrarScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "detalles de pedido factura".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detallesDePedidoFacturaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "listado de producto de pedido pendiente de factura"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .listadoDeProductoDePedidoPendienteDeFacturaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pedido facturado".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pedidoFacturadoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "lista de producto de pedido facturado".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .listaDeProductoDePedidoFacturadoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla de bienvenida".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaDeBienvenidaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reporte enviado".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reporteEnviadoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pedido registrado".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pedidoRegistradoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Cliente Registrado".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.clienteRegistradoScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
