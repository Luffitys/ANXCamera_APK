.class public abstract Lmiui/mqsas/IMQSService$Stub;
.super Landroid/os/Binder;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSService"

.field static final TRANSACTION_appCaptureLog:I = 0x4

.field static final TRANSACTION_checkDumpForJavaException:I = 0x5

.field static final TRANSACTION_dialogButtonChecked:I = 0x17

.field static final TRANSACTION_dumpBugReport:I = 0x16

.field static final TRANSACTION_getOnlineRuleMatched:I = 0x14

.field static final TRANSACTION_onBootCompleted:I = 0xb

.field static final TRANSACTION_reportAnrEvent:I = 0x6

.field static final TRANSACTION_reportBluetoothEvent:I = 0x11

.field static final TRANSACTION_reportBootEvent:I = 0xd

.field static final TRANSACTION_reportBrightnessEvent:I = 0x18

.field static final TRANSACTION_reportBrightnessEventV2:I = 0x19

.field static final TRANSACTION_reportBroadcastEvent:I = 0xc

.field static final TRANSACTION_reportConnectExceptionEvent:I = 0xf

.field static final TRANSACTION_reportContinuousKillProcessEvent:I = 0x20

.field static final TRANSACTION_reportEvent:I = 0x12

.field static final TRANSACTION_reportEventV2:I = 0x1c

.field static final TRANSACTION_reportEvents:I = 0x13

.field static final TRANSACTION_reportEventsV2:I = 0x1b

.field static final TRANSACTION_reportFeatureEvent:I = 0x1e

.field static final TRANSACTION_reportHangExceptionEvents:I = 0x1a

.field static final TRANSACTION_reportJavaExceptionEvent:I = 0x7

.field static final TRANSACTION_reportKillProcessEvents:I = 0x10

.field static final TRANSACTION_reportLowMemEvent:I = 0x1f

.field static final TRANSACTION_reportNativeEventV2:I = 0x2

.field static final TRANSACTION_reportNativeFeatureEvent:I = 0x3

.field static final TRANSACTION_reportPackageEvent:I = 0xa

.field static final TRANSACTION_reportPackageForegroundEvents:I = 0x15

.field static final TRANSACTION_reportScreenOnEvent:I = 0x9

.field static final TRANSACTION_reportSimpleEvent:I = 0x1

.field static final TRANSACTION_reportTelephonyEvent:I = 0xe

.field static final TRANSACTION_reportWatchdogEvent:I = 0x8

.field static final TRANSACTION_reportXmsEvent:I = 0x1d


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.mqsas.IMQSService"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.mqsas.IMQSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mqsas/IMQSService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/mqsas/IMQSService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/mqsas/IMQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/mqsas/IMQSService;
    .registers 1

    sget-object v0, Lmiui/mqsas/IMQSService$Stub$Proxy;->sDefaultImpl:Lmiui/mqsas/IMQSService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_66

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "reportContinuousKillProcessEvent"

    return-object v0

    :pswitch_8
    const-string v0, "reportLowMemEvent"

    return-object v0

    :pswitch_b
    const-string v0, "reportFeatureEvent"

    return-object v0

    :pswitch_e
    const-string v0, "reportXmsEvent"

    return-object v0

    :pswitch_11
    const-string v0, "reportEventV2"

    return-object v0

    :pswitch_14
    const-string v0, "reportEventsV2"

    return-object v0

    :pswitch_17
    const-string v0, "reportHangExceptionEvents"

    return-object v0

    :pswitch_1a
    const-string v0, "reportBrightnessEventV2"

    return-object v0

    :pswitch_1d
    const-string v0, "reportBrightnessEvent"

    return-object v0

    :pswitch_20
    const-string v0, "dialogButtonChecked"

    return-object v0

    :pswitch_23
    const-string v0, "dumpBugReport"

    return-object v0

    :pswitch_26
    const-string v0, "reportPackageForegroundEvents"

    return-object v0

    :pswitch_29
    const-string v0, "getOnlineRuleMatched"

    return-object v0

    :pswitch_2c
    const-string v0, "reportEvents"

    return-object v0

    :pswitch_2f
    const-string v0, "reportEvent"

    return-object v0

    :pswitch_32
    const-string v0, "reportBluetoothEvent"

    return-object v0

    :pswitch_35
    const-string v0, "reportKillProcessEvents"

    return-object v0

    :pswitch_38
    const-string v0, "reportConnectExceptionEvent"

    return-object v0

    :pswitch_3b
    const-string v0, "reportTelephonyEvent"

    return-object v0

    :pswitch_3e
    const-string v0, "reportBootEvent"

    return-object v0

    :pswitch_41
    const-string v0, "reportBroadcastEvent"

    return-object v0

    :pswitch_44
    const-string v0, "onBootCompleted"

    return-object v0

    :pswitch_47
    const-string v0, "reportPackageEvent"

    return-object v0

    :pswitch_4a
    const-string v0, "reportScreenOnEvent"

    return-object v0

    :pswitch_4d
    const-string v0, "reportWatchdogEvent"

    return-object v0

    :pswitch_50
    const-string v0, "reportJavaExceptionEvent"

    return-object v0

    :pswitch_53
    const-string v0, "reportAnrEvent"

    return-object v0

    :pswitch_56
    const-string v0, "checkDumpForJavaException"

    return-object v0

    :pswitch_59
    const-string v0, "appCaptureLog"

    return-object v0

    :pswitch_5c
    const-string v0, "reportNativeFeatureEvent"

    return-object v0

    :pswitch_5f
    const-string v0, "reportNativeEventV2"

    return-object v0

    :pswitch_62
    const-string v0, "reportSimpleEvent"

    return-object v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
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

.method public static setDefaultImpl(Lmiui/mqsas/IMQSService;)Z
    .registers 3

    sget-object v0, Lmiui/mqsas/IMQSService$Stub$Proxy;->sDefaultImpl:Lmiui/mqsas/IMQSService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/mqsas/IMQSService$Stub$Proxy;->sDefaultImpl:Lmiui/mqsas/IMQSService;

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

    invoke-static {p1}, Lmiui/mqsas/IMQSService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.mqsas.IMQSService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2b2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2b6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportContinuousKillProcessEvent(Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;)V

    return v2

    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lmiui/mqsas/sdk/event/LowMemEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/LowMemEvent;

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportLowMemEvent(Lmiui/mqsas/sdk/event/LowMemEvent;)V

    return v2

    :pswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Lmiui/mqsas/sdk/event/FeatureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/FeatureEvent;

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportFeatureEvent(Lmiui/mqsas/sdk/event/FeatureEvent;)V

    return v2

    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/mqsas/IMQSService$Stub;->reportXmsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    move v1, v2

    :cond_7b
    invoke-virtual {p0, v3, v4, v5, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :pswitch_7f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_95

    move v1, v2

    :cond_95
    invoke-virtual {p0, v3, v4, v5, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEventsV2(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return v2

    :pswitch_99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/mqsas/IMQSService$Stub;->reportHangExceptionEvents()V

    return v2

    :pswitch_a0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b2

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_b3

    :cond_b2
    const/4 v1, 0x0

    :goto_b3
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBrightnessEventV2(Landroid/os/Bundle;)V

    return v2

    :pswitch_b7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lmiui/mqsas/IMQSService$Stub;->reportBrightnessEvent(IIILjava/lang/String;)V

    return v2

    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e4

    move v1, v2

    :cond_e4
    invoke-virtual {p0, v3, v4, v5, v1}, Lmiui/mqsas/IMQSService$Stub;->dialogButtonChecked(IILjava/lang/String;Z)V

    return v2

    :pswitch_e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/mqsas/IMQSService$Stub;->dumpBugReport()V

    return v2

    :pswitch_ef
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_101

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    goto :goto_102

    :cond_101
    const/4 v1, 0x0

    :goto_102
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V

    return v2

    :pswitch_106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/mqsas/IMQSService$Stub;->getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_11c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12e

    move v1, v2

    :cond_12e
    invoke-virtual {p0, v3, v4, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    return v2

    :pswitch_132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_144

    move v1, v2

    :cond_144
    invoke-virtual {p0, v3, v4, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :pswitch_148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/mqsas/IMQSService$Stub;->reportBluetoothEvent(ILjava/lang/String;)V

    return v2

    :pswitch_157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_169

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    goto :goto_16a

    :cond_169
    const/4 v1, 0x0

    :goto_16a
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V

    return v2

    :pswitch_16e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/mqsas/IMQSService$Stub;->reportConnectExceptionEvent(IILjava/lang/String;)V

    return v2

    :pswitch_181
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/mqsas/IMQSService$Stub;->reportTelephonyEvent(ILjava/lang/String;)V

    return v2

    :pswitch_190
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a2

    sget-object v1, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/BootEvent;

    goto :goto_1a3

    :cond_1a2
    const/4 v1, 0x0

    :goto_1a3
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    return v2

    :pswitch_1a7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b9

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    goto :goto_1ba

    :cond_1b9
    const/4 v1, 0x0

    :goto_1ba
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V

    return v2

    :pswitch_1be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/mqsas/IMQSService$Stub;->onBootCompleted()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1da

    sget-object v1, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/PackageEvent;

    goto :goto_1db

    :cond_1da
    const/4 v1, 0x0

    :goto_1db
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    return v2

    :pswitch_1df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f1

    sget-object v1, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    goto :goto_1f2

    :cond_1f1
    const/4 v1, 0x0

    :goto_1f2
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    return v2

    :pswitch_1f6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_208

    sget-object v1, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/WatchdogEvent;

    goto :goto_209

    :cond_208
    const/4 v1, 0x0

    :goto_209
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_210
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_222

    sget-object v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    goto :goto_223

    :cond_222
    const/4 v1, 0x0

    :goto_223
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_22a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23c

    sget-object v1, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/AnrEvent;

    goto :goto_23d

    :cond_23c
    const/4 v1, 0x0

    :goto_23d
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_244
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_256

    sget-object v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    goto :goto_257

    :cond_256
    const/4 v1, 0x0

    :goto_257
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_262
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lmiui/mqsas/IMQSService$Stub;->appCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_279
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/mqsas/IMQSService$Stub;->reportNativeFeatureEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_28c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lmiui/mqsas/IMQSService$Stub;->reportNativeEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_2a3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/mqsas/IMQSService$Stub;->reportSimpleEvent(ILjava/lang/String;)V

    return v2

    :cond_2b2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_2a3
        :pswitch_28c
        :pswitch_279
        :pswitch_262
        :pswitch_244
        :pswitch_22a
        :pswitch_210
        :pswitch_1f6
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1be
        :pswitch_1a7
        :pswitch_190
        :pswitch_181
        :pswitch_16e
        :pswitch_157
        :pswitch_148
        :pswitch_132
        :pswitch_11c
        :pswitch_106
        :pswitch_ef
        :pswitch_e8
        :pswitch_ce
        :pswitch_b7
        :pswitch_a0
        :pswitch_99
        :pswitch_7f
        :pswitch_65
        :pswitch_56
        :pswitch_3f
        :pswitch_28
        :pswitch_11
    .end packed-switch
.end method
