.class Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
.super Landroid/os/Handler;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualifiedNetworksServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method constructor <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_68

    const/4 v3, 0x2

    if-eq v2, v3, :cond_59

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1e

    goto/16 :goto_c0

    :cond_1e
    if-nez v1, :cond_22

    goto/16 :goto_c0

    :cond_22
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    # invokes: Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onUpdateQualifiedNetworkTypes(I[I)V
    invoke-static {v1, v2, v3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->access$500(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V

    goto/16 :goto_c0

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_4f
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_c0

    :cond_59
    if-eqz v1, :cond_c0

    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_c0

    :cond_68
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network availability provider for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " already existed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/telephony/data/QualifiedNetworksService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->access$100(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    return-void

    :cond_90
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v2, v0}, Landroid/telephony/data/QualifiedNetworksService;->onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    move-result-object v1

    if-eqz v1, :cond_a9

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    # invokes: Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->access$400(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    goto :goto_c0

    :cond_a9
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create network availability provider. slot index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/telephony/data/QualifiedNetworksService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->access$100(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    nop

    :cond_c0
    :goto_c0
    return-void
.end method
