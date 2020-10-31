.class public final synthetic Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;

    invoke-direct {v0}, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;-><init>()V

    sput-object v0, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/location/LocationManager$LocationListenerTransport;

    check-cast p2, Ljava/util/concurrent/Executor;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-static {p1, p2, p3, p4}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$C3xaM63A8GAwfJNN4R634OLsvDc(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    return-void
.end method
