.class Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiAppTransitionAnimationHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    return-object v0
.end method

.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_4d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    sget-object v3, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_4d

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v3

    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifyMiuiAnimationEnd()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationEnd()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyMiuiAnimationStart()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationStart()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
