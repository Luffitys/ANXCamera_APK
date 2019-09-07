.class public Lcom/ss/android/vesdk/VEReverb2Params;
.super Ljava/lang/Object;
.source "VEReverb2Params.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;
    }
.end annotation


# instance fields
.field public bassb:F

.field public basslpf:F

.field public damplpf:F

.field public delay:F

.field public dry:F

.field public enable:Z

.field public enableExciter:Z

.field public ereffactor:F

.field public erefwet:F

.field public erefwidth:F

.field public ertolate:F

.field public inputlpf:F

.field public outputlpf:F

.field public oversamplefactor:I

.field public rate:I

.field public rt60:F

.field public spin:F

.field public wander:F

.field public wet:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    const v1, 0xac44

    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const v2, 0x468ca000    # 18000.0f

    iput v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const v3, 0x44834000    # 1050.0f

    iput v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    iput v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    iput v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEReverb2Params;
    .locals 5

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    const/4 v2, 0x2

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    const/4 v1, 0x3

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    const/4 v2, 0x4

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const/4 v1, 0x5

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    const/4 v2, 0x6

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    const/4 v1, 0x7

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const/16 v2, 0x8

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    const/16 v1, 0x9

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    const/16 v2, 0xa

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    const/16 v1, 0xb

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const/16 v2, 0xc

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    const/16 v1, 0xd

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    const/16 v2, 0xe

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const/16 v1, 0xf

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const/16 v2, 0x10

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    const/16 v1, 0x11

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    const/16 v2, 0x12

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    const/16 v1, 0x13

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/ss/android/vesdk/VEReverb2Params;
    .locals 0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEReverb2Params;->getParamsAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/VEReverb2Params;->fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEReverb2Params;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/ss/android/vesdk/VEReverb2Params;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    iget-boolean v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    iget-boolean v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    iget v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    iget v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    iget p0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getParamsAsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverb2Params{enableExciter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oversamplefactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ertolate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", erefwet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ereffactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", erefwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wander="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bassb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", spin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", inputlpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", basslpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", damplpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", outputlpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rt60="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
