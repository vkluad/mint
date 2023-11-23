import 'package:flutter/material.dart';
import 'package:mint/backbone/symptoms.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/therapist_selection.dart';

class SessionPriceSelection extends StatefulWidget {
  const SessionPriceSelection({required this.onTabValueReceived, super.key});
  final void Function(RangeValues? range, List<String>? specialties)
      onTabValueReceived;

  @override
  State<SessionPriceSelection> createState() => _SessionPriceSelectionState();
}

class _SessionPriceSelectionState extends State<SessionPriceSelection> {
  void _setValueCallback(RangeValues? range, List<String>? specialties) {
    widget.onTabValueReceived(range, null);
  }

  @override
  Widget build(BuildContext context) {
    return TherapistSelection(
      sendValuesCallback: _setValueCallback,
      range: priceOptions,
      tabTitle: AppLocalizations.of(context)!.howMuch,
    );
  }
}
