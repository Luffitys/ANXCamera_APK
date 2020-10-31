.class public final synthetic Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$Y04J69jgqbK9_Wo7TZhFFWS0ztk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$Y04J69jgqbK9_Wo7TZhFFWS0ztk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$Y04J69jgqbK9_Wo7TZhFFWS0ztk;

    invoke-direct {v0}, Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$Y04J69jgqbK9_Wo7TZhFFWS0ztk;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$Y04J69jgqbK9_Wo7TZhFFWS0ztk;->INSTANCE:Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$Y04J69jgqbK9_Wo7TZhFFWS0ztk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/media/RouteDiscoveryPreference$Builder;->lambda$setPreferredFeatures$1(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
