.class public Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceImpl;
.super Lcom/google/android/binder/IInterfaceProxy;
.source ""

# interfaces
.implements Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getSessionState(Ljava/lang/String;ILcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getSessionStates(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method
