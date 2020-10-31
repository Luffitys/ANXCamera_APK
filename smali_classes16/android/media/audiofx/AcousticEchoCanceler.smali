.class public Landroid/media/audiofx/AcousticEchoCanceler;
.super Landroid/media/audiofx/AudioEffect;
.source "AcousticEchoCanceler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcousticEchoCanceler"


# direct methods
.method private constructor <init>(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/AcousticEchoCanceler;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AcousticEchoCanceler;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method

.method public static create(I)Landroid/media/audiofx/AcousticEchoCanceler;
    .registers 6

    const-string v0, "AcousticEchoCanceler"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-direct {v2, p0}, Landroid/media/audiofx/AcousticEchoCanceler;-><init>(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_a

    move-object v1, v2

    :goto_9
    goto :goto_31

    :catch_a
    move-exception v2

    const-string/jumbo v3, "not enough memory"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_12
    move-exception v2

    const-string/jumbo v3, "not enough resources"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_1a
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not implemented on this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_31
    return-object v1
.end method

.method public static isAvailable()Z
    .registers 1

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
