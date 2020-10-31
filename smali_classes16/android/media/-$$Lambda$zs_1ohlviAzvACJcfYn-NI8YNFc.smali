.class public final synthetic Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;

    invoke-direct {v0}, Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;->INSTANCE:Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;

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

    check-cast p1, Landroid/media/MediaRoute2ProviderService;

    check-cast p2, Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p1, p2}, Landroid/media/MediaRoute2ProviderService;->onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method
