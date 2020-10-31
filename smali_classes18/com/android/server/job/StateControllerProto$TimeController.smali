.class public final Lcom/android/server/job/StateControllerProto$TimeController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$TimeController$TrackedJob;
    }
.end annotation


# static fields
.field public static final NOW_ELAPSED_REALTIME:J = 0x10300000001L

.field public static final TIME_UNTIL_NEXT_DEADLINE_ALARM_MS:J = 0x10300000003L

.field public static final TIME_UNTIL_NEXT_DELAY_ALARM_MS:J = 0x10300000002L

.field public static final TRACKED_JOBS:J = 0x20b00000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$TimeController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
