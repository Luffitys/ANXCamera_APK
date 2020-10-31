.class final Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamTemplate"
.end annotation


# instance fields
.field public mFormat:I

.field public mIsInput:Z

.field public mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;


# direct methods
.method public constructor <init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    iput-object p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    iput-boolean p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mIsInput:Z

    return-void
.end method
