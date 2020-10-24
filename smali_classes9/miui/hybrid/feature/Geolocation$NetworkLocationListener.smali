.class Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Geolocation;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Geolocation;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiui/hybrid/feature/Geolocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->access$100(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->access$100(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    iget-object p0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    invoke-static {p0, p1}, Lmiui/hybrid/feature/Geolocation;->access$200(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
