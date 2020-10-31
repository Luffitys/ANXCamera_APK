.class public abstract Lmiui/security/IAppRunningControlManager$Stub;
.super Landroid/os/Binder;
.source "IAppRunningControlManager.java"

# interfaces
.implements Lmiui/security/IAppRunningControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/IAppRunningControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/IAppRunningControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.IAppRunningControlManager"

.field static final TRANSACTION_getBlockActivityIntent:I = 0x2

.field static final TRANSACTION_getNotDisallowList:I = 0x5

.field static final TRANSACTION_matchRule:I = 0x4

.field static final TRANSACTION_setBlackListEnable:I = 0x3

.field static final TRANSACTION_setDisallowRunningList:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.security.IAppRunningControlManager"

    invoke-virtual {p0, p0, v0}, Lmiui/security/IAppRunningControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.security.IAppRunningControlManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/security/IAppRunningControlManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/security/IAppRunningControlManager;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/security/IAppRunningControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/IAppRunningControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/security/IAppRunningControlManager;
    .registers 1

    sget-object v0, Lmiui/security/IAppRunningControlManager$Stub$Proxy;->sDefaultImpl:Lmiui/security/IAppRunningControlManager;

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
    const-string v0, "getNotDisallowList"

    return-object v0

    :cond_14
    const-string v0, "matchRule"

    return-object v0

    :cond_17
    const-string v0, "setBlackListEnable"

    return-object v0

    :cond_1a
    const-string v0, "getBlockActivityIntent"

    return-object v0

    :cond_1d
    const-string v0, "setDisallowRunningList"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/security/IAppRunningControlManager;)Z
    .registers 3

    sget-object v0, Lmiui/security/IAppRunningControlManager$Stub$Proxy;->sDefaultImpl:Lmiui/security/IAppRunningControlManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/security/IAppRunningControlManager$Stub$Proxy;->sDefaultImpl:Lmiui/security/IAppRunningControlManager;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

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

    invoke-static {p1}, Lmiui/security/IAppRunningControlManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.security.IAppRunningControlManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8e

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_56

    const/4 v2, 0x3

    if-eq p1, v2, :cond_44

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_20

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/security/IAppRunningControlManager$Stub;->getNotDisallowList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/security/IAppRunningControlManager$Stub;->matchRule(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    move v3, v1

    :cond_4e
    move v2, v3

    invoke-virtual {p0, v2}, Lmiui/security/IAppRunningControlManager$Stub;->setBlackListEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_75

    move v5, v1

    goto :goto_76

    :cond_75
    move v5, v3

    :goto_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v4, v5, v6}, Lmiui/security/IAppRunningControlManager$Stub;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8d

    :cond_8a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8d
    return v1

    :cond_8e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a4

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    :goto_a5
    invoke-virtual {p0, v2, v3}, Lmiui/security/IAppRunningControlManager$Stub;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
