import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/domain/entity/message.dart';
import 'package:mint/presentation/widget/cached_image.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/message_status.dart';
import 'package:mint/theme/palette.dart';

class MessagesListView extends StatelessWidget {
  const MessagesListView({
    required this.messages,
    required this.senderId,
    this.scrollController,
    super.key,
  });
  final List<Message> messages;
  final String senderId;
  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: scrollController,
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: 4.h,
            right: 16.w,
            left: 16.w,
          ),
          child: Column(
            children: [
              Align(
                alignment: messages[index].fromId == senderId
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(
                        messages[index].fromId == senderId ? 10.r : 0.r,
                      ),
                      bottomRight: Radius.circular(
                        messages[index].fromId != senderId ? 10.r : 0.r,
                      ),
                    ),
                    color: messages[index].fromId == senderId
                        ? Palette.mainBlue
                        : Theme.of(context).cardColor,
                  ),
                  padding: messages[index].type == 'image'
                      ? const EdgeInsets.all(2)
                      : const EdgeInsets.all(11),
                  child: messages[index].type == 'image'
                      ? GestureDetector(
                          onTap: messages[index].msg != null
                              ? () => showZoomedImage(
                                    context,
                                    CachedImage(imageUrl: messages[index].msg!),
                                  )
                              : null,
                          child: CachedImage(
                            imageUrl: messages[index].msg ?? '',
                            borderRadius: 12.r,
                            thumbnailWidget: Container(
                              color: Palette.white,
                              height: 200.h,
                              width: 200.h,
                              child: const CustomLoadingIndicator(),
                            ),
                          ),
                        )
                      : Text(
                          messages[index].msg ?? '',
                          style: TextStyle(
                            color: messages[index].fromId == senderId
                                ? Palette.white
                                : Theme.of(context).primaryColor,
                          ),
                        ),
                ),
              ),
              if (messages[index].read != null &&
                  messages.last.fromId == senderId &&
                  messages.last.messageId == messages[index].messageId)
                MessageStatusText(
                  messageReadTime: messages.last.read ?? DateTime.now(),
                )
            ],
          ),
        );
      },
    );
  }
}
