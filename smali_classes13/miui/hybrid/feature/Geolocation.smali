.class public Lmiui/hybrid/feature/Geolocation;
.super Ljava/lang/Object;
.source "Geolocation.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE:Ljava/lang/String; = "disableListener"

.field private static final ACTION_ENABLE:Ljava/lang/String; = "enableListener"

.field private static final ACTION_GET:Ljava/lang/String; = "get"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "HybridGeolocation"


# instance fields
.field private mCallback:Lmiui/hybrid/Callback;

.field private mListener:Landroid/location/LocationListener;

.field private mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network"

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0
.end method

.method private invokeGetLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 5

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v1

    return-object v1
.end method

.method private invokeRemove(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 8

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    :cond_a
    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v2, Lmiui/hybrid/Response;

    const/4 v3, 0x0

    const-string v4, "remove"

    invoke-direct {v2, v3, v4}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-object v1
.end method

.method private invokeUpdateLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 11

    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    new-instance v0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;

    invoke-direct {v0, p0, v1}, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v3, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_23
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iget-object v2, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-object v1
.end method

.method private response(Landroid/location/Location;)Lmiui/hybrid/Response;
    .registers 6

    const-string v0, "HybridGeolocation"

    if-eqz p1, :cond_30

    const-string v1, "response with valid location."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_25
    new-instance v1, Lmiui/hybrid/Response;

    const/4 v2, 0x3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_30
    const-string v1, "error: response location with null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    const-string v2, "no location"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .registers 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object v0

    :cond_f
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object v0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 7

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HybridGeolocation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "enableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->invokeUpdateLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v2

    return-object v2

    :cond_37
    const-string v2, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->invokeGetLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v2

    return-object v2

    :cond_44
    const-string v2, "disableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->invokeRemove(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v2

    return-object v2

    :cond_51
    new-instance v2, Lmiui/hybrid/Response;

    const/16 v3, 0xcc

    const-string v4, "no such action"

    invoke-direct {v2, v3, v4}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    :cond_12
    return-void
.end method
