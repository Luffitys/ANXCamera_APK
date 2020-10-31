.class public Landroid/media/MediaMetrics;
.super Ljava/lang/Object;
.source "MediaMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetrics$Item;,
        Landroid/media/MediaMetrics$Key;,
        Landroid/media/MediaMetrics$Property;,
        Landroid/media/MediaMetrics$Value;,
        Landroid/media/MediaMetrics$Name;
    }
.end annotation


# static fields
.field private static final MEDIAMETRICS_CHARSET:Ljava/nio/charset/Charset;

.field public static final SEPARATOR:Ljava/lang/String; = "."

.field public static final TAG:Ljava/lang/String; = "MediaMetrics"

.field private static final TYPE_CSTRING:I = 0x4

.field private static final TYPE_DOUBLE:I = 0x3

.field private static final TYPE_INT32:I = 0x1

.field private static final TYPE_INT64:I = 0x2

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_RATE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/MediaMetrics;->MEDIAMETRICS_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Landroid/media/MediaMetrics;->MEDIAMETRICS_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;I)I
    .registers 3

    invoke-static {p0, p1}, Landroid/media/MediaMetrics;->native_submit_bytebuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/MediaMetrics$Key;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/media/MediaMetrics$Key<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMetrics$1;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaMetrics$1;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static native native_submit_bytebuffer(Ljava/nio/ByteBuffer;I)I
.end method
