.class public final Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final ARE_CONSTRAINTS_SATISFIED:J = 0x10800000004L

.field public static final INFO:J = 0x10b00000001L

.field public static final IS_ALLOWED_IN_DOZE:J = 0x10800000006L

.field public static final IS_DOZE_WHITELISTED:J = 0x10800000005L

.field public static final SOURCE_PACKAGE_NAME:J = 0x10900000003L

.field public static final SOURCE_UID:J = 0x10500000002L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController$TrackedJob;->this$1:Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
