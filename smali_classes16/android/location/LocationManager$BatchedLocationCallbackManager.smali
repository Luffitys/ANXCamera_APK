.class Landroid/location/LocationManager$BatchedLocationCallbackManager;
.super Landroid/location/AbstractListenerManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedLocationCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/AbstractListenerManager<",
        "Ljava/lang/Void;",
        "Landroid/location/BatchedLocationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private mListenerTransport:Landroid/location/IBatchedLocationCallback;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/AbstractListenerManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$BatchedLocationCallbackManager;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic registerService(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$BatchedLocationCallbackManager;->registerService(Ljava/lang/Void;)Z

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

    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->mListenerTransport:Landroid/location/IBatchedLocationCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/location/LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/location/LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback;-><init>(Landroid/location/LocationManager$BatchedLocationCallbackManager;Landroid/location/LocationManager$1;)V

    iget-object v3, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v3}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/location/LocationManager;->access$1100(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/location/LocationManager;->access$1100(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Landroid/location/ILocationManager;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iput-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->mListenerTransport:Landroid/location/IBatchedLocationCallback;

    return v1

    :cond_35
    return v2
.end method

.method protected unregisterService()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->mListenerTransport:Landroid/location/IBatchedLocationCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v0}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationManager;->removeGnssBatchingCallback()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackManager;->mListenerTransport:Landroid/location/IBatchedLocationCallback;

    :cond_10
    return-void
.end method
