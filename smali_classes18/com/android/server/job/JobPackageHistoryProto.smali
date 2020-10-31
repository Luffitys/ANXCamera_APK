.class public final Lcom/android/server/job/JobPackageHistoryProto;
.super Ljava/lang/Object;
.source "JobPackageHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageHistoryProto$HistoryEvent;
    }
.end annotation


# static fields
.field public static final HISTORY_EVENT:J = 0x20b00000001L

.field public static final START_JOB:I = 0x1

.field public static final START_PERIODIC_JOB:I = 0x3

.field public static final STOP_JOB:I = 0x2

.field public static final STOP_PERIODIC_JOB:I = 0x4

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
