.class public Lmiui/util/Pools$SimplePool;
.super Lmiui/util/Pools$BasePool;
.source ""


# direct methods
.method constructor <init>(Lmiui/util/Pools$Manager;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/util/Pools$BasePool;-><init>(Lmiui/util/Pools$Manager;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lmiui/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lmiui/util/Pools$BasePool;->close()V

    return-void
.end method

.method final createInstanceHolder(Ljava/lang/Class;I)Lmiui/util/Pools$IInstanceHolder;
    .locals 0

    invoke-static {p1, p2}, Lmiui/util/Pools;->onPoolCreate(Ljava/lang/Class;I)Lmiui/util/Pools$InstanceHolder;

    move-result-object p0

    return-object p0
.end method

.method final destroyInstanceHolder(Lmiui/util/Pools$IInstanceHolder;I)V
    .locals 0

    check-cast p1, Lmiui/util/Pools$InstanceHolder;

    invoke-static {p1, p2}, Lmiui/util/Pools;->onPoolClose(Lmiui/util/Pools$InstanceHolder;I)V

    return-void
.end method

.method public bridge synthetic getSize()I
    .locals 0

    invoke-super {p0}, Lmiui/util/Pools$BasePool;->getSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/util/Pools$BasePool;->release(Ljava/lang/Object;)V

    return-void
.end method
