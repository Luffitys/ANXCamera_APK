.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$Composed;,
        Landroid/os/VibrationEffect$Prebaked;,
        Landroid/os/VibrationEffect$Waveform;,
        Landroid/os/VibrationEffect$OneShot;,
        Landroid/os/VibrationEffect$EffectType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AMPLITUDE:I = -0x1

.field public static final EFFECT_CLICK:I = 0x0

.field public static final EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final EFFECT_HEAVY_CLICK:I = 0x5

.field public static final EFFECT_POP:I = 0x4

.field public static final EFFECT_STRENGTH_LIGHT:I = 0x0

.field public static final EFFECT_STRENGTH_MEDIUM:I = 0x1

.field public static final EFFECT_STRENGTH_STRONG:I = 0x2

.field public static final EFFECT_TEXTURE_TICK:I = 0x15

.field public static final EFFECT_THUD:I = 0x3

.field public static final EFFECT_TICK:I = 0x2

.field private static HAPTIC:Ljava/lang/String; = null

.field public static final MAX_AMPLITUDE:I = 0xff

.field private static final PARCEL_TOKEN_COMPOSITION:I = 0x4

.field private static final PARCEL_TOKEN_DYNAMIC:I = 0x5

.field private static final PARCEL_TOKEN_EFFECT:I = 0x3

.field private static final PARCEL_TOKEN_ONE_SHOT:I = 0x1

.field private static final PARCEL_TOKEN_WAVEFORM:I = 0x2

.field public static final RINGTONES:[I

.field public static final RINGTONESEXT:[I

.field private static SUPPORT_EXT_ID:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONESEXT:[I

    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_1a
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data

    :array_3c
    .array-data 4
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x81
        0x82
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
        0x89
        0x8a
        0x8b
        0x8c
        0x8d
        0x8e
        0x8f
        0x90
        0x91
        0x92
        0x93
        0x94
        0x95
        0x96
        0x97
        0x98
        0x99
        0x9a
        0x9b
        0x9c
        0x9d
        0x9e
        0x9f
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa9
        0xaa
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOneShot(JI)Landroid/os/VibrationEffect;
    .registers 4

    new-instance v0, Landroid/os/VibrationEffect$OneShot;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static createPredefined(I)Landroid/os/VibrationEffect;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static createWaveform([JI)Landroid/os/VibrationEffect;
    .registers 6

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_13

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static createWaveform([J[II)Landroid/os/VibrationEffect;
    .registers 4

    new-instance v0, Landroid/os/VibrationEffect$Waveform;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static get(I)Landroid/os/VibrationEffect;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static get(IZ)Landroid/os/VibrationEffect;
    .registers 3

    new-instance v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-direct {v0, p0, p1}, Landroid/os/VibrationEffect$Prebaked;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return-object v2

    :cond_10
    invoke-static {}, Landroid/os/VibrationEffect;->isLiner()Z

    move-result v1

    if-nez v1, :cond_17

    return-object v2

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_22

    move-object v3, p0

    :cond_22
    invoke-static {p1, p0}, Landroid/os/VibrationEffect;->uriMap(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/os/VibrationEffect;->getCustomized(Landroid/net/Uri;[Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v4

    if-eqz v4, :cond_2d

    return-object v4

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    array-length v6, v0

    if-ge v5, v6, :cond_5a

    sget-object v6, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v6, v6

    if-ge v5, v6, :cond_5a

    aget-object v6, v0, v5

    if-nez v6, :cond_3b

    goto :goto_57

    :cond_3b
    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_48

    goto :goto_57

    :cond_48
    invoke-virtual {v6, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    sget-object v2, Landroid/os/VibrationEffect;->RINGTONES:[I

    aget v2, v2, v5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    return-object v2

    :cond_57
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_5a
    return-object v2
.end method

.method private static getCustomized(Landroid/net/Uri;[Ljava/lang/String;)Landroid/os/VibrationEffect;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_37

    sget-object v2, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v2, v2

    sget-object v3, Landroid/os/VibrationEffect;->RINGTONESEXT:[I

    array-length v3, v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_37

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_34

    :cond_1a
    invoke-virtual {p0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    sget-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v3, v0

    if-ge v1, v3, :cond_28

    aget v0, v0, v1

    goto :goto_2f

    :cond_28
    sget-object v3, Landroid/os/VibrationEffect;->RINGTONESEXT:[I

    array-length v0, v0

    sub-int v0, v1, v0

    aget v0, v3, v0

    :goto_2f
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_37
    return-object v0
.end method

.method public static isLiner()Z
    .registers 2

    sget-object v0, Landroid/os/VibrationEffect;->HAPTIC:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    const-string/jumbo v0, "sys.haptic.motor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/VibrationEffect;->HAPTIC:Ljava/lang/String;

    :cond_15
    sget-object v0, Landroid/os/VibrationEffect;->HAPTIC:Ljava/lang/String;

    const-string v1, "linear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/VibrationEffect;->SUPPORT_EXT_ID:Z

    return v0
.end method

.method protected static scale(IFI)I
    .registers 5

    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0, p1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static startComposition()Landroid/os/VibrationEffect$Composition;
    .registers 1

    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method private static uriMap(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10

    move-object v0, p1

    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move-object v0, v3

    :cond_35
    goto :goto_3a

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public abstract validate()V
.end method
