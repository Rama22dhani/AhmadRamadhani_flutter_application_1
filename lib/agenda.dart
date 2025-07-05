class Agenda {
  final int? id;
  final String judul;
  final String keterangan;
  final String tanggal;
  final String jam;

  Agenda(
      {this.id,
      required this.judul,
      required this.keterangan,
      required this.tanggal,
      required this.jam});

  factory Agenda.fromJson(Map<String, dynamic> json) {
    return Agenda(
      id: json['id'],
      judul: json['judul'] ?? '',
      keterangan: json['keterangan'] ?? '',
      tanggal: json['tanggal'] ?? '',
      jam: json['jam'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'judul': judul,
      'keterangan': keterangan,
      'tanggal': tanggal,
      'jam': jam,
    };
  }
}
