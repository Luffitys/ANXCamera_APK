.class public final synthetic Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$RAMVaK9RAZ5Ai0qMO3YINliBf1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$RAMVaK9RAZ5Ai0qMO3YINliBf1o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$RAMVaK9RAZ5Ai0qMO3YINliBf1o;

    invoke-direct {v0}, Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$RAMVaK9RAZ5Ai0qMO3YINliBf1o;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$RAMVaK9RAZ5Ai0qMO3YINliBf1o;->INSTANCE:Landroid/media/-$$Lambda$RouteDiscoveryPreference$Builder$RAMVaK9RAZ5Ai0qMO3YINliBf1o;

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

    invoke-static {p1}, Landroid/media/RouteDiscoveryPreference$Builder;->lambda$new$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
