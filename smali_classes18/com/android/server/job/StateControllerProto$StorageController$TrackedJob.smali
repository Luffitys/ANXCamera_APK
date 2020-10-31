.class public final Lcom/android/server/job/StateControllerProto$StorageController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final INFO:J = 0x10b00000001L

.field public static final SOURCE_UID:J = 0x10500000002L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$StorageController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$StorageController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$StorageController$TrackedJob;->this$1:Lcom/android/server/job/StateControllerProto$StorageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
