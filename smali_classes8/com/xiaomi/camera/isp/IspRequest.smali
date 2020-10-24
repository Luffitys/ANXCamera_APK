.class public Lcom/xiaomi/camera/isp/IspRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cropRegion:[I

.field public flipMode:I

.field public functionType:I

.field public inputBuffers:Ljava/util/ArrayList;

.field public requestNumber:I

.field public settings:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/camera/isp/IspRequest;->requestNumber:I

    iput p2, p0, Lcom/xiaomi/camera/isp/IspRequest;->flipMode:I

    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspRequest;->settings:Landroid/os/Parcelable;

    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspRequest;->inputBuffers:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspRequest;->cropRegion:[I

    iput p6, p0, Lcom/xiaomi/camera/isp/IspRequest;->functionType:I

    return-void
.end method
