.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    # getter for: Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataService$DataServiceProvider;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_144

    goto/16 :goto_143

    :pswitch_16
    if-nez v1, :cond_1a

    goto/16 :goto_143

    :cond_1a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    :try_start_1e
    iget-object v3, v2, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v4, v2, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v3, v4}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_27

    goto/16 :goto_143

    :catch_27
    move-exception v3

    iget-object v4, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call onDataCallListChanged. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/telephony/data/DataService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/telephony/data/DataService;->access$500(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    goto/16 :goto_143

    :pswitch_40
    if-nez v1, :cond_44

    goto/16 :goto_143

    :cond_44
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    # invokes: Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    invoke-static {v1, v2}, Landroid/telephony/data/DataService$DataServiceProvider;->access$400(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    goto/16 :goto_143

    :pswitch_4d
    if-nez v1, :cond_51

    goto/16 :goto_143

    :cond_51
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    # invokes: Landroid/telephony/data/DataService$DataServiceProvider;->registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    invoke-static {v1, v2}, Landroid/telephony/data/DataService$DataServiceProvider;->access$300(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    goto/16 :goto_143

    :pswitch_5a
    if-nez v1, :cond_5e

    goto/16 :goto_143

    :cond_5e
    new-instance v2, Landroid/telephony/data/DataServiceCallback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v2, v3}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_143

    :pswitch_6c
    if-nez v1, :cond_70

    goto/16 :goto_143

    :cond_70
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$SetDataProfileRequest;

    iget-object v4, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v5, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    iget-object v6, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_84

    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v2, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_85

    :cond_84
    nop

    :goto_85
    invoke-virtual {v1, v4, v5, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_143

    :pswitch_8a
    if-nez v1, :cond_8e

    goto/16 :goto_143

    :cond_8e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    iget-object v4, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v5, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    iget-object v6, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_a2

    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v2, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_a3

    :cond_a2
    nop

    :goto_a3
    invoke-virtual {v1, v4, v5, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_143

    :pswitch_a8
    if-nez v1, :cond_ac

    goto/16 :goto_143

    :cond_ac
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    iget v4, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v5, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    iget-object v6, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_c0

    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v2, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_c1

    :cond_c0
    nop

    :goto_c1
    invoke-virtual {v1, v4, v5, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_143

    :pswitch_c6
    if-nez v1, :cond_ca

    goto/16 :goto_143

    :cond_ca
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/telephony/data/DataService$SetupDataCallRequest;

    iget v4, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v5, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v6, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v7, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v8, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v9, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iget-object v2, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v2, :cond_e8

    new-instance v2, Landroid/telephony/data/DataServiceCallback;

    iget-object v3, v10, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v2, v3}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object v11, v2

    goto :goto_e9

    :cond_e8
    move-object v11, v3

    :goto_e9
    move-object v2, v1

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v11

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V

    goto :goto_143

    :pswitch_f5
    const/4 v2, 0x0

    :goto_f6
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    # getter for: Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_117

    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    # getter for: Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/telephony/data/DataService$DataServiceProvider;

    if-eqz v1, :cond_114

    invoke-virtual {v1}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_f6

    :cond_117
    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    # getter for: Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_143

    :pswitch_121
    if-eqz v1, :cond_143

    invoke-virtual {v1}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    # getter for: Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_143

    :pswitch_130
    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v1

    if-eqz v1, :cond_143

    iget-object v2, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    # getter for: Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_143
    :goto_143
    return-void

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_130
        :pswitch_121
        :pswitch_f5
        :pswitch_c6
        :pswitch_a8
        :pswitch_8a
        :pswitch_6c
        :pswitch_5a
        :pswitch_4d
        :pswitch_40
        :pswitch_16
    .end packed-switch
.end method
