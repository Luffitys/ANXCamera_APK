.class public Landroid/telephony/ims/ImsRcsManager;
.super Ljava/lang/Object;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_CAPABILITY_DISCOVERY_OPT_IN:Ljava/lang/String; = "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

.field private static final TAG:Ljava/lang/String; = "ImsRcsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 3

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_33

    if-eqz p1, :cond_2b

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsRcsManager$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$1;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1c
    const-string v1, "ImsRcsManager"

    const-string v2, "Get registration state error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null stateCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_33

    if-eqz p1, :cond_2b

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsRcsManager$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$2;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1c
    const-string v1, "ImsRcsManager"

    const-string v2, "Get registration transport type error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null transportTypeCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;
    .registers 4

    new-instance v0, Landroid/telephony/ims/RcsUceAdapter;

    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsUceAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public isAvailable(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_1e

    :try_start_9
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->isAvailable(II)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v3

    const-string v4, "Error calling IImsRcsController#isAvailable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1e
    const-string v3, "isAvailable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public isCapable(II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_1e

    :try_start_9
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isCapable(III)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v3

    const-string v4, "Error calling IImsRcsController#isCapable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1e
    const-string v3, "isCapable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p2, :cond_3b

    if-eqz p1, :cond_33

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    :try_start_e
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v2

    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_24
    const-string v2, "ImsRcsManager"

    const-string v3, "Register registration callback: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerRcsAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p2, :cond_3e

    if-eqz p1, :cond_36

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_29

    # invokes: Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V
    invoke-static {p2, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->access$100(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    :try_start_10
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    nop

    return-void

    :catch_1b
    move-exception v3

    const-string v4, "Error calling IImsRcsController#registerRcsAvailabilityCallback"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_29
    const-string v3, "Register availability callback: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null AvailabilityCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5

    if-eqz p1, :cond_28

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_19
    const-string v1, "ImsRcsManager"

    const-string v2, "Unregister registration callback: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterRcsAvailabilityCallback(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p1, :cond_31

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_24

    :try_start_b
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v3

    const-string v4, "Error calling IImsRcsController#unregisterRcsAvailabilityCallback"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_24
    const-string v3, "Unregister availability callback: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null AvailabilityCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
