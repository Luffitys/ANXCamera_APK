.class public Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Default;
.super Ljava/lang/Object;
.source "IGetDownloadableSubscriptionMetadataCallback.java"

# interfaces
.implements Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
