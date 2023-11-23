import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/sheet_title.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({
    required this.doctor,
    this.callback,
    super.key,
    this.booking,
  });
  final Doctor doctor;
  final VoidCallback? callback;
  final Booking? booking;
  @override
  State<DateSelector> createState() => _DateSelectorPageState();
}

class _DateSelectorPageState extends State<DateSelector> {
  DateTime? selectedDayTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SheetTitle(
            text: AppLocalizations.of(context)!.chooseDate,
          ),
        ),
        TableCalendar<DateTime>(
          calendarBuilders: CalendarBuilders(
            disabledBuilder: (context, day, focusedDay) {
              return Center(
                child: Text(
                  DateFormat.d().format(day),
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                  ),
                ),
              );
            },
            headerTitleBuilder: (context, day) {
              return Center(
                child: Text(
                  DateFormat.MMMM().format(day),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              );
            },
            defaultBuilder: (context, day, focusedDay) {
              return Center(
                child: Text(
                  DateFormat.d().format(day),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              );
            },
          ),
          selectedDayPredicate: (day) => isSameDay(selectedDayTime, day),
          calendarStyle: CalendarStyle(
            isTodayHighlighted: false,
            selectedTextStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).cardColor,
              border: Border.all(
                color: Palette.mainBlue,
                width: 2.w,
              ),
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyles.callout.copyWith(
              fontWeight: FontWeight.w600,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right,
              color: Theme.of(context).primaryColor,
            ),
            leftChevronIcon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).primaryColor,
            ),
          ),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              selectedDayTime = selectedDay;
            });
          },
          focusedDay: selectedDayTime ?? DateTime.now(),
          firstDay: DateTime.now(),
          lastDay: DateTime.now().add(const Duration(days: 365)),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.h,
            horizontal: 16.w,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              color: Palette.mainBlue,
              disabledColor: Palette.mainBlue.withOpacity(0.5),
              onPressed: selectedDayTime != null
                  ? () {
                      Navigator.pop(context);
                      showTimePickerSheet(
                        context: context,
                        selectedDate: selectedDayTime ?? DateTime.now(),
                        doctor: widget.doctor,
                        booking: widget.booking,
                      );
                    }
                  : null,
              child: Text(
                AppLocalizations.of(context)!.continueButton,
                style: const TextStyle(color: Palette.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
