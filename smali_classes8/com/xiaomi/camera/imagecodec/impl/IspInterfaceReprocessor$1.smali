.class final Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;
.super Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
    .locals 1

    new-instance p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->create()Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    move-result-object p0

    return-object p0
.end method
