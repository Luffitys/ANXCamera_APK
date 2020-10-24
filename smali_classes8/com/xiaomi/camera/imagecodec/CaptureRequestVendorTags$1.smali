.class final Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;
.super Lcom/xiaomi/camera/imagecodec/VendorTag;
.source ""


# instance fields
.field final synthetic val$klass:Ljava/lang/Class;

.field final synthetic val$nameSupplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$klass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$nameSupplier:Ljava/util/function/Supplier;

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/VendorTag;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$klass:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->create()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$nameSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
