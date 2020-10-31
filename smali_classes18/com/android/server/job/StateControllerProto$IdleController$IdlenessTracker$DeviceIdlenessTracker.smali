.class public final Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$DeviceIdlenessTracker;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceIdlenessTracker"
.end annotation


# static fields
.field public static final IN_CAR_MODE:J = 0x10800000004L

.field public static final IS_DOCK_IDLE:J = 0x10800000003L

.field public static final IS_IDLE:J = 0x10800000001L

.field public static final IS_SCREEN_ON:J = 0x10800000002L


# instance fields
.field final synthetic this$2:Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$DeviceIdlenessTracker;->this$2:Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
