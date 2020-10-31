.class public final synthetic Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;

    invoke-direct {v0}, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;-><init>()V

    sput-object v0, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/location/LocationManager$LocationListenerTransport;

    check-cast p2, Ljava/util/concurrent/Executor;

    check-cast p3, Landroid/location/Location;

    invoke-static {p1, p2, p3}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$enkW18B0WwpQkSIMmVChmQ2YwC8(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/concurrent/Executor;Landroid/location/Location;)V

    return-void
.end method
