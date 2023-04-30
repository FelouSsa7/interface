import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interface_acheteur/widgets/details/details_dashboard.dart';
import 'package:interface_acheteur/widgets/details/details_drivers.dart';
import 'package:interface_acheteur/widgets/details/details_help.dart';
import 'package:interface_acheteur/widgets/details/details_profile.dart';
import 'package:interface_acheteur/widgets/details/user_data.dart';

class NavBar extends StatelessWidget {
  final UserData userData;

  const NavBar({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            leading:
                SvgPicture.asset('assets/icons/account_circle_black_24dp.svg'),
            title: const Text('Profil'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(userData: userData),
                ),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/dashboard_black_24dp.svg'),
            title: const Text('Tableau de bord'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/drive_eta_black_24dp.svg'),
            title: const Text('Chauffeurs'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DriversScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/help_black_24dp.svg'),
            title: const Text('Aide'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HelpScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/map_black_24dp.svg'),
            title: const Text('Carte'),
            onTap: () {
              //la carte géolocalisation
            },
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/logout_black_24dp.svg'),
            title: const Text('Déconnexion'),
            onTap: () {
              // Implémentez ici la logique de déconnexion
            },
          ),
        ],
      ),
    );
  }
}
