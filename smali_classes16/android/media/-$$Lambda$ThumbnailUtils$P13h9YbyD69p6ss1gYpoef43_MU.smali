.class public final synthetic Landroid/media/-$$Lambda$ThumbnailUtils$P13h9YbyD69p6ss1gYpoef43_MU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$ThumbnailUtils$P13h9YbyD69p6ss1gYpoef43_MU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$ThumbnailUtils$P13h9YbyD69p6ss1gYpoef43_MU;

    invoke-direct {v0}, Landroid/media/-$$Lambda$ThumbnailUtils$P13h9YbyD69p6ss1gYpoef43_MU;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$ThumbnailUtils$P13h9YbyD69p6ss1gYpoef43_MU;->INSTANCE:Landroid/media/-$$Lambda$ThumbnailUtils$P13h9YbyD69p6ss1gYpoef43_MU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Landroid/media/ThumbnailUtils;->lambda$createAudioThumbnail$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
