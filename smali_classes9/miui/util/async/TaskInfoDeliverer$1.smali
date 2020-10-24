.class Lmiui/util/async/TaskInfoDeliverer$1;
.super Lmiui/util/Pools$Manager;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/TaskInfoDeliverer$1;->createInstance()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    move-result-object p0

    return-object p0
.end method

.method public createInstance()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    .locals 0

    new-instance p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;-><init>()V

    return-object p0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer$1;->onRelease(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V

    return-void
.end method

.method public onRelease(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V
    .locals 0

    invoke-virtual {p1}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->clear()V

    return-void
.end method
