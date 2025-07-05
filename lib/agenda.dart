class Agenda {
  final int? id;
  final String judul;
  final String keterangan;

  Agenda({this.id, required this.judul, required this.keterangan});

  factory Agenda.fromJson(Map<String, dynamic> json) {
    return Agenda(
      id: json['id'],
      judul: json['judul'],
      keterangan: json['keterangan'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'judul': judul,
      'keterangan': keterangan,
    };
  }
}
