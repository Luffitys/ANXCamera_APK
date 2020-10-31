.class public final Lcom/android/server/job/StateControllerProto$TimeController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final DELAY_TIME_REMAINING_MS:J = 0x10300000004L

.field public static final HAS_DEADLINE_CONSTRAINT:J = 0x10800000005L

.field public static final HAS_TIMING_DELAY_CONSTRAINT:J = 0x10800000003L

.field public static final INFO:J = 0x10b00000001L

.field public static final SOURCE_UID:J = 0x10500000002L

.field public static final TIME_REMAINING_UNTIL_DEADLINE_MS:J = 0x10300000006L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$TimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$TimeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$TimeController$TrackedJob;->this$1:Lcom/android/server/job/StateControllerProto$TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
