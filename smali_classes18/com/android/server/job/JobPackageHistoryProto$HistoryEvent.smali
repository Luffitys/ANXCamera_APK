.class public final Lcom/android/server/job/JobPackageHistoryProto$HistoryEvent;
.super Ljava/lang/Object;
.source "JobPackageHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageHistoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HistoryEvent"
.end annotation


# static fields
.field public static final EVENT:J = 0x10e00000001L

.field public static final JOB_ID:J = 0x10500000004L

.field public static final STOP_REASON:J = 0x10e00000006L

.field public static final TAG:J = 0x10900000005L

.field public static final TIME_SINCE_EVENT_MS:J = 0x10300000002L

.field public static final UID:J = 0x10500000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobPackageHistoryProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobPackageHistoryProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobPackageHistoryProto$HistoryEvent;->this$0:Lcom/android/server/job/JobPackageHistoryProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
