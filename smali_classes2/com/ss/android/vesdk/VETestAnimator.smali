.class public Lcom/ss/android/vesdk/VETestAnimator;
.super Ljava/lang/Object;
.source "VETestAnimator.java"

# interfaces
.implements Lcom/ss/android/vesdk/VEStickerAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDegree(I)F
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timestamp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VETestAnimator"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x42100000    # 36.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getScaleX(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    return p0
.end method

.method public getScaleY(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    return p0
.end method

.method public getTransX(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getTransY(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p1

    return p0
.end method
