class History {
  String lokasi;
  String tanggal;

  TempatWisata(
      {required this.lokasi,
        required this.tanggal});

  factory TempatWisata.fromJson(Map<String, dynamic> json) => TempatWisata(
      lokasi: json["fields"]["lokasi_donor"],
      tanggal: json["fields"]["tanggal_donor"]);

  Map<String, dynamic> toJson() => {
    "title": tanggal,
  };
}