.class public Lcom/xiaomi/asr/engine/PhraseWakeupResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private isAec:Z

.field private isVBPassed:Z

.field private isVoconWakeupPassed:Z

.field private mDebugInfo:Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

.field private mScore:F

.field private mVoconPhrase:Ljava/lang/String;

.field private mWakeupEndTime:J

.field private mWakeupStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mDebugInfo:Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

    return-void
.end method


# virtual methods
.method public getDebugInfo()Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mDebugInfo:Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

    return-object p0
.end method

.method public getScore()F
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mScore:F

    return p0
.end method

.method public getVoconPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mVoconPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public getWakeupEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupEndTime:J

    return-wide v0
.end method

.method public getWakeupStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupStartTime:J

    return-wide v0
.end method

.method public isAec()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isAec:Z

    return p0
.end method

.method public isVBPassed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isVBPassed:Z

    return p0
.end method

.method public isVoconWakeupPassed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isVoconWakeupPassed:Z

    return p0
.end method

.method public setAec(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isAec:Z

    return-void
.end method

.method public setDebugInfo(Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mDebugInfo:Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mScore:F

    return-void
.end method

.method public setVBPassed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isVBPassed:Z

    return-void
.end method

.method public setVoconPhrase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mVoconPhrase:Ljava/lang/String;

    return-void
.end method

.method public setVoconWakeupPassed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isVoconWakeupPassed:Z

    return-void
.end method

.method public setWakeupEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupEndTime:J

    return-void
.end method

.method public setWakeupStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupStartTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhraseWakeupResult{mVoconPhrase=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mVoconPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isVoconWakeupPassed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isVoconWakeupPassed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWakeupStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWakeupEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isAec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isAec:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVBPassed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isVBPassed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
