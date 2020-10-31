.class public final Landroid/hardware/lights/LightsManager;
.super Ljava/lang/Object;
.source "LightsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/LightsManager$LightsSession;,
        Landroid/hardware/lights/LightsManager$LightType;
    }
.end annotation


# static fields
.field public static final LIGHT_TYPE_MICROPHONE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "LightsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/lights/ILightsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    nop

    const-string v0, "lights"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/lights/ILightsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/lights/LightsManager;-><init>(Landroid/content/Context;Landroid/hardware/lights/ILightsManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/lights/ILightsManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/hardware/lights/LightsManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/ILightsManager;

    iput-object v0, p0, Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/lights/LightsManager;)Landroid/hardware/lights/ILightsManager;
    .registers 2

    iget-object v0, p0, Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    return-object v0
.end method


# virtual methods
.method public getLightState(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/lights/ILightsManager;->getLightState(I)Landroid/hardware/lights/LightState;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLights()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    invoke-interface {v0}, Landroid/hardware/lights/ILightsManager;->getLights()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openSession()Landroid/hardware/lights/LightsManager$LightsSession;
    .registers 4

    :try_start_0
    new-instance v0, Landroid/hardware/lights/LightsManager$LightsSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>(Landroid/hardware/lights/LightsManager;Landroid/hardware/lights/LightsManager$1;)V

    iget-object v1, p0, Landroid/hardware/lights/LightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    # getter for: Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->access$100(Landroid/hardware/lights/LightsManager$LightsSession;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/lights/ILightsManager;->openSession(Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
