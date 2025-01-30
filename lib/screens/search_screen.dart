import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeProvider>().isDark;

    return Scaffold(
      backgroundColor: isDarkMode ? darkColors["surface"] : colors["surface"],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor:
            isDarkMode ? darkColors["surface"] : colors["surface"],
            floating: true,
            snap: true,
            title: TextField(
              decoration: InputDecoration(
                hintText: "Ara...",
                filled: true,
                fillColor: Color.fromARGB(255, 200, 20, 7),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search,
                    color: isDarkMode
                        ? darkColors["onSurface"]
                        : colors["onSurface"]),
                suffixIcon: IconButton(
                  icon: Icon(Icons.tune,
                      color: isDarkMode
                          ? darkColors["onSurface"]
                          : colors["onSurface"]),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Son Aramalar",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isDarkMode
                          ? darkColors["onSurface"]
                          : colors["onSurface"],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ActionChip(
                        label: Text("Antalya",
                            style: TextStyle(
                                color: isDarkMode
                                    ? darkColors["onSurface"]
                                    : colors["onSurface"])),
                        onPressed: () {},
                        avatar: Icon(Icons.history,
                            size: 16,
                            color: isDarkMode
                                ? darkColors["onSurface"]
                                : colors["onSurface"]),
                      ),
                      ActionChip(
                        label: Text("Fransa",
                            style: TextStyle(
                                color: isDarkMode
                                    ? darkColors["onSurface"]
                                    : colors["onSurface"])),
                        onPressed: () {},
                        avatar: Icon(Icons.history,
                            size: 16,
                            color: isDarkMode
                                ? darkColors["onSurface"]
                                : colors["onSurface"]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
              delegate: SliverChildListDelegate([
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: isDarkMode ? darkColors["surface"] : colors["surface"],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/AntalyaOtel.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Doubletree By Hilton Antalya",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                color: isDarkMode
                                    ? darkColors["onSurface"]
                                    : colors["onSurface"],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Tarihi Merkeze ve Plaja Yakın",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                color: isDarkMode
                                    ? darkColors["onSurface"]
                                    : colors["onSurface"],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: isDarkMode ? darkColors["surface"] : colors["surface"],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/fransa.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hotel & Spa Vacances Bleues Le Splendid",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                color: isDarkMode
                                    ? darkColors["onSurface"]
                                    : colors["onSurface"],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Dax'ta Art Deco Zerafeti",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                color: isDarkMode
                                    ? darkColors["onSurface"]
                                    : colors["onSurface"],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
