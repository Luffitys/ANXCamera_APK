.class public final Lcom/android/server/usage/IntervalStatsProto$Event;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final CLASS:J = 0x10900000003L

.field public static final CLASS_INDEX:J = 0x10500000004L

.field public static final CONFIG:J = 0x10b00000008L

.field public static final FLAGS:J = 0x10500000006L

.field public static final INSTANCE_ID:J = 0x1050000000eL

.field public static final LOCUS_ID_INDEX:J = 0x10500000011L

.field public static final NOTIFICATION_CHANNEL:J = 0x1090000000cL

.field public static final NOTIFICATION_CHANNEL_INDEX:J = 0x1050000000dL

.field public static final PACKAGE:J = 0x10900000001L

.field public static final PACKAGE_INDEX:J = 0x10500000002L

.field public static final SHORTCUT_ID:J = 0x10900000009L

.field public static final STANDBY_BUCKET:J = 0x1050000000bL

.field public static final TASK_ROOT_CLASS_INDEX:J = 0x10500000010L

.field public static final TASK_ROOT_PACKAGE_INDEX:J = 0x1050000000fL

.field public static final TIME_MS:J = 0x10300000005L

.field public static final TYPE:J = 0x10500000007L


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/IntervalStatsProto;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/IntervalStatsProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsProto$Event;->this$0:Lcom/android/server/usage/IntervalStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
