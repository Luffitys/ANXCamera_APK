.class public final synthetic Landroid/media/-$$Lambda$MediaExtractor$AQWHHMUeHgJTkS0k0b0xoZxPezM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$MediaExtractor$AQWHHMUeHgJTkS0k0b0xoZxPezM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$MediaExtractor$AQWHHMUeHgJTkS0k0b0xoZxPezM;

    invoke-direct {v0}, Landroid/media/-$$Lambda$MediaExtractor$AQWHHMUeHgJTkS0k0b0xoZxPezM;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$MediaExtractor$AQWHHMUeHgJTkS0k0b0xoZxPezM;->INSTANCE:Landroid/media/-$$Lambda$MediaExtractor$AQWHHMUeHgJTkS0k0b0xoZxPezM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Landroid/media/MediaExtractor;->lambda$getDrmInitData$0(Ljava/util/Map$Entry;)Landroid/media/DrmInitData$SchemeInitData;

    move-result-object p1

    return-object p1
.end method
