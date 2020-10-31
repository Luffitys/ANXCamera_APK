.class public abstract Lmiui/contentcatcher/IContentCatcherService$Stub;
.super Landroid/os/Binder;
.source "IContentCatcherService.java"

# interfaces
.implements Lmiui/contentcatcher/IContentCatcherService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/IContentCatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.contentcatcher.IContentCatcherService"

.field static final TRANSACTION_decorateContent:I = 0x7

.field static final TRANSACTION_getPageConfig:I = 0x1

.field static final TRANSACTION_onContentCatched:I = 0x4

.field static final TRANSACTION_registerContentInjector:I = 0x2

.field static final TRANSACTION_registerContentListener:I = 0x5

.field static final TRANSACTION_unregisterContentInjector:I = 0x3

.field static final TRANSACTION_unregisterContentListener:I = 0x6

.field static final TRANSACTION_updateClientConfig:I = 0x9

.field static final TRANSACTION_updateConfig:I = 0x8

.field static final TRANSACTION_updateJobValidity:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.contentcatcher.IContentCatcherService"

    invoke-virtual {p0, p0, v0}, Lmiui/contentcatcher/IContentCatcherService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.contentcatcher.IContentCatcherService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/contentcatcher/IContentCatcherService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/contentcatcher/IContentCatcherService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/contentcatcher/IContentCatcherService;
    .registers 1

    sget-object v0, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;->sDefaultImpl:Lmiui/contentcatcher/IContentCatcherService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_24

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "updateJobValidity"

    return-object v0

    :pswitch_8
    const-string v0, "updateClientConfig"

    return-object v0

    :pswitch_b
    const-string v0, "updateConfig"

    return-object v0

    :pswitch_e
    const-string v0, "decorateContent"

    return-object v0

    :pswitch_11
    const-string v0, "unregisterContentListener"

    return-object v0

    :pswitch_14
    const-string v0, "registerContentListener"

    return-object v0

    :pswitch_17
    const-string v0, "onContentCatched"

    return-object v0

    :pswitch_1a
    const-string v0, "unregisterContentInjector"

    return-object v0

    :pswitch_1d
    const-string v0, "registerContentInjector"

    return-object v0

    :pswitch_20
    const-string v0, "getPageConfig"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lmiui/contentcatcher/IContentCatcherService;)Z
    .registers 3

    sget-object v0, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;->sDefaultImpl:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;->sDefaultImpl:Lmiui/contentcatcher/IContentCatcherService;

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

    invoke-static {p1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.contentcatcher.IContentCatcherService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_144

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_148

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    move v1, v2

    :cond_23
    invoke-virtual {p0, v3, v4, v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    move v1, v2

    :cond_3c
    invoke-virtual {p0, v3, v4, v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateConfig([Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_63

    sget-object v1, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/ClientToken;

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_73

    sget-object v3, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/contentcatcher/sdk/Token;

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_83

    sget-object v4, Lmiui/contentcatcher/sdk/DecorateContentParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/DecorateContentParam;

    goto :goto_84

    :cond_83
    const/4 v4, 0x0

    :goto_84
    invoke-virtual {p0, v1, v3, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9d

    sget-object v1, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/ClientToken;

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    invoke-virtual {p0, v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b7

    sget-object v1, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/ClientToken;

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d9

    sget-object v1, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/Content;

    goto :goto_da

    :cond_d9
    const/4 v1, 0x0

    :goto_da
    invoke-virtual {p0, v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f3

    sget-object v1, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/Token;

    goto :goto_f4

    :cond_f3
    const/4 v1, 0x0

    :goto_f4
    invoke-virtual {p0, v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10d

    sget-object v1, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/Token;

    goto :goto_10e

    :cond_10d
    const/4 v1, 0x0

    :goto_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_11d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12f

    sget-object v3, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/contentcatcher/sdk/Token;

    goto :goto_130

    :cond_12f
    const/4 v3, 0x0

    :goto_130
    invoke-virtual {p0, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_140

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lmiui/contentcatcher/sdk/data/PageConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_143

    :cond_140
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_143
    return v2

    :cond_144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_11d
        :pswitch_fb
        :pswitch_e1
        :pswitch_c7
        :pswitch_a5
        :pswitch_8b
        :pswitch_51
        :pswitch_43
        :pswitch_2a
        :pswitch_11
    .end packed-switch
.end method
