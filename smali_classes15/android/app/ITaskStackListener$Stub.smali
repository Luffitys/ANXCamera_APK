.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final TRANSACTION_onActivityDismissingDockedStack:I = 0x6

.field static final TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final TRANSACTION_onActivityPinned:I = 0x2

.field static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final TRANSACTION_onActivityRotation:I = 0x1a

.field static final TRANSACTION_onActivityUnpinned:I = 0x3

.field static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x12

.field static final TRANSACTION_onRecentTaskListFrozenChanged:I = 0x17

.field static final TRANSACTION_onRecentTaskListUpdated:I = 0x16

.field static final TRANSACTION_onSingleTaskDisplayDrawn:I = 0x13

.field static final TRANSACTION_onSingleTaskDisplayEmpty:I = 0x14

.field static final TRANSACTION_onSizeCompatModeActivityChanged:I = 0x11

.field static final TRANSACTION_onTaskCreated:I = 0x9

.field static final TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final TRANSACTION_onTaskDisplayChanged:I = 0x15

.field static final TRANSACTION_onTaskFocusChanged:I = 0x18

.field static final TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final TRANSACTION_onTaskRemoved:I = 0xa

.field static final TRANSACTION_onTaskRequestedOrientationChanged:I = 0x19

.field static final TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/ITaskStackListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/ITaskStackListener;
    .registers 1

    sget-object v0, Landroid/app/ITaskStackListener$Stub$Proxy;->sDefaultImpl:Landroid/app/ITaskStackListener;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_62

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "onActivityRotation"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "onTaskRequestedOrientationChanged"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "onTaskFocusChanged"

    return-object v0

    :pswitch_10
    const-string v0, "onRecentTaskListFrozenChanged"

    return-object v0

    :pswitch_13
    const-string v0, "onRecentTaskListUpdated"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "onTaskDisplayChanged"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "onSingleTaskDisplayEmpty"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "onSingleTaskDisplayDrawn"

    return-object v0

    :pswitch_22
    const-string v0, "onBackPressedOnTaskRoot"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "onSizeCompatModeActivityChanged"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "onTaskSnapshotChanged"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "onTaskProfileLocked"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "onTaskRemovalStarted"

    return-object v0

    :pswitch_35
    const-string v0, "onActivityRequestedOrientationChanged"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "onTaskDescriptionChanged"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "onTaskMovedToFront"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "onTaskRemoved"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "onTaskCreated"

    return-object v0

    :pswitch_48
    const-string v0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object v0

    :pswitch_4b
    const-string v0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object v0

    :pswitch_4e
    const-string v0, "onActivityDismissingDockedStack"

    return-object v0

    :pswitch_51
    const-string v0, "onActivityForcedResizable"

    return-object v0

    :pswitch_54
    const-string v0, "onActivityRestartAttempt"

    return-object v0

    :pswitch_57
    const-string v0, "onActivityUnpinned"

    return-object v0

    :pswitch_5a
    const-string v0, "onActivityPinned"

    return-object v0

    :pswitch_5d
    const-string/jumbo v0, "onTaskStackChanged"

    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/app/ITaskStackListener;)Z
    .registers 3

    sget-object v0, Landroid/app/ITaskStackListener$Stub$Proxy;->sDefaultImpl:Landroid/app/ITaskStackListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/app/ITaskStackListener$Stub$Proxy;->sDefaultImpl:Landroid/app/ITaskStackListener;

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

    invoke-static {p1}, Landroid/app/ITaskStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.ITaskStackListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1e6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1ea

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onActivityRotation(I)V

    return v2

    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskRequestedOrientationChanged(II)V

    return v2

    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    move v1, v2

    :cond_39
    invoke-virtual {p0, v3, v1}, Landroid/app/ITaskStackListener$Stub;->onTaskFocusChanged(IZ)V

    return v2

    :pswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    move v1, v2

    :cond_47
    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListFrozenChanged(Z)V

    return v2

    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListUpdated()V

    return v2

    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskDisplayChanged(II)V

    return v2

    :pswitch_61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onSingleTaskDisplayEmpty(I)V

    return v2

    :pswitch_6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onSingleTaskDisplayDrawn(I)V

    return v2

    :pswitch_77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_89

    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v2

    :pswitch_8e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    return v2

    :pswitch_9d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b3

    sget-object v3, Landroid/app/ActivityManager$TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskSnapshot;

    goto :goto_b4

    :cond_b3
    const/4 v3, 0x0

    :goto_b4
    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return v2

    :pswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(II)V

    return v2

    :pswitch_c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d9

    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_da

    :cond_d9
    const/4 v1, 0x0

    :goto_da
    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v2

    :pswitch_de
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    return v2

    :pswitch_ed
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ff

    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_100

    :cond_ff
    const/4 v1, 0x0

    :goto_100
    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v2

    :pswitch_104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_116

    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_117

    :cond_116
    const/4 v1, 0x0

    :goto_117
    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v2

    :pswitch_11b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    return v2

    :pswitch_126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13c

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    goto :goto_13d

    :cond_13c
    const/4 v3, 0x0

    :goto_13d
    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    return v2

    :pswitch_141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_153

    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_154

    :cond_153
    const/4 v1, 0x0

    :goto_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v2

    :pswitch_15c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16e

    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_16f

    :cond_16e
    const/4 v1, 0x0

    :goto_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v2

    :pswitch_177
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedStack()V

    return v2

    :pswitch_17e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    return v2

    :pswitch_191
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a3

    sget-object v3, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_1a4

    :cond_1a3
    const/4 v3, 0x0

    :goto_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ac

    move v4, v2

    goto :goto_1ad

    :cond_1ac
    move v4, v1

    :goto_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b5

    move v5, v2

    goto :goto_1b6

    :cond_1b5
    move v5, v1

    :goto_1b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1bd

    move v1, v2

    :cond_1bd
    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/app/ITaskStackListener$Stub;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return v2

    :pswitch_1c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    return v2

    :pswitch_1c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;III)V

    return v2

    :pswitch_1df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    return v2

    :cond_1e6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1c1
        :pswitch_191
        :pswitch_17e
        :pswitch_177
        :pswitch_15c
        :pswitch_141
        :pswitch_126
        :pswitch_11b
        :pswitch_104
        :pswitch_ed
        :pswitch_de
        :pswitch_c7
        :pswitch_b8
        :pswitch_9d
        :pswitch_8e
        :pswitch_77
        :pswitch_6c
        :pswitch_61
        :pswitch_52
        :pswitch_4b
        :pswitch_3d
        :pswitch_2b
        :pswitch_1c
        :pswitch_11
    .end packed-switch
.end method
