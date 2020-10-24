.class Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$000(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$000(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->cancelInstallFeature(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    const/16 v2, 0x12

    const-string v3, "FML"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    const-string p1, "CANCELING"

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p1, "CANCELED"

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0xa

    const/16 v2, 0x102

    const/16 v3, 0x101

    if-eq p1, v1, :cond_2

    const/4 v1, -0x6

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    move p1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v3

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$400(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/VMFeature;->removeFeature(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    const-string p0, "INSTALLING"

    goto :goto_3

    :pswitch_7
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p0

    const/16 p1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "DOWNLOADED"

    goto :goto_3

    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getFeatureSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    long-to-float p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr p1, v4

    long-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p0

    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->wrapDownloadingProgress(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DOWNLOADING: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_9
    const-string p1, "PENDING"

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p0

    const/16 p1, 0x11

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
