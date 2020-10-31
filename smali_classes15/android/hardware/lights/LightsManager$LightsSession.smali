.class public final Landroid/hardware/lights/LightsManager$LightsSession;
.super Ljava/lang/Object;
.source "LightsManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LightsSession"
.end annotation


# instance fields
.field private final mCloseGuard:Landroid/util/CloseGuard;

.field private mClosed:Z

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/lights/LightsManager;


# direct methods
.method private constructor <init>(Landroid/hardware/lights/LightsManager;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/lights/LightsManager$LightsSession;->this$0:Landroid/hardware/lights/LightsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mClosed:Z

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/lights/LightsManager;Landroid/hardware/lights/LightsManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>(Landroid/hardware/lights/LightsManager;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/lights/LightsManager$LightsSession;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mClosed:Z

    if-nez v0, :cond_1e

    :try_start_4
    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->this$0:Landroid/hardware/lights/LightsManager;

    # getter for: Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;
    invoke-static {v0}, Landroid/hardware/lights/LightsManager;->access$200(Landroid/hardware/lights/LightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/hardware/lights/ILightsManager;->closeSession(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mClosed:Z

    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1e
    :goto_1e
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager$LightsSession;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public requestLights(Landroid/hardware/lights/LightsRequest;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mClosed:Z

    if-nez v0, :cond_1d

    :try_start_7
    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->this$0:Landroid/hardware/lights/LightsManager;

    # getter for: Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;
    invoke-static {v0}, Landroid/hardware/lights/LightsManager;->access$200(Landroid/hardware/lights/LightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/hardware/lights/LightsRequest;->mLightIds:[I

    iget-object v3, p1, Landroid/hardware/lights/LightsRequest;->mLightStates:[Landroid/hardware/lights/LightState;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/lights/ILightsManager;->setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1d
    :goto_1d
    return-void
.end method
