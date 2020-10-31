.class public abstract Landroid/app/IMiuiActivityObserver$Stub;
.super Landroid/os/Binder;
.source "IMiuiActivityObserver.java"

# interfaces
.implements Landroid/app/IMiuiActivityObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IMiuiActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IMiuiActivityObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IMiuiActivityObserver"

.field static final TRANSACTION_activityDestroyed:I = 0x5

.field static final TRANSACTION_activityIdle:I = 0x1

.field static final TRANSACTION_activityPaused:I = 0x3

.field static final TRANSACTION_activityResumed:I = 0x2

.field static final TRANSACTION_activityStopped:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IMiuiActivityObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IMiuiActivityObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IMiuiActivityObserver;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IMiuiActivityObserver;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IMiuiActivityObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IMiuiActivityObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/IMiuiActivityObserver;
    .registers 1

    sget-object v0, Landroid/app/IMiuiActivityObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IMiuiActivityObserver;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string v0, "activityDestroyed"

    return-object v0

    :cond_14
    const-string v0, "activityStopped"

    return-object v0

    :cond_17
    const-string v0, "activityPaused"

    return-object v0

    :cond_1a
    const-string v0, "activityResumed"

    return-object v0

    :cond_1d
    const-string v0, "activityIdle"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IMiuiActivityObserver;)Z
    .registers 3

    sget-object v0, Landroid/app/IMiuiActivityObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IMiuiActivityObserver;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/app/IMiuiActivityObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IMiuiActivityObserver;

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

    invoke-static {p1}, Landroid/app/IMiuiActivityObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.IMiuiActivityObserver"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_64

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_36

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityDestroyed(Landroid/content/Intent;)V

    return v1

    :cond_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityStopped(Landroid/content/Intent;)V

    return v1

    :cond_4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityPaused(Landroid/content/Intent;)V

    return v1

    :cond_64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_76

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityResumed(Landroid/content/Intent;)V

    return v1

    :cond_7b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8d

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_8e

    :cond_8d
    const/4 v2, 0x0

    :goto_8e
    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityIdle(Landroid/content/Intent;)V

    return v1
.end method
