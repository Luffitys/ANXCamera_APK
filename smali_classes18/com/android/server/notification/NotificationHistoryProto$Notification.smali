.class public final Lcom/android/server/notification/NotificationHistoryProto$Notification;
.super Ljava/lang/Object;
.source "NotificationHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Notification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryProto$Notification$Icon;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:J = 0x10900000005L

.field public static final CHANNEL_ID_INDEX:J = 0x10500000006L

.field public static final CHANNEL_NAME:J = 0x10900000003L

.field public static final CHANNEL_NAME_INDEX:J = 0x10500000004L

.field public static final CONVERSATION_ID:J = 0x1090000000dL

.field public static final CONVERSATION_ID_INDEX:J = 0x1050000000eL

.field public static final ICON:J = 0x10b0000000cL

.field public static final PACKAGE:J = 0x10900000001L

.field public static final PACKAGE_INDEX:J = 0x10500000002L

.field public static final POSTED_TIME_MS:J = 0x10300000009L

.field public static final TEXT:J = 0x1090000000bL

.field public static final TITLE:J = 0x1090000000aL

.field public static final TYPE_ADAPTIVE_BITMAP:I = 0x5

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_URI:I = 0x4

.field public static final UID:J = 0x10500000007L

.field public static final USER_ID:J = 0x10500000008L


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryProto;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryProto$Notification;->this$0:Lcom/android/server/notification/NotificationHistoryProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
