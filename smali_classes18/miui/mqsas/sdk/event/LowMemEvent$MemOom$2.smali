.class Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$2;
.super Ljava/lang/Object;
.source "LowMemEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;


# direct methods
.method constructor <init>(Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$2;->this$0:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;

    check-cast p2, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;

    invoke-virtual {p0, p1, p2}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$2;->compare(Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;)I
    .registers 7

    iget-wide v0, p1, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    iget-wide v2, p2, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget-wide v0, p1, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    iget-wide v2, p2, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method
