.class Lmiui/util/async/TaskInfoDeliverer$1;
.super Lmiui/util/Pools$Manager;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskInfoDeliverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager<",
        "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/util/async/TaskInfoDeliverer$1;->createInstance()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    .registers 2

    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer$1;->onRelease(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V

    return-void
.end method

.method public onRelease(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V
    .registers 2

    invoke-virtual {p1}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->clear()V

    return-void
.end method
