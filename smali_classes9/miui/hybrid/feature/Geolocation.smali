.class public Lmiui/hybrid/feature/Geolocation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/hybrid/HybridFeature;


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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network"

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;
    .locals 0

    iget-object p0, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;
    .locals 0

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0
.end method

.method private invokeGetLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 0

    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0
.end method

.method private invokeRemove(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    :cond_0
    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p0

    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x0

    const-string v0, "remove"

    invoke-direct {p1, p2, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-object v1
.end method

.method private invokeUpdateLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 7

    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p2

    iput-object p2, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;

    invoke-direct {p2, p0, v0}, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V

    iput-object p2, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v2, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmiui/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_0
    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->mCallback:Lmiui/hybrid/Callback;

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-object v0
.end method

.method private response(Landroid/location/Location;)Lmiui/hybrid/Response;
    .locals 3

    const-string p0, "HybridGeolocation"

    if-eqz p1, :cond_0

    const-string v0, "response with valid location."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance p1, Lmiui/hybrid/Response;

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "error: response location with null."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lmiui/hybrid/Response;

    const/16 p1, 0xc8

    const-string v0, "no location"

    invoke-direct {p0, p1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 0

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "get"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p0

    :cond_0
    sget-object p0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3

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

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->invokeUpdateLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->invokeGetLocation(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v2, "disableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->invokeRemove(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lmiui/hybrid/Response;

    const/16 p1, 0xcc

    const-string v0, "no such action"

    invoke-direct {p0, p1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    :cond_0
    return-void
.end method
