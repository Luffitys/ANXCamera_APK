.class Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/ims/internal/IImsUtListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.ims.internal.IImsUtListener"

    return-object v0
.end method

.method public lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/telephony/ims/ImsSsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v2, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ims/ImsSsData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v2, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_3c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_3c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_23

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_45

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_45
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_23

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/telephony/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_45

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_45
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_23

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/telephony/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_45

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_45
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultImpl()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
