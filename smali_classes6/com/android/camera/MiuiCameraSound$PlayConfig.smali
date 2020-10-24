.class public Lcom/android/camera/MiuiCameraSound$PlayConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public soundId:I

.field public volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/MiuiCameraSound$PlayConfig;->volume:F

    return-void
.end method
