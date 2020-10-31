.class public final Landroid/media/audiofx/DynamicsProcessing$EqBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EqBand"
.end annotation


# instance fields
.field private mGain:F


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 4

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return-void
.end method

.method public constructor <init>(ZFF)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return-void
.end method


# virtual methods
.method public getGain()F
    .registers 2

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return v0
.end method

.method public setGain(F)V
    .registers 2

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " Gain: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
