.class public Lcom/xiaomi/camera/isp/IspBuffer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bufferImage:Landroid/media/Image;

.field public streamId:J

.field public tuningImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(JLandroid/media/Image;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/camera/isp/IspBuffer;->streamId:J

    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspBuffer;->bufferImage:Landroid/media/Image;

    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspBuffer;->tuningImage:Landroid/media/Image;

    return-void
.end method
