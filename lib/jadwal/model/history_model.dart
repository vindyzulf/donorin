class History {
  String lokasi;
  String tanggal;

  History(
      {required this.lokasi,
        required this.tanggal});

  factory History.fromJson(Map<String, dynamic> json) => History(
      lokasi: json["fields"]["lokasi_donor"],
      tanggal: json["fields"]["tanggal_donor"]);

  Map<String, dynamic> toJson() => {
    "title": tanggal,
  };
}