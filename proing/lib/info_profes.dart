class Ramo {
  final String nombre;
  final String nomProf;
  final String fotoProfe;

  const Ramo({
    this.nombre,
    this.nomProf,
    this.fotoProfe,
  });
}

final profesores = [
  new Ramo(nombre:'Taller de Ingeniería de Software',nomProf:'Rodolfo Villarroel',fotoProfe: 'https://i1.rgstatic.net/ii/profile.image/573260221300736-1513687295764_Q512/Rodolfo_Villarroel2.jpg'),
  new Ramo(nombre:'Taller de Base de Datos', nomProf: 'Ivan Mercado', fotoProfe: 'http://manual.inf.ucv.cl/img/profesores/IvanMercadoB.jpg'),
  new Ramo(nombre:'Ingeniería de Requerimientos',nomProf:'Juan Perez',fotoProfe: 'http://manual.inf.ucv.cl/img/profesores/IvanMercadoB.jpg'),
  new Ramo(nombre:'Programación Orientada a Objetos',nomProf:'Rafael Mellado', fotoProfe: 'http://rafaelmellado.cl/assets/images/perfil.jpg'),
];