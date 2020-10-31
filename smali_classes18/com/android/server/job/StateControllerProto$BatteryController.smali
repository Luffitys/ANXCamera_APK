.class public final Lcom/android/server/job/StateControllerProto$BatteryController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$BatteryController$TrackedJob;
    }
.end annotation


# static fields
.field public static final IS_BATTERY_NOT_LOW:J = 0x10800000002L

.field public static final IS_MONITORING:J = 0x10800000003L

.field public static final IS_ON_STABLE_POWER:J = 0x10800000001L

.field public static final LAST_BROADCAST_SEQUENCE_NUMBER:J = 0x10500000004L

.field public static final TRACKED_JOBS:J = 0x20b00000005L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$BatteryController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
