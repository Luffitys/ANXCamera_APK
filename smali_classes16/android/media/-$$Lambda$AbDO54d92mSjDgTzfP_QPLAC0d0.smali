.class public final synthetic Landroid/media/-$$Lambda$AbDO54d92mSjDgTzfP_QPLAC0d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$AbDO54d92mSjDgTzfP_QPLAC0d0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$AbDO54d92mSjDgTzfP_QPLAC0d0;

    invoke-direct {v0}, Landroid/media/-$$Lambda$AbDO54d92mSjDgTzfP_QPLAC0d0;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$AbDO54d92mSjDgTzfP_QPLAC0d0;->INSTANCE:Landroid/media/-$$Lambda$AbDO54d92mSjDgTzfP_QPLAC0d0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/media/MediaRouter2;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter2;->addRoutesOnHandler(Ljava/util/List;)V

    return-void
.end method
