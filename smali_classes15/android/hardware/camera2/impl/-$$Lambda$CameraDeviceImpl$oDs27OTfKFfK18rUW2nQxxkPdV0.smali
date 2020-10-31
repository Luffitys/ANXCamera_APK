.class public final synthetic Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$oDs27OTfKFfK18rUW2nQxxkPdV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$oDs27OTfKFfK18rUW2nQxxkPdV0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$oDs27OTfKFfK18rUW2nQxxkPdV0;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$oDs27OTfKFfK18rUW2nQxxkPdV0;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$oDs27OTfKFfK18rUW2nQxxkPdV0;->INSTANCE:Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$oDs27OTfKFfK18rUW2nQxxkPdV0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->lambda$oDs27OTfKFfK18rUW2nQxxkPdV0(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    return-void
.end method
