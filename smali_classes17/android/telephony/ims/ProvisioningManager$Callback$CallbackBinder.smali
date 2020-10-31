.class Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;


# direct methods
.method private constructor <init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/ProvisioningManager$Callback;Landroid/telephony/ims/ProvisioningManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onIntConfigChanged$0$ProvisioningManager$Callback$CallbackBinder(II)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningIntChanged(II)V

    return-void
.end method

.method public synthetic lambda$onStringConfigChanged$1$ProvisioningManager$Callback$CallbackBinder(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningStringChanged(ILjava/lang/String;)V

    return-void
.end method

.method public final onIntConfigChanged(II)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$R_8jXQuOM7aV7dIwYBzcWwV-YpM;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$R_8jXQuOM7aV7dIwYBzcWwV-YpM;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final onStringConfigChanged(ILjava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$Jpca2nAZetlBE8jSLFKlsbgUVeI;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$Jpca2nAZetlBE8jSLFKlsbgUVeI;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method
