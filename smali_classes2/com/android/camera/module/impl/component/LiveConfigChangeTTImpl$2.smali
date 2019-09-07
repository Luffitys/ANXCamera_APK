.class Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;
.super Ljava/lang/Object;
.source "LiveConfigChangeTTImpl.java"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->startPreview(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardEncoderInit(Z)V
    .locals 0

    return-void
.end method

.method public onNativeInit(ILjava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$400(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Lcom/ss/android/vesdk/TERecorder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$502(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;Z)Z

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/ss/android/vesdk/TERecorder;->slamDeviceConfig(ZZZZ)I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slam config result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/TERecorder;->setUseLargeMattingModel(Z)V

    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {p2}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$600(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {p2}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$600(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/TERecorder;->switchEffect(Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getLiveFilter()I

    move-result p1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$700(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/android/camera/effect/EffectController;->findLiveFilter(Landroid/content/Context;I)Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;->directoryName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setFilter(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$800(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V

    return-void
.end method
