import 'dart:io'; // Para usar stdin y stdout

// Clase base Productos
class Productos {
  String codigo;
  String nombre;
  double peso;
  double precio;
  int stock;
  int id_sucursal;
  String calidad;
  int id_producto;
  int id_proveedor;

  // Constructor de la clase Productos
  Productos({
    required this.codigo,
    required this.nombre,
    required this.peso,
    required this.precio,
    required this.stock,
    required this.id_sucursal,
    required this.calidad,
    required this.id_producto,
    required this.id_proveedor,
  });

  // Función para capturar datos desde la "interfaz" (consola)
  void captura_datos2() {
    print("Captura de datos del producto:");
    stdout.write("Código: ");
    codigo = stdin.readLineSync()!;
    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;
    stdout.write("Peso (kg): ");
    peso = double.parse(stdin.readLineSync()!);
    stdout.write("Precio: ");
    precio = double.parse(stdin.readLineSync()!);
    stdout.write("Stock: ");
    stock = int.parse(stdin.readLineSync()!);
    stdout.write("ID Sucursal: ");
    id_sucursal = int.parse(stdin.readLineSync()!);
    stdout.write("Calidad: ");
    calidad = stdin.readLineSync()!;
    stdout.write("ID Producto: ");
    id_producto = int.parse(stdin.readLineSync()!);
    stdout.write("ID Proveedor: ");
    id_proveedor = int.parse(stdin.readLineSync()!);
  }
}

// Clase ProduHerencia que hereda de Productos
class ProduHerencia extends Productos {
  // Constructor de la clase ProduHerencia
  ProduHerencia({
    required String codigo,
    required String nombre,
    required double peso,
    required double precio,
    required int stock,
    required int id_sucursal,
    required String calidad,
    required int id_producto,
    required int id_proveedor,
  }) : super(
          codigo: codigo,
          nombre: nombre,
          peso: peso,
          precio: precio,
          stock: stock,
          id_sucursal: id_sucursal,
          calidad: calidad,
          id_producto: id_producto,
          id_proveedor: id_proveedor,
        );

  // Función para mostrar los datos del producto
  void mostrar_datos() {
    print("\nDatos del producto:");
    print("Código: $codigo");
    print("Nombre: $nombre");
    print("Peso: $peso kg");
    print("Precio: \$$precio");
    print("Stock: $stock");
    print("ID Sucursal: $id_sucursal");
    print("Calidad: $calidad");
    print("ID Producto: $id_producto");
    print("ID Proveedor: $id_proveedor");
  }
}

// Clase base Venta
class Venta {
  int id_venta;
  int id_empleado;
  int id_cliente;
  int id_producto;
  String fecha_venta;
  int cantidad;
  int id_sucursal;

  // Constructor de la clase Venta
  Venta({
    required this.id_venta,
    required this.id_empleado,
    required this.id_cliente,
    required this.id_producto,
    required this.fecha_venta,
    required this.cantidad,
    required this.id_sucursal,
  });

  // Función para capturar datos desde la "interfaz" (consola)
  void captura_datos3() {
    print("Captura de datos de la venta:");
    stdout.write("ID Venta: ");
    id_venta = int.parse(stdin.readLineSync()!);
    stdout.write("ID Empleado: ");
    id_empleado = int.parse(stdin.readLineSync()!);
    stdout.write("ID Cliente: ");
    id_cliente = int.parse(stdin.readLineSync()!);
    stdout.write("ID Producto: ");
    id_producto = int.parse(stdin.readLineSync()!);
    stdout.write("Fecha de Venta (YYYY-MM-DD): ");
    fecha_venta = stdin.readLineSync()!;
    stdout.write("Cantidad: ");
    cantidad = int.parse(stdin.readLineSync()!);
    stdout.write("ID Sucursal: ");
    id_sucursal = int.parse(stdin.readLineSync()!);
  }
}

// Clase VentaHerencia que hereda de Venta
class VentaHerencia extends Venta {
  // Constructor de la clase VentaHerencia
  VentaHerencia({
    required int id_venta,
    required int id_empleado,
    required int id_cliente,
    required int id_producto,
    required String fecha_venta,
    required int cantidad,
    required int id_sucursal,
  }) : super(
          id_venta: id_venta,
          id_empleado: id_empleado,
          id_cliente: id_cliente,
          id_producto: id_producto,
          fecha_venta: fecha_venta,
          cantidad: cantidad,
          id_sucursal: id_sucursal,
        );

  // Función para mostrar los datos de la venta
  void mostrar_datos() {
    print("\nDatos de la venta:");
    print("ID Venta: $id_venta");
    print("ID Empleado: $id_empleado");
    print("ID Cliente: $id_cliente");
    print("ID Producto: $id_producto");
    print("Fecha de Venta: $fecha_venta");
    print("Cantidad: $cantidad");
    print("ID Sucursal: $id_sucursal");
  }
}

void main() {
     print('Derek Santiago Garza Martinez 22308051281196 gpo 6-J ');
  // Crear una instancia de ProduHerencia
  ProduHerencia producto = ProduHerencia(
    codigo: "",
    nombre: "",
    peso: 0.0,
    precio: 0.0,
    stock: 0,
    id_sucursal: 0,
    calidad: "",
    id_producto: 0,
    id_proveedor: 0,
  );

  // Capturar datos del producto desde la "interfaz"
  producto.captura_datos2();

  // Mostrar los datos del producto
  producto.mostrar_datos();

  // Crear una instancia de VentaHerencia
  VentaHerencia venta = VentaHerencia(
    id_venta: 0,
    id_empleado: 0,
    id_cliente: 0,
    id_producto: 0,
    fecha_venta: "",
    cantidad: 0,
    id_sucursal: 0,
  );

  // Capturar datos de la venta desde la "interfaz"
  venta.captura_datos3();

  // Mostrar los datos de la venta
  venta.mostrar_datos();
}