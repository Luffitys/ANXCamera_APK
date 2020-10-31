.class public final Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IdlenessTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$DeviceIdlenessTracker;,
        Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$CarIdlenessTracker;
    }
.end annotation


# static fields
.field public static final CAR_IDLENESS_TRACKER:J = 0x10b00000002L

.field public static final DEVICE_IDLENESS_TRACKER:J = 0x10b00000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$IdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$IdleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;->this$1:Lcom/android/server/job/StateControllerProto$IdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
