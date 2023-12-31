import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/pages/catatan_aktivitas_page.dart';
import 'package:plta_app/pages/detail_laporan_page.dart';
import 'package:plta_app/pages/detail_location_offline_page.dart';
import 'package:plta_app/pages/detail_location_online_page.dart';
import 'package:plta_app/pages/detail_perbaikan/detail_eksekusi_page.dart';
import 'package:plta_app/pages/detail_perbaikan/detail_perbaikan_menunggu_page.dart';
import 'package:plta_app/pages/detail_perbaikan/detail_perbaikan_permintaan_page.dart';
import 'package:plta_app/pages/detail_perbaikan/detail_perbaikan_proses_page.dart';
import 'package:plta_app/pages/permintaan_perbaikan_page.dart';
import 'package:plta_app/pages/pin_page.dart';
import 'package:plta_app/pages/daftar_komponen_page.dart';
import 'package:plta_app/pages/daftar_sub_komponen_page.dart';
import 'package:plta_app/pages/landing_page.dart';
import 'package:plta_app/pages/login_page.dart';
import 'package:plta_app/pages/riwayat_pemeliharaan_page.dart';
import 'package:plta_app/pages/riwayat_perbaikan_page.dart';
import 'package:plta_app/pages/riwayat_status_page.dart';
import 'package:plta_app/pages/sub_komponen_input_page.dart';
import 'package:plta_app/pages/swp_page.dart';
import 'package:plta_app/pages/wp_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<List> pages = [
      [LoginPage(), 'Login'],
      [DaftarKomponenPage(), 'Daftar komponen'],
      [LandingPage(), 'Landing'],
      [PinPage(), 'Pin'],
      [RiwayatPemeliharaanPage(), 'Riwayat Pemeliharaan'],
      [DetailLocationOfflinePage(), 'Detail Location offline Page'],
      [DetailLocationOnlinePage(), 'Detail Location online Page'],
      [DaftarSubKomponenPage(), 'Daftar  Sub komponen'],
      [SubKomponenInputPage(), 'Daftar  Sub komponen Input'],
      [DetailLaporanPage(), 'Detail Laporan page'],

      ////////////////////////////////////////////
      [RiwayatPerbaikanPage(), 'Riwayat Perbaikan page'],
      [PermintaanPerbaikanPage(), 'Permintaan Perbaikan page'],
      [
        DetailPerbaikanMenungguPersetujuanPage(),
        'Permintaan Perbaikan Menunggu persetujuan page'
      ],
      [
        DetailPerbaikanPermintaanPage(),
        'Permintaan Perbaikan Permintaan Material page'
      ],
      [
        DetailPerbaikanEksekusiPage(),
        'Permintaan Perbaikan Siap Eksekusi page'
      ],
      [
        DetailPerbaikanProsesPage(),
        'Permintaan Perbaikan Menunggu Proses page'
      ],
      [CatatanAktivitasPage(), 'Catatan Aktivitas page'],
      [SWPPage(), 'Safety Work Permit page'],
      [WPPage(), 'Work Permit page'],
      [RiwayatStatusPage(), 'Riwayat Status page'],
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pages[index][0],
                ));
          },
          child: Container(
            margin: EdgeInsets.all(15),
            height: 50,
            decoration: BoxDecoration(color: Colors.indigo),
            alignment: Alignment.center,
            child: Text(
              pages[index][1],
              style: AssetStyle.primaryText.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
