.class public final Landroid/media/audiofx/DynamicsProcessing$Channel;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Channel"
.end annotation


# instance fields
.field private mInputGain:F

.field private mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

.field private mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

.field private mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

.field private mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;


# direct methods
.method public constructor <init>(FZIZIZIZ)V
    .registers 28

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Eq;

    const/4 v3, 0x1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct {v2, v4, v3, v5}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct {v2, v6, v3, v7}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Eq;

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct {v2, v8, v3, v9}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x42700000    # 60.0f

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x0

    move-object v10, v2

    move/from16 v11, p8

    invoke-direct/range {v10 .. v18}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-void
.end method

.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-void
.end method


# virtual methods
.method public getInputGain()F
    .registers 2

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    return v0
.end method

.method public getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-object v0
.end method

.method public getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    return-object v0
.end method

.method public getMbcBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .registers 3

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v0

    return-object v0
.end method

.method public getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object v0
.end method

.method public getPostEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 3

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object v0
.end method

.method public getPreEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 3

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public setInputGain(F)V
    .registers 2

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    return-void
.end method

.method public setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .registers 3

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-void
.end method

.method public setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 5

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MbcBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 4

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    return-void
.end method

.method public setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 5

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 4

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 5

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 4

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " InputGain: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->PreEq\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->MBC\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->PostEq\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->Limiter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
