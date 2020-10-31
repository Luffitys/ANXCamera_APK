.class Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;
.super Ljava/lang/Object;
.source "Geolocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/feature/Geolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Geolocation;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Geolocation;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiui/hybrid/feature/Geolocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    # getter for: Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;
    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->access$100(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    # getter for: Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;
    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->access$100(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiui/hybrid/feature/Geolocation;

    # invokes: Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;
    invoke-static {v1, p1}, Lmiui/hybrid/feature/Geolocation;->access$200(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    :cond_17
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
