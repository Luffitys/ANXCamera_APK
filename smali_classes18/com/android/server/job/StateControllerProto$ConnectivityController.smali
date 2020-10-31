.class public final Lcom/android/server/job/StateControllerProto$ConnectivityController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectivityController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ConnectivityController$TrackedJob;
    }
.end annotation


# static fields
.field public static final AVAILABLE_NETWORKS:J = 0x20b00000004L

.field public static final REQUESTED_STANDBY_EXCEPTION_UIDS:J = 0x20500000003L

.field public static final TRACKED_JOBS:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$ConnectivityController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
