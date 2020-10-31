.class public final Lcom/android/server/content/SyncStatisticsProto$DayStats;
.super Ljava/lang/Object;
.source "SyncStatisticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStatisticsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DayStats"
.end annotation


# static fields
.field public static final DAY:J = 0x10500000001L

.field public static final FAILURE_COUNT:J = 0x10500000004L

.field public static final FAILURE_TIME:J = 0x10300000005L

.field public static final SUCCESS_COUNT:J = 0x10500000002L

.field public static final SUCCESS_TIME:J = 0x10300000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncStatisticsProto;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStatisticsProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncStatisticsProto$DayStats;->this$0:Lcom/android/server/content/SyncStatisticsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
