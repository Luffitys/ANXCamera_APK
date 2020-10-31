.class public final Lcom/android/server/am/BroadcastQueueProto;
.super Ljava/lang/Object;
.source "BroadcastQueueProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueProto$BroadcastSummary;
    }
.end annotation


# static fields
.field public static final HISTORICAL_BROADCASTS:J = 0x20b00000005L

.field public static final HISTORICAL_BROADCASTS_SUMMARY:J = 0x20b00000006L

.field public static final ORDERED_BROADCASTS:J = 0x20b00000003L

.field public static final PARALLEL_BROADCASTS:J = 0x20b00000002L

.field public static final PENDING_BROADCAST:J = 0x10b00000004L

.field public static final QUEUE_NAME:J = 0x10900000001L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
