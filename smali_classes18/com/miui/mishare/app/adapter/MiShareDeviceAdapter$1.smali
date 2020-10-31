.class Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;
.super Ljava/lang/Object;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z
    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$100(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$200(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$200(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->LAST_SENT_DEVICE:Landroid/util/Pair;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->LAST_SENT_DEVICE:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setLastSentDevice(Landroid/util/Pair;)V

    :cond_3a
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$200(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->storeDevice(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$300(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$200(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;
    invoke-static {v2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$400(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$200(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->isNeedNotify(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v1, v0, v2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$500(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    :cond_64
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # invokes: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->startSort()V
    invoke-static {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$600(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    :cond_69
    return-void
.end method
