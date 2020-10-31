.class public final synthetic Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$4EPi22o4xuVnpNhFHnDvebH4TG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssStatus;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$4EPi22o4xuVnpNhFHnDvebH4TG8;->f$0:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$4EPi22o4xuVnpNhFHnDvebH4TG8;->f$0:Landroid/location/GnssStatus;

    check-cast p1, Landroid/location/GnssStatus$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->lambda$onSvStatusChanged$1(Landroid/location/GnssStatus;Landroid/location/GnssStatus$Callback;)V

    return-void
.end method
