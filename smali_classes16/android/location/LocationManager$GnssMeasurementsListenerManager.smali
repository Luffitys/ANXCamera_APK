.class Landroid/location/LocationManager$GnssMeasurementsListenerManager;
.super Landroid/location/AbstractListenerManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssMeasurementsListenerManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/AbstractListenerManager<",
        "Landroid/location/GnssRequest;",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private mListenerTransport:Landroid/location/IGnssMeasurementsListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/AbstractListenerManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method protected merge(Ljava/util/List;)Landroid/location/GnssRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssRequest;",
            ">;)",
            "Landroid/location/GnssRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssRequest;

    invoke-virtual {v1}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v2

    if-eqz v2, :cond_20

    return-object v1

    :cond_20
    goto :goto_d

    :cond_21
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssRequest;

    return-object v0
.end method

.method protected bridge synthetic merge(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->merge(Ljava/util/List;)Landroid/location/GnssRequest;

    move-result-object p1

    return-object p1
.end method

.method protected registerService(Landroid/location/GnssRequest;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;-><init>(Landroid/location/LocationManager$GnssMeasurementsListenerManager;Landroid/location/LocationManager$1;)V

    iget-object v3, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v3}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/location/LocationManager;->access$1100(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/location/LocationManager;->access$1100(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v0, v4, v5}, Landroid/location/ILocationManager;->addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    return v1

    :cond_35
    return v2
.end method

.method protected bridge synthetic registerService(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/GnssRequest;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->registerService(Landroid/location/GnssRequest;)Z

    move-result p1

    return p1
.end method

.method protected unregisterService()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v0}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    :cond_12
    return-void
.end method
