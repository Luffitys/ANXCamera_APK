.class public Landroid/media/audiofx/MiSound;
.super Landroid/media/audiofx/AudioEffect;
.source "MiSound.java"


# static fields
.field public static final EARS_COMPENSATION_DISABLE:I = 0x0

.field public static final EARS_COMPENSATION_ENABLE:I = 0x1

.field private static final EFFECT_TYPE_MISOUND:Ljava/util/UUID;

.field public static final EQ_SOUND_PRESET_DEFAULT:I = 0x0

.field public static final EQ_SOUND_PRESET_SIXTY:I = 0x3

.field public static final EQ_SOUND_PRESET_THIRTY:I = 0x1

.field public static final EQ_SOUND_PRESET_THIRTY_SIXTY:I = 0x2

.field public static final HEADSETLIST_SIZE:I = 0x12c

.field private static final MISOUND_BAND_MAX_NUMBER:I = 0x6

.field public static final MISOUND_HEADSET_EM001:I = 0xf

.field public static final MISOUND_HEADSET_EM006:I = 0x12

.field public static final MISOUND_HEADSET_EM007:I = 0x10

.field public static final MISOUND_HEADSET_EM013:I = 0x13

.field public static final MISOUND_HEADSET_EM015:I = 0x14

.field public static final MISOUND_HEADSET_EM017:I = 0x15

.field public static final MISOUND_HEADSET_EM018:I = 0x16

.field public static final MISOUND_HEADSET_EM019:I = 0x17

.field public static final MISOUND_HEADSET_EM031:I = 0x18

.field public static final MISOUND_HEADSET_EM033:I = 0x19

.field public static final MISOUND_HEADSET_EM035:I = 0x1a

.field public static final MISOUND_HEADSET_EM037:I = 0x1b

.field public static final MISOUND_HEADSET_EM303:I = 0xd

.field public static final MISOUND_HEADSET_EM304:I = 0xe

.field public static final MISOUND_HEADSET_GENERAL:I = 0x5

.field public static final MISOUND_HEADSET_GENERAL_INEAR:I = 0x6

.field public static final MISOUND_HEADSET_HM004:I = 0x11

.field public static final MISOUND_HEADSET_MEP100:I = 0x1

.field public static final MISOUND_HEADSET_MEP200:I = 0x2

.field public static final MISOUND_HEADSET_MK101:I = 0x7

.field public static final MISOUND_HEADSET_MK301:I = 0x8

.field public static final MISOUND_HEADSET_MK303:I = 0x9

.field public static final MISOUND_HEADSET_MO701:I = 0xa

.field public static final MISOUND_HEADSET_MR102:I = 0xb

.field public static final MISOUND_HEADSET_NONE:I = 0x0

.field public static final MISOUND_HEADSET_PHD:I = 0xc

.field public static final MISOUND_HEADSET_PISTON100:I = 0x3

.field public static final MISOUND_HEADSET_PISTON200:I = 0x4

.field public static final MISOUND_MODE_MOVIE:I = 0x1

.field public static final MISOUND_MODE_MOVIE_CINEMA:I = 0x0

.field public static final MISOUND_MODE_MOVIE_CINIMA:I = 0x0

.field public static final MISOUND_MODE_MOVIE_STUDIO:I = 0x1

.field public static final MISOUND_MODE_MUSIC:I = 0x0

.field private static final MISOUND_PARAM_EQ_COMPENSATION_ENABLE:I = 0x9

.field private static final MISOUND_PARAM_EQ_COMPENSATION_EXAMPLE:I = 0xe

.field private static final MISOUND_PARAM_EQ_COMPENSATION_LEFT:I = 0xa

.field private static final MISOUND_PARAM_EQ_COMPENSATION_LEFT_SAVE:I = 0xc

.field private static final MISOUND_PARAM_EQ_COMPENSATION_RIGHT:I = 0xb

.field private static final MISOUND_PARAM_EQ_COMPENSATION_RIGHT_SAVE:I = 0xd

.field private static final MISOUND_PARAM_EQ_LEVEL:I = 0x2

.field private static final MISOUND_PARAM_HEADSETLIST:I = 0x13

.field private static final MISOUND_PARAM_HEADSET_TYPE:I = 0x1

.field private static final MISOUND_PARAM_HIFI_MODE:I = 0x8

.field private static final MISOUND_PARAM_MODE:I = 0x3

.field private static final MISOUND_PARAM_MOVIE:I = 0x5

.field private static final MISOUND_PARAM_MOVIE_MODE:I = 0x7

.field private static final MISOUND_PARAM_MOVIE_MODE_ENABLE:I = 0x12

.field private static final MISOUND_PARAM_MOVIE_SURROUND:I = 0x10

.field private static final MISOUND_PARAM_MOVIE_VOCAL:I = 0x11

.field private static final MISOUND_PARAM_MUSIC:I = 0x4

.field private static final MISOUND_PARAM_SCENARIO:I = 0xf

.field public static final MISOUND_SCENARIO_AUTO:I = 0x4

.field public static final MISOUND_SCENARIO_DEFAULT:I = 0x0

.field public static final MISOUND_SCENARIO_MOVIE:I = 0x2

.field public static final MISOUND_SCENARIO_MUSIC:I = 0x1

.field public static final MISOUND_SCENARIO_VOCAL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiSound"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string v0, "5b8e36a5-144a-4c38-b1d7-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_MISOUND:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    sget-object v0, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_MISOUND:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method


# virtual methods
.method public getEarsCompensationAllEQLeft()[F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->getEarsCompensationEQLeft(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-object v1

    nop

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getEarsCompensationAllEQRight()[F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->getEarsCompensationEQRight(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-object v1

    nop

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getEarsCompensationEQExample()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0xe

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getEarsCompensationEQLeft(I)F
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

    new-array v1, v1, [I

    const/16 v2, 0xa

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x6

    if-le p1, v2, :cond_f

    const/4 p1, 0x6

    :cond_f
    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getEarsCompensationEQRight(I)F
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

    new-array v1, v1, [I

    const/16 v2, 0xa

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v1, v3

    const/4 v3, 0x6

    if-le p1, v3, :cond_11

    const/4 p1, 0x6

    :cond_11
    const/4 v3, 0x1

    aput p1, v1, v3

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getEarsCompensationOn()I
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

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getHeadsetList()[I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x12c

    new-array v0, v0, [B

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/MiSound;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    const/4 v4, 0x3

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v1, v5

    new-array v5, v1, [I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MiSound"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_44
    if-ge v6, v1, :cond_8d

    add-int/lit8 v8, v6, 0x1

    mul-int/lit8 v8, v8, 0x4

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v3

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v4

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v5, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getvalue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_8d
    return-object v5
.end method

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

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getScenario()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0xf

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public setEarsCompensationAllEQLeft([FI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    const/4 p2, 0x6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_21

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_13

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQLeftSave(IF)V

    goto :goto_1e

    :cond_13
    add-int/lit8 v1, p2, -0x1

    if-ne v0, v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQLeft(IF)V

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method

.method public setEarsCompensationAllEQRight([FI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    const/4 p2, 0x6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_21

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_13

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQRightSave(IF)V

    goto :goto_1e

    :cond_13
    add-int/lit8 v1, p2, -0x1

    if-ne v0, v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQRight(IF)V

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method

.method public setEarsCompensationEQExample(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setEarsCompensationEQLeft(IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    const/4 p1, 0x6

    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setEarsCompensationEQLeftSave(IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    const/4 p1, 0x6

    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setEarsCompensationEQRight(IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    const/4 p1, 0x6

    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setEarsCompensationEQRightSave(IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    const/4 p1, 0x6

    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setEarsCompensationOn(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
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

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setMovieModeEnable(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setMovieSurroundLevel(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setMovieVocalLevel(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

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

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method

.method public setScenario(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    return-void
.end method
