.class public final Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TriggerContentData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData$JobInstance;
    }
.end annotation


# static fields
.field public static final FLAGS:J = 0x10500000002L

.field public static final JOBS:J = 0x20b00000003L

.field public static final URI:J = 0x10900000001L


# instance fields
.field final synthetic this$2:Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;->this$2:Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
