.class public abstract Lcom/xiaomi/mirror/IMirrorAppService$Stub;
.super Landroid/os/Binder;
.source "IMirrorAppService.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorAppService"

.field static final TRANSACTION_addMirrorAppStateListener:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final TRANSACTION_getMasterName:I = 0x7

.field static final TRANSACTION_isLastTaskInSubDisplay:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final TRANSACTION_isWorking:I = 0x2

.field static final TRANSACTION_notifyInputTypeAndPos:I = 0x6

.field static final TRANSACTION_notifyMoveTaskToBack:I = 0x8

.field static final TRANSACTION_notifyStartActivity:I = 0x4

.field static final TRANSACTION_notifyStartActivityFromRecents:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorAppService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/mirror/IMirrorAppService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/mirror/IMirrorAppService;

    return-object v1

    :cond_14
    new-instance v1, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;
    .registers 1

    sget-object v0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/mirror/IMirrorAppService;)Z
    .registers 2

    sget-object v0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    sput-object p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_88

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_84

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_96

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V

    return v2

    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getMasterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyInputTypeAndPos(III)V

    return v2

    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_62

    move v1, v2

    :cond_62
    invoke-virtual {p0, v3, v4, v1}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyStartActivityFromRecents(ILandroid/os/Bundle;Z)V

    return v2

    :pswitch_66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_78

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_79

    :cond_78
    const/4 v3, 0x0

    :goto_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_80

    move v1, v2

    :cond_80
    invoke-virtual {p0, v3, v1}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyStartActivity(Landroid/content/Intent;Z)V

    return v2

    :cond_84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->isWorking()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_data_96
    .packed-switch 0x4
        :pswitch_66
        :pswitch_44
        :pswitch_31
        :pswitch_23
        :pswitch_14
    .end packed-switch
.end method
