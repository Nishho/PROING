class Detalle {
  final String nombre;
  final String notas;
  final String asistencia;

  const Detalle({
    this.nombre,
    this.notas,
    this.asistencia,
  });
}

final infRamos = [
  new Detalle(nombre:'Taller de Ingeniería de Software',notas:'6.8, ...', asistencia: '98%'),
  new Detalle(nombre:'Ingeniería de Requerimientos',notas:'6.8, ...', asistencia: '60%'),
  new Detalle(nombre:'Programación Orientada a Objetos',notas:'6.8, ...', asistencia: '70%'),
];