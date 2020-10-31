.class public final Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelParamRange"
.end annotation


# instance fields
.field private final mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEnd()I
    .registers 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .registers 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->getStart()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
