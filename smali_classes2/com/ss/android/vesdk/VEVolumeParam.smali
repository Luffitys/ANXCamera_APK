.class public Lcom/ss/android/vesdk/VEVolumeParam;
.super Ljava/lang/Object;
.source "VEVolumeParam.java"


# instance fields
.field public bgmPlayVolume:F

.field public enhanceSysPlayVolume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    return-void
.end method
