.class public Lcom/android/camera/module/encoder/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SoundEffect"


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "camera_sound_effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/camera/module/encoder/SoundEffect;->TAG:Ljava/lang/String;

    const-string v2, "load libcamera_sound_effect.so failed."

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    invoke-static {p1, p2}, Lcom/android/camera/module/encoder/SoundEffect;->newInstance(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    return-void
.end method

.method private static final native flush(J)V
.end method

.method private static final native newInstance(II)J
.end method

.method private static final native putSamples(J[S)V
.end method

.method private static final native receiveSamples(JI)[S
.end method

.method private static final native release(J)V
.end method

.method private static final native setTempo(JF)V
.end method


# virtual methods
.method public flush()V
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    invoke-static {v0, v1}, Lcom/android/camera/module/encoder/SoundEffect;->flush(J)V

    return-void
.end method

.method public putSamples([S)V
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/encoder/SoundEffect;->putSamples(J[S)V

    return-void
.end method

.method public receiveSamples(I)[S
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/encoder/SoundEffect;->receiveSamples(JI)[S

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    invoke-static {v0, v1}, Lcom/android/camera/module/encoder/SoundEffect;->release(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    return-void
.end method

.method public setTempo(F)V
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/encoder/SoundEffect;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/encoder/SoundEffect;->setTempo(JF)V

    return-void
.end method
