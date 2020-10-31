.class public final Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceIdleJobsController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController$TrackedJob;
    }
.end annotation


# static fields
.field public static final IS_DEVICE_IDLE_MODE:J = 0x10800000001L

.field public static final TRACKED_JOBS:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
