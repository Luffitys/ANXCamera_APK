.class public final enum Lcom/xiaomi/inceptionmediaprocess/EffectType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum AF_Mp3MixFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum AF_SpeedFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum AudioMixerFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum BasicImageFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum BasicTransitionFilter2:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum CropFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum ExtractCoverFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum PhotoFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum PngTransformFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum ReverseFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum RotateFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum ScaleFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum SetptsExtFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum ShakeFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum TransitionEraseFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum TransitionFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum TransitionOverlappFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum TransitionRotateFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum TransitionZoomFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

.field public static final enum TrimFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "BasicTransitionFilter2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->BasicTransitionFilter2:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "ExtractCoverFilter"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ExtractCoverFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "PhotoFilter"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->PhotoFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "PngTransformFilter"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->PngTransformFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "ReverseFilter"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ReverseFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "RotateFilter"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->RotateFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "ScaleFilter"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ScaleFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "SetptsExtFilter"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->SetptsExtFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "TrimFilter"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TrimFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "TransitionFilter"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "TransitionOverlappFilter"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionOverlappFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "TransitionEraseFilter"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionEraseFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "TransitionRotateFilter"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionRotateFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "TransitionZoomFilter"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionZoomFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "AF_Mp3MixFilter"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->AF_Mp3MixFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "AF_SpeedFilter"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->AF_SpeedFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "AudioMixerFilter"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->AudioMixerFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "BasicImageFilter"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->BasicImageFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "CropFilter"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->CropFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const-string v1, "ShakeFilter"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/xiaomi/inceptionmediaprocess/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ShakeFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/xiaomi/inceptionmediaprocess/EffectType;

    sget-object v16, Lcom/xiaomi/inceptionmediaprocess/EffectType;->BasicTransitionFilter2:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ExtractCoverFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->PhotoFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->PngTransformFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ReverseFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->RotateFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->ScaleFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->SetptsExtFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TrimFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionOverlappFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionEraseFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionRotateFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    aput-object v2, v1, v14

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->TransitionZoomFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->AF_Mp3MixFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->AF_SpeedFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->AudioMixerFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->BasicImageFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/inceptionmediaprocess/EffectType;->CropFilter:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/xiaomi/inceptionmediaprocess/EffectType;->$VALUES:[Lcom/xiaomi/inceptionmediaprocess/EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/inceptionmediaprocess/EffectType;
    .locals 6

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->BasicTransitionFilter2:Lcom/xiaomi/inceptionmediaprocess/EffectType;

    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/EffectType;->values()[Lcom/xiaomi/inceptionmediaprocess/EffectType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/inceptionmediaprocess/EffectType;
    .locals 1

    const-class v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/inceptionmediaprocess/EffectType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/inceptionmediaprocess/EffectType;
    .locals 1

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->$VALUES:[Lcom/xiaomi/inceptionmediaprocess/EffectType;

    invoke-virtual {v0}, [Lcom/xiaomi/inceptionmediaprocess/EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/inceptionmediaprocess/EffectType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/inceptionmediaprocess/EffectType;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
