.class public final synthetic Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;

    invoke-direct {v0}, Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;-><init>()V

    sput-object v0, Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;

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

    check-cast p1, Landroid/location/LocationManager$GetCurrentLocationTransport;

    check-cast p2, Landroid/location/Location;

    invoke-static {p1, p2}, Landroid/location/LocationManager$GetCurrentLocationTransport;->lambda$TwoLg_IkGQIkPn-gbFfT0g9K-Ts(Landroid/location/LocationManager$GetCurrentLocationTransport;Landroid/location/Location;)V

    return-void
.end method
