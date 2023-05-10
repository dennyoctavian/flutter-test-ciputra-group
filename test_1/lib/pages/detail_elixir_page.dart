part of 'pages.dart';

class DetailElixirPage extends StatelessWidget {
  final Wizard wizard;
  const DetailElixirPage(this.wizard, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Of Elixir",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            AttributeWizard(
              "ID Wizard",
              wizard.id ?? 'No ID',
            ),
            AttributeWizard(
              "First Name",
              wizard.firstName ?? 'Anonymous',
            ),
            AttributeWizard(
              "Last Name",
              wizard.lastName ?? 'Anonymous',
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: (wizard.elixirs ?? [])
                  .map((elixir) => CardElixir(elixir))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
