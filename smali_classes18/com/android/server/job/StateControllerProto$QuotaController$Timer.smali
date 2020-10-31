.class public final Lcom/android/server/job/StateControllerProto$QuotaController$Timer;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Timer"
.end annotation


# static fields
.field public static final BG_JOB_COUNT:J = 0x10500000004L

.field public static final IS_ACTIVE:J = 0x10800000002L

.field public static final PKG:J = 0x10b00000001L

.field public static final RUNNING_JOBS:J = 0x20b00000005L

.field public static final START_TIME_ELAPSED:J = 0x10300000003L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$QuotaController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$QuotaController$Timer;->this$1:Lcom/android/server/job/StateControllerProto$QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
