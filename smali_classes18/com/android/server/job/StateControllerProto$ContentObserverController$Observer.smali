.class public final Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;
    }
.end annotation


# static fields
.field public static final TRIGGERS:J = 0x20b00000002L

.field public static final USER_ID:J = 0x10500000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$ContentObserverController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;->this$1:Lcom/android/server/job/StateControllerProto$ContentObserverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
