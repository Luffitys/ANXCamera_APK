.class public Lcom/android/camera/watermark/WaterMarkBitmap;
.super Ljava/lang/Object;
.source "WaterMarkBitmap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterMarkBitmap"


# instance fields
.field private mWaterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field private mWaterMarkData:Lcom/android/camera/watermark/WaterMarkData;

.field private mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/watermark/WaterMarkBitmap;->generateWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkData:Lcom/android/camera/watermark/WaterMarkData;

    return-void
.end method


# virtual methods
.method public generateWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WaterMarkData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkData;->getWatermarkType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    sget-object p0, Lcom/android/camera/watermark/WaterMarkBitmap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected watermark type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;

    iget-object v1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    iget-object p0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    invoke-virtual {p0}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;

    iget-object v1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    iget-object p0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    invoke-virtual {p0}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lcom/android/camera/watermark/WaterMarkBitmap;->TAG:Ljava/lang/String;

    const-string v0, "The watermark data is empty."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkData:Lcom/android/camera/watermark/WaterMarkData;

    return-object p0
.end method

.method public releaseBitmap()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
