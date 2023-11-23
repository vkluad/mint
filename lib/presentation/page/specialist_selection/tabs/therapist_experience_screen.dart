import 'package:flutter/cupertino.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/therapist_selection.dart';

class TherapistExperience extends StatefulWidget {
  const TherapistExperience({
    super.key,
  });

  @override
  State<TherapistExperience> createState() => _TherapistExperienceState();
}

class _TherapistExperienceState extends State<TherapistExperience> {
  List<String> options = [
    'Yes',
    'No',
  ];
  @override
  Widget build(BuildContext context) {
    return TherapistSelection(
      options: options,
      tabTitle: AppLocalizations.of(context)!.beenTherapy,
    );
  }
}
