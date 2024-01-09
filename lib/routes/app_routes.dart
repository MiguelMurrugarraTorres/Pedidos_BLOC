import 'package:flutter/material.dart';
import 'package:pedidos/presentation/menu_seguridad_screen/menu_seguridad_screen.dart';
import 'package:pedidos/presentation/touch_id_screen/touch_id_screen.dart';
import 'package:pedidos/presentation/tipos_de_sesion_screen/tipos_de_sesion_screen.dart';
import 'package:pedidos/presentation/mas_screen/mas_screen.dart';
import 'package:pedidos/presentation/face_id_screen/face_id_screen.dart';
import 'package:pedidos/presentation/pantalla_de_inicio_screen/pantalla_de_inicio_screen.dart';
import 'package:pedidos/presentation/inicio_screen/inicio_screen.dart';
import 'package:pedidos/presentation/datos_empresa_screen/datos_empresa_screen.dart';
import 'package:pedidos/presentation/datos_del_usuario_screen/datos_del_usuario_screen.dart';
import 'package:pedidos/presentation/panel_principal_screen/panel_principal_screen.dart';
import 'package:pedidos/presentation/rutas_tab_container_screen/rutas_tab_container_screen.dart';
import 'package:pedidos/presentation/pedidos_detalle_container_screen/pedidos_detalle_container_screen.dart';
import 'package:pedidos/presentation/cobrar_screen/cobrar_screen.dart';
import 'package:pedidos/presentation/registrar_clientes_screen/registrar_clientes_screen.dart';
import 'package:pedidos/presentation/datos_del_usuario_one_screen/datos_del_usuario_one_screen.dart';
import 'package:pedidos/presentation/pedidos_detalle_primera_forma_producto_screen/pedidos_detalle_primera_forma_producto_screen.dart';
import 'package:pedidos/presentation/detalles_cobrar_screen/detalles_cobrar_screen.dart';
import 'package:pedidos/presentation/clientes_vista_tienda_screen/clientes_vista_tienda_screen.dart';
import 'package:pedidos/presentation/detalles_de_ruta_screen/detalles_de_ruta_screen.dart';
import 'package:pedidos/presentation/metodos_de_pago_screen/metodos_de_pago_screen.dart';
import 'package:pedidos/presentation/detalle_tienda_clientes_screen/detalle_tienda_clientes_screen.dart';
import 'package:pedidos/presentation/pedidos_detalle_primera_forma_producto_four_screen/pedidos_detalle_primera_forma_producto_four_screen.dart';
import 'package:pedidos/presentation/carrito_vista_principal_screen/carrito_vista_principal_screen.dart';
import 'package:pedidos/presentation/metodos_de_pago_one_screen/metodos_de_pago_one_screen.dart';
import 'package:pedidos/presentation/agregar_clientes_screen/agregar_clientes_screen.dart';
import 'package:pedidos/presentation/detalles_de_la_bodega_screen/detalles_de_la_bodega_screen.dart';
import 'package:pedidos/presentation/seleccionar_cliente_screen/seleccionar_cliente_screen.dart';
import 'package:pedidos/presentation/metodos_de_pago_two_screen/metodos_de_pago_two_screen.dart';
import 'package:pedidos/presentation/buscador_de_cliente_screen/buscador_de_cliente_screen.dart';
import 'package:pedidos/presentation/reportar_problema_screen/reportar_problema_screen.dart';
import 'package:pedidos/presentation/pedidos_cliente_registrados_tab_container_screen/pedidos_cliente_registrados_tab_container_screen.dart';
import 'package:pedidos/presentation/metodos_de_pago_2_yape_resultado_screen/metodos_de_pago_2_yape_resultado_screen.dart';
import 'package:pedidos/presentation/historial_cobrar_screen/historial_cobrar_screen.dart';
import 'package:pedidos/presentation/detalles_de_pedido_factura_screen/detalles_de_pedido_factura_screen.dart';
import 'package:pedidos/presentation/listado_de_producto_de_pedido_pendiente_de_factura_screen/listado_de_producto_de_pedido_pendiente_de_factura_screen.dart';
import 'package:pedidos/presentation/pedido_facturado_screen/pedido_facturado_screen.dart';
import 'package:pedidos/presentation/lista_de_producto_de_pedido_facturado_screen/lista_de_producto_de_pedido_facturado_screen.dart';
import 'package:pedidos/presentation/pantalla_de_bienvenida_screen/pantalla_de_bienvenida_screen.dart';
import 'package:pedidos/presentation/reporte_enviado_screen/reporte_enviado_screen.dart';
import 'package:pedidos/presentation/pedido_registrado_screen/pedido_registrado_screen.dart';
import 'package:pedidos/presentation/cliente_registrado_screen/cliente_registrado_screen.dart';
import 'package:pedidos/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String menuSeguridadScreen = '/menu_seguridad_screen';

  static const String touchIdScreen = '/touch_id_screen';

  static const String tiposDeSesionScreen = '/tipos_de_sesion_screen';

  static const String masScreen = '/mas_screen';

  static const String faceIdScreen = '/face_id_screen';

  static const String pantallaDeInicioScreen = '/pantalla_de_inicio_screen';

  static const String inicioScreen = '/inicio_screen';

  static const String datosEmpresaScreen = '/datos_empresa_screen';

  static const String datosDelUsuarioScreen = '/datos_del_usuario_screen';

  static const String panelPrincipalScreen = '/panel_principal_screen';

  static const String rutasPage = '/rutas_page';

  static const String rutasTabContainerScreen = '/rutas_tab_container_screen';

  static const String pedidosDetallePage = '/pedidos_detalle_page';

  static const String pedidosDetalleContainerScreen =
      '/pedidos_detalle_container_screen';

  static const String cobrarScreen = '/cobrar_screen';

  static const String registrarClientesScreen = '/registrar_clientes_screen';

  static const String datosDelUsuarioOneScreen =
      '/datos_del_usuario_one_screen';

  static const String rutasVisitasPage = '/rutas_visitas_page';

  static const String pedidosDetallePrimeraFormaProductoScreen =
      '/pedidos_detalle_primera_forma_producto_screen';

  static const String detallesCobrarScreen = '/detalles_cobrar_screen';

  static const String clientesVistaTiendaScreen =
      '/clientes_vista_tienda_screen';

  static const String detallesDeRutaScreen = '/detalles_de_ruta_screen';

  static const String metodosDePagoScreen = '/metodos_de_pago_screen';

  static const String detalleTiendaClientesScreen =
      '/detalle_tienda_clientes_screen';

  static const String pedidosDetallePrimeraFormaProductoFourScreen =
      '/pedidos_detalle_primera_forma_producto_four_screen';

  static const String carritoVistaPrincipalScreen =
      '/carrito_vista_principal_screen';

  static const String metodosDePagoOneScreen = '/metodos_de_pago_one_screen';

  static const String agregarClientesScreen = '/agregar_clientes_screen';

  static const String detallesDeLaBodegaScreen =
      '/detalles_de_la_bodega_screen';

  static const String seleccionarClienteScreen = '/seleccionar_cliente_screen';

  static const String metodosDePagoTwoScreen = '/metodos_de_pago_two_screen';

  static const String buscadorDeClienteScreen = '/buscador_de_cliente_screen';

  static const String reportarProblemaScreen = '/reportar_problema_screen';

  static const String pedidosClienteRegistradosPage =
      '/pedidos_cliente_registrados_page';

  static const String pedidosClienteRegistradosTabContainerScreen =
      '/pedidos_cliente_registrados_tab_container_screen';

  static const String metodosDePago2YapeResultadoScreen =
      '/metodos_de_pago_2_yape_resultado_screen';

  static const String pedidosClientePendientesPage =
      '/pedidos_cliente_pendientes_page';

  static const String historialCobrarScreen = '/historial_cobrar_screen';

  static const String detallesDePedidoFacturaScreen =
      '/detalles_de_pedido_factura_screen';

  static const String listadoDeProductoDePedidoPendienteDeFacturaScreen =
      '/listado_de_producto_de_pedido_pendiente_de_factura_screen';

  static const String pedidoFacturadoScreen = '/pedido_facturado_screen';

  static const String listaDeProductoDePedidoFacturadoScreen =
      '/lista_de_producto_de_pedido_facturado_screen';

  static const String pantallaDeBienvenidaScreen =
      '/pantalla_de_bienvenida_screen';

  static const String reporteEnviadoScreen = '/reporte_enviado_screen';

  static const String pedidoRegistradoScreen = '/pedido_registrado_screen';

  static const String clienteRegistradoScreen = '/cliente_registrado_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        menuSeguridadScreen: MenuSeguridadScreen.builder,
        touchIdScreen: TouchIdScreen.builder,
        tiposDeSesionScreen: TiposDeSesionScreen.builder,
        masScreen: MasScreen.builder,
        faceIdScreen: FaceIdScreen.builder,
        pantallaDeInicioScreen: PantallaDeInicioScreen.builder,
        inicioScreen: InicioScreen.builder,
        datosEmpresaScreen: DatosEmpresaScreen.builder,
        datosDelUsuarioScreen: DatosDelUsuarioScreen.builder,
        panelPrincipalScreen: PanelPrincipalScreen.builder,
        rutasTabContainerScreen: RutasTabContainerScreen.builder,
        pedidosDetalleContainerScreen: PedidosDetalleContainerScreen.builder,
        cobrarScreen: CobrarScreen.builder,
        registrarClientesScreen: RegistrarClientesScreen.builder,
        datosDelUsuarioOneScreen: DatosDelUsuarioOneScreen.builder,
        pedidosDetallePrimeraFormaProductoScreen:
            PedidosDetallePrimeraFormaProductoScreen.builder,
        detallesCobrarScreen: DetallesCobrarScreen.builder,
        clientesVistaTiendaScreen: ClientesVistaTiendaScreen.builder,
        detallesDeRutaScreen: DetallesDeRutaScreen.builder,
        metodosDePagoScreen: MetodosDePagoScreen.builder,
        detalleTiendaClientesScreen: DetalleTiendaClientesScreen.builder,
        pedidosDetallePrimeraFormaProductoFourScreen:
            PedidosDetallePrimeraFormaProductoFourScreen.builder,
        carritoVistaPrincipalScreen: CarritoVistaPrincipalScreen.builder,
        metodosDePagoOneScreen: MetodosDePagoOneScreen.builder,
        agregarClientesScreen: AgregarClientesScreen.builder,
        detallesDeLaBodegaScreen: DetallesDeLaBodegaScreen.builder,
        seleccionarClienteScreen: SeleccionarClienteScreen.builder,
        metodosDePagoTwoScreen: MetodosDePagoTwoScreen.builder,
        buscadorDeClienteScreen: BuscadorDeClienteScreen.builder,
        reportarProblemaScreen: ReportarProblemaScreen.builder,
        pedidosClienteRegistradosTabContainerScreen:
            PedidosClienteRegistradosTabContainerScreen.builder,
        metodosDePago2YapeResultadoScreen:
            MetodosDePago2YapeResultadoScreen.builder,
        historialCobrarScreen: HistorialCobrarScreen.builder,
        detallesDePedidoFacturaScreen: DetallesDePedidoFacturaScreen.builder,
        listadoDeProductoDePedidoPendienteDeFacturaScreen:
            ListadoDeProductoDePedidoPendienteDeFacturaScreen.builder,
        pedidoFacturadoScreen: PedidoFacturadoScreen.builder,
        listaDeProductoDePedidoFacturadoScreen:
            ListaDeProductoDePedidoFacturadoScreen.builder,
        pantallaDeBienvenidaScreen: PantallaDeBienvenidaScreen.builder,
        reporteEnviadoScreen: ReporteEnviadoScreen.builder,
        pedidoRegistradoScreen: PedidoRegistradoScreen.builder,
        clienteRegistradoScreen: ClienteRegistradoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: MenuSeguridadScreen.builder
      };
}
