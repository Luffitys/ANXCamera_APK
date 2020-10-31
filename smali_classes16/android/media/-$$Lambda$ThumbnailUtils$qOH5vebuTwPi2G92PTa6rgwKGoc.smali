.class public final synthetic Landroid/media/-$$Lambda$ThumbnailUtils$qOH5vebuTwPi2G92PTa6rgwKGoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$ThumbnailUtils$qOH5vebuTwPi2G92PTa6rgwKGoc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$ThumbnailUtils$qOH5vebuTwPi2G92PTa6rgwKGoc;

    invoke-direct {v0}, Landroid/media/-$$Lambda$ThumbnailUtils$qOH5vebuTwPi2G92PTa6rgwKGoc;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$ThumbnailUtils$qOH5vebuTwPi2G92PTa6rgwKGoc;->INSTANCE:Landroid/media/-$$Lambda$ThumbnailUtils$qOH5vebuTwPi2G92PTa6rgwKGoc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->lambda$createAudioThumbnail$1(Ljava/io/File;)I

    move-result p1

    return p1
.end method
