.class public Lmiui/maml/data/LocationBinder;
.super Lmiui/maml/data/VariableBinder;
.source "LocationBinder.java"


# static fields
.field private static final DEFAULT_MIN_DISTANCE:F = 10.0f

.field private static final DEFAULT_MIN_TIME:J = 0x7530L

.field private static final DEFAULT_PROVIDER_TYPE:I = 0x0

.field private static final GPS:I = 0x2

.field private static final NETWORK:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "LocationBinder"

.field private static sLocationManager:Landroid/location/LocationManager;


# instance fields
.field private mEnable:Z

.field private mEnableExp:Lmiui/maml/data/Expression;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationProvider:Ljava/lang/String;

.field private mMinDistance:F

.field private mMinTime:J

.field private mProviderType:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    const-string v1, "time"

    const-wide/16 v2, 0x7530

    invoke-static {p1, v1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/data/LocationBinder;->mMinTime:J

    const-string v1, "distance"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/data/LocationBinder;->mMinDistance:F

    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "enable"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lmiui/maml/data/LocationBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_4a

    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    :cond_4a
    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_57

    invoke-direct {p0, v0}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void

    :cond_57
    iget v3, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    const/4 v4, 0x2

    const-string v5, "gps"

    if-ne v3, v4, :cond_67

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iput-object v5, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_85

    :cond_67
    const-string v4, "network"

    if-ne v3, v2, :cond_74

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iput-object v4, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_85

    :cond_74
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iput-object v4, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_85

    :cond_7d
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iput-object v5, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    :cond_85
    :goto_85
    iget-object v2, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    if-nez v2, :cond_8d

    invoke-direct {p0, v0}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void

    :cond_8d
    new-instance v0, Lmiui/maml/data/LocationBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/LocationBinder$1;-><init>(Lmiui/maml/data/LocationBinder;)V

    iput-object v0, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    sget-object v0, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/LocationBinder;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method private registerListener()V
    .registers 8

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mEnable:Z

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    if-nez v2, :cond_d

    goto :goto_1c

    :cond_d
    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-wide v3, p0, Lmiui/maml/data/LocationBinder;->mMinTime:J

    iget v5, p0, Lmiui/maml/data/LocationBinder;->mMinDistance:F

    iget-object v6, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    return-void

    :cond_1c
    :goto_1c
    return-void
.end method

.method private unregisterListener()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_53

    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_53
    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/VariableBinder$Variable;

    move-object v3, v2

    invoke-virtual {v3, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_59

    :cond_6a
    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->onUpdateComplete()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->unregisterListener()V

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .registers 7

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    iget-object v0, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    iput-boolean v1, p0, Lmiui/maml/data/LocationBinder;->mEnable:Z

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->registerListener()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/VariableBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->registerListener()V

    return-void
.end method
