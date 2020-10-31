.class Landroid/location/LocationManager$GnssStatusListenerManager;
.super Landroid/location/AbstractListenerManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssStatusListenerManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/AbstractListenerManager<",
        "Ljava/lang/Void;",
        "Landroid/location/GnssStatus$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mGnssStatus:Landroid/location/GnssStatus;

.field private mListenerTransport:Landroid/location/IGnssStatusListener;

.field private volatile mTtff:I

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/AbstractListenerManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method

.method static synthetic access$1202(Landroid/location/LocationManager$GnssStatusListenerManager;I)I
    .registers 2

    iput p1, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mTtff:I

    return p1
.end method

.method static synthetic access$1302(Landroid/location/LocationManager$GnssStatusListenerManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mGnssStatus:Landroid/location/GnssStatus;

    return-object p1
.end method


# virtual methods
.method public addListener(Landroid/location/GpsStatus$Listener;Ljava/util/concurrent/Executor;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0
.end method

.method public addListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public addListener(Landroid/location/OnNmeaMessageListener;Ljava/util/concurrent/Executor;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0
.end method

.method protected convertKey(Ljava/lang/Object;)Landroid/location/GnssStatus$Callback;
    .registers 5

    instance-of v0, p1, Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/location/GnssStatus$Callback;

    return-object v0

    :cond_8
    instance-of v0, p1, Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_12

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerManager$1;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager$1;-><init>(Landroid/location/LocationManager$GnssStatusListenerManager;Ljava/lang/Object;)V

    return-object v0

    :cond_12
    instance-of v0, p1, Landroid/location/OnNmeaMessageListener;

    if-eqz v0, :cond_20

    new-instance v0, Landroid/location/LocationManager$NmeaAdapter;

    move-object v1, p1

    check-cast v1, Landroid/location/OnNmeaMessageListener;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationManager$NmeaAdapter;-><init>(Landroid/location/OnNmeaMessageListener;Landroid/location/LocationManager$1;)V

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager;->convertKey(Ljava/lang/Object;)Landroid/location/GnssStatus$Callback;

    move-result-object p1

    return-object p1
.end method

.method public getGnssStatus()Landroid/location/GnssStatus;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mGnssStatus:Landroid/location/GnssStatus;

    return-object v0
.end method

.method public getTtff()I
    .registers 2

    iget v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mTtff:I

    return v0
.end method

.method protected bridge synthetic registerService(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager;->registerService(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method protected registerService(Ljava/lang/Void;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mListenerTransport:Landroid/location/IGnssStatusListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;-><init>(Landroid/location/LocationManager$GnssStatusListenerManager;Landroid/location/LocationManager$1;)V

    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v3}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/location/LocationManager;->access$1100(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/location/LocationManager;->access$1100(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mListenerTransport:Landroid/location/IGnssStatusListener;

    return v1

    :cond_35
    return v2
.end method

.method protected unregisterService()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mListenerTransport:Landroid/location/IGnssStatusListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v0}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mListenerTransport:Landroid/location/IGnssStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager;->mListenerTransport:Landroid/location/IGnssStatusListener;

    :cond_12
    return-void
.end method
