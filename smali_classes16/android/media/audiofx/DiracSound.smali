.class public Landroid/media/audiofx/DiracSound;
.super Landroid/media/audiofx/AudioEffect;
.source "DiracSound.java"


# static fields
.field public static final DIRACSOUND_HEADSET_EM001:I = 0xf

.field public static final DIRACSOUND_HEADSET_EM006:I = 0x12

.field public static final DIRACSOUND_HEADSET_EM007:I = 0x10

.field public static final DIRACSOUND_HEADSET_EM013:I = 0x13

.field public static final DIRACSOUND_HEADSET_EM015:I = 0x14

.field public static final DIRACSOUND_HEADSET_EM017:I = 0x15

.field public static final DIRACSOUND_HEADSET_EM018:I = 0x16

.field public static final DIRACSOUND_HEADSET_EM019:I = 0x17

.field public static final DIRACSOUND_HEADSET_EM303:I = 0xd

.field public static final DIRACSOUND_HEADSET_EM304:I = 0xe

.field public static final DIRACSOUND_HEADSET_GENERAL:I = 0x5

.field public static final DIRACSOUND_HEADSET_GENERAL_INEAR:I = 0x6

.field public static final DIRACSOUND_HEADSET_HM004:I = 0x11

.field public static final DIRACSOUND_HEADSET_MEP100:I = 0x1

.field public static final DIRACSOUND_HEADSET_MEP200:I = 0x2

.field public static final DIRACSOUND_HEADSET_MK101:I = 0x7

.field public static final DIRACSOUND_HEADSET_MK301:I = 0x8

.field public static final DIRACSOUND_HEADSET_MK303:I = 0x9

.field public static final DIRACSOUND_HEADSET_MO701:I = 0xa

.field public static final DIRACSOUND_HEADSET_MR102:I = 0xb

.field public static final DIRACSOUND_HEADSET_NONE:I = 0x0

.field public static final DIRACSOUND_HEADSET_PHD:I = 0xc

.field public static final DIRACSOUND_HEADSET_PISTON100:I = 0x3

.field public static final DIRACSOUND_HEADSET_PISTON200:I = 0x4

.field public static final DIRACSOUND_MODE_MOVIE:I = 0x1

.field public static final DIRACSOUND_MODE_MOVIE_CINEMA:I = 0x0

.field public static final DIRACSOUND_MODE_MOVIE_CINIMA:I = 0x0

.field public static final DIRACSOUND_MODE_MOVIE_STUDIO:I = 0x1

.field public static final DIRACSOUND_MODE_MUSIC:I = 0x0

.field private static final DIRACSOUND_PARAM_EQ_LEVEL:I = 0x2

.field private static final DIRACSOUND_PARAM_HEADSET_TYPE:I = 0x1

.field private static final DIRACSOUND_PARAM_HIFI_MODE:I = 0x8

.field private static final DIRACSOUND_PARAM_MODE:I = 0x3

.field private static final DIRACSOUND_PARAM_MOVIE:I = 0x5

.field private static final DIRACSOUND_PARAM_MOVIE_MODE:I = 0x7

.field private static final DIRACSOUND_PARAM_MUSIC:I = 0x4

.field private static final DIRACSOUND_PARAM_SPEAKER_STEREO_MODE:I = 0x9

.field private static final EFFECT_TYPE_DIRACSOUND:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "DiracSound"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string v0, "e069d9e0-8329-11df-9168-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/DiracSound;->EFFECT_TYPE_DIRACSOUND:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    sget-object v0, Landroid/media/audiofx/DiracSound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/DiracSound;->EFFECT_TYPE_DIRACSOUND:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method


# virtual methods
.method public getHeadsetType()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DiracSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getLevel(I)F
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/16 v3, 0xa

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/DiracSound;->getParameter([I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DiracSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getMovie()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DiracSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getMovieMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DiracSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getMusic()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DiracSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getSpeakerStereoMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x9

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DiracSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public setHeadsetType(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setHifiMode(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setLevel(IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/DiracSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setMode(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setMovie(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setMovieMode(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setMusic(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method

.method public setSpeakerStereoMode(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DiracSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/DiracSound;->checkStatus(I)V

    return-void
.end method
