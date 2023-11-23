import 'package:flutter/material.dart';
import 'package:mint/backbone/symptoms.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/therapist_selection.dart';

class CommunicationTypeScreen extends StatefulWidget {
  const CommunicationTypeScreen({
    super.key,
  });

  @override
  State<CommunicationTypeScreen> createState() =>
      _CommunicationTypeScreenState();
}

class _CommunicationTypeScreenState extends State<CommunicationTypeScreen> {
  int? selectedOptionIndex;

  @override
  Widget build(BuildContext context) {
    return TherapistSelection(
      sendValuesCallback: (specialties, range) {},
      options: communicationOptions,
      tabTitle: AppLocalizations.of(context)!.whoCommunicate,
    );
  }
}
