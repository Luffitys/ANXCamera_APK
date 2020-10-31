.class public abstract Landroid/os/IDumpstateListener$Stub;
.super Landroid/os/Binder;
.source "IDumpstateListener.java"

# interfaces
.implements Landroid/os/IDumpstateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstateListener"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onFinished:I = 0x3

.field static final TRANSACTION_onProgress:I = 0x1

.field static final TRANSACTION_onScreenshotTaken:I = 0x4

.field static final TRANSACTION_onUiIntensiveBugreportDumpsFinished:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IDumpstateListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IDumpstateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IDumpstateListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstateListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IDumpstateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstateListener;
    .registers 1

    sget-object v0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string/jumbo v0, "onUiIntensiveBugreportDumpsFinished"

    return-object v0

    :cond_15
    const-string/jumbo v0, "onScreenshotTaken"

    return-object v0

    :cond_19
    const-string/jumbo v0, "onFinished"

    return-object v0

    :cond_1d
    const-string/jumbo v0, "onError"

    return-object v0

    :cond_21
    const-string/jumbo v0, "onProgress"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstateListener;)Z
    .registers 3

    sget-object v0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IDumpstateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.os.IDumpstateListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_41

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onUiIntensiveBugreportDumpsFinished(Ljava/lang/String;)V

    return v1

    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    move v2, v1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onScreenshotTaken(Z)V

    return v1

    :cond_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDumpstateListener$Stub;->onFinished()V

    return v1

    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onError(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_4f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/IDumpstateListener$Stub;->onProgress(I)V

    return v1
.end method
