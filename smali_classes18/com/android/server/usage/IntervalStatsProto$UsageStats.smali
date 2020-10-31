.class public final Lcom/android/server/usage/IntervalStatsProto$UsageStats;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UsageStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;
    }
.end annotation


# static fields
.field public static final APP_LAUNCH_COUNT:J = 0x10500000006L

.field public static final CHOOSER_ACTIONS:J = 0x20b00000007L

.field public static final LAST_EVENT:J = 0x10500000005L

.field public static final LAST_TIME_ACTIVE_MS:J = 0x10300000003L

.field public static final LAST_TIME_SERVICE_USED_MS:J = 0x10300000008L

.field public static final LAST_TIME_VISIBLE_MS:J = 0x1030000000aL

.field public static final PACKAGE:J = 0x10900000001L

.field public static final PACKAGE_INDEX:J = 0x10500000002L

.field public static final TOTAL_TIME_ACTIVE_MS:J = 0x10300000004L

.field public static final TOTAL_TIME_SERVICE_USED_MS:J = 0x10300000009L

.field public static final TOTAL_TIME_VISIBLE_MS:J = 0x1030000000bL


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/IntervalStatsProto;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/IntervalStatsProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsProto$UsageStats;->this$0:Lcom/android/server/usage/IntervalStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
