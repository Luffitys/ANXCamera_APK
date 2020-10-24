.class Landroidx/core/location/LocationManagerCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$locationManager:Landroid/location/LocationManager;

.field final synthetic val$myTransport:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$1;->val$locationManager:Landroid/location/LocationManager;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$1;->val$myTransport:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$1;->val$locationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$1;->val$myTransport:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    invoke-virtual {p0}, Landroidx/core/location/LocationManagerCompat$1;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
