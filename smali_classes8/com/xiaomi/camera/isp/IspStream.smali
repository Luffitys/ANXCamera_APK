.class public Lcom/xiaomi/camera/isp/IspStream;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public format:I

.field public height:I

.field public streamId:J

.field public stride:[I

.field public width:I


# direct methods
.method public constructor <init>(JII[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    iput p3, p0, Lcom/xiaomi/camera/isp/IspStream;->width:I

    iput p4, p0, Lcom/xiaomi/camera/isp/IspStream;->height:I

    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspStream;->stride:[I

    iput p6, p0, Lcom/xiaomi/camera/isp/IspStream;->format:I

    return-void
.end method
