.class public Landroid/telephony/ims/ProvisioningManager$Callback;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback;Landroid/telephony/ims/ProvisioningManager$1;)V

    iput-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback;->mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback;->mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    return-object v0
.end method

.method public onProvisioningIntChanged(II)V
    .registers 3

    return-void
.end method

.method public onProvisioningStringChanged(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback;->mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    # invokes: Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V
    invoke-static {v0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->access$100(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;Ljava/util/concurrent/Executor;)V

    return-void
.end method
