.class Landroid/location/LocationManager$GnssStatusListenerManager$1;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerManager;->convertKey(Ljava/lang/Object;)Landroid/location/GnssStatus$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mGpsListener:Landroid/location/GpsStatus$Listener;

.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

.field final synthetic val$listener:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerManager;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    iget-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->val$listener:Ljava/lang/Object;

    check-cast p2, Landroid/location/GpsStatus$Listener;

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->mGpsListener:Landroid/location/GpsStatus$Listener;

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$1;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method
