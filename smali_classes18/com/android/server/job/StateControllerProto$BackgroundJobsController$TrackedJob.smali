.class public final Lcom/android/server/job/StateControllerProto$BackgroundJobsController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$BackgroundJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final ARE_CONSTRAINTS_SATISFIED:J = 0x10800000007L

.field public static final CAN_RUN_ANY_IN_BACKGROUND:J = 0x10800000006L

.field public static final INFO:J = 0x10b00000001L

.field public static final IS_IN_FOREGROUND:J = 0x10800000004L

.field public static final IS_WHITELISTED:J = 0x10800000005L

.field public static final SOURCE_PACKAGE_NAME:J = 0x10900000003L

.field public static final SOURCE_UID:J = 0x10500000002L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$BackgroundJobsController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$BackgroundJobsController$TrackedJob;->this$1:Lcom/android/server/job/StateControllerProto$BackgroundJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
