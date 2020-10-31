.class public final Landroid/media/AudioMetadata;
.super Ljava/lang/Object;
.source "AudioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioMetadata$BaseMapPackage;,
        Landroid/media/AudioMetadata$ObjectPackage;,
        Landroid/media/AudioMetadata$DataPackage;,
        Landroid/media/AudioMetadata$AutoGrowByteBuffer;,
        Landroid/media/AudioMetadata$BaseMap;,
        Landroid/media/AudioMetadata$Format;,
        Landroid/media/AudioMetadata$Key;
    }
.end annotation


# static fields
.field private static final AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

.field private static final AUDIO_METADATA_OBJ_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUDIO_METADATA_OBJ_TYPE_BASEMAP:I = 0x6

.field private static final AUDIO_METADATA_OBJ_TYPE_DOUBLE:I = 0x4

.field private static final AUDIO_METADATA_OBJ_TYPE_FLOAT:I = 0x3

.field private static final AUDIO_METADATA_OBJ_TYPE_INT:I = 0x1

.field private static final AUDIO_METADATA_OBJ_TYPE_LONG:I = 0x2

.field private static final AUDIO_METADATA_OBJ_TYPE_NONE:I = 0x0

.field private static final AUDIO_METADATA_OBJ_TYPE_STRING:I = 0x5

.field private static final DATA_PACKAGES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioMetadata$DataPackage<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

.field private static final TAG:Ljava/lang/String; = "AudioMetadata"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/media/AudioMetadata$2;

    invoke-direct {v0}, Landroid/media/AudioMetadata$2;-><init>()V

    sput-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_OBJ_TYPES:Ljava/util/HashMap;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

    new-instance v0, Landroid/media/AudioMetadata$3;

    invoke-direct {v0}, Landroid/media/AudioMetadata$3;-><init>()V

    sput-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/HashMap;

    new-instance v0, Landroid/media/AudioMetadata$ObjectPackage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioMetadata$ObjectPackage;-><init>(Landroid/media/AudioMetadata$1;)V

    sput-object v0, Landroid/media/AudioMetadata;->OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_OBJ_TYPES:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/AudioMetadata$ObjectPackage;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

    return-object v0
.end method

.method public static createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/AudioMetadata$Key;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/media/AudioMetadata$Key<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/media/AudioMetadata$1;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioMetadata$1;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createMap()Landroid/media/AudioMetadataMap;
    .registers 1

    new-instance v0, Landroid/media/AudioMetadata$BaseMap;

    invoke-direct {v0}, Landroid/media/AudioMetadata$BaseMap;-><init>()V

    return-object v0
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;
    .registers 6

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    const/4 v1, 0x0

    const-string v2, "AudioMetadata"

    if-nez v0, :cond_18

    const-string v3, "Cannot find DataPackage for BaseMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_18
    :try_start_18
    invoke-interface {v0, p0}, Landroid/media/AudioMetadata$DataPackage;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioMetadata$BaseMap;
    :try_end_1e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    move-exception v3

    const-string v4, "No enough data to unpack"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static toByteBuffer(Landroid/media/AudioMetadata$BaseMap;Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 6

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    const-string v2, "AudioMetadata"

    const-string v3, "Cannot find DataPackage for BaseMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_18
    new-instance v2, Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    invoke-direct {v2}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->order(Ljava/nio/ByteOrder;)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    invoke-interface {v0, v2, p0}, Landroid/media/AudioMetadata$DataPackage;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->getRawByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    :cond_2b
    return-object v1
.end method
