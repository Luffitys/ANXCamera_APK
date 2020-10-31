.class public Landroid/media/audiofx/DynamicsProcessing$BandStage;
.super Landroid/media/audiofx/DynamicsProcessing$Stage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandStage"
.end annotation


# instance fields
.field private mBandCount:I


# direct methods
.method public constructor <init>(ZZI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, p3

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    return-void
.end method


# virtual methods
.method public getBandCount()I
    .registers 2

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, " Band Count: %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
