.class public interface abstract Lmiui/process/IProcessManager;
.super Ljava/lang/Object;
.source "IProcessManager.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final ADD_MIUI_APPLICATION_THREAD_TRANSACTION:I = 0xd

.field public static final BOOST_CAMERA_TRANSACTION:I = 0x12

.field public static final GET_ACTIVE_UID_INFO_TRANSACTION:I = 0x14

.field public static final GET_FOREGROUND_APPLICATION_TRANSACTION:I = 0xe

.field public static final GET_FOREGROUND_INFO_TRANSACTION:I = 0xc

.field public static final GET_LOCKED_APPLICATION:I = 0x4

.field public static final GET_RUNNING_PROCESS_INFO:I = 0x11

.field public static final IS_LOCKED_APPLICATION_TRANSACTION:I = 0x9

.field public static final KILL_TRANSACTION:I = 0x2

.field public static final PROCESS_ADJ_BOOST_TRANSACTION:I = 0x13

.field public static final PROTECT_CURRENT_PROCESS_TRANSACTION:I = 0x7

.field public static final REGISTER_ACTIVITY_CHANGE_TRANSACTION:I = 0xf

.field public static final REGISTER_FOREGROUND_INFO_LISTENER:I = 0xa

.field public static final REGISTER_FOREGROUND_WINDOW_LISTENER:I = 0x15

.field public static final START_PROCESSES_TRANSACTION:I = 0x6

.field public static final UNREGISTER_ACTIVITY_CHANGE_TRANSACTION:I = 0x10

.field public static final UNREGISTER_FOREGROUND_INFO_LISTENER:I = 0xb

.field public static final UNREGISTER_FOREGROUND_WINDOW_LISTENER:I = 0x16

.field public static final UPDATE_APPLICATION_LOCKED_STATE:I = 0x3

.field public static final UPDATE_CLOUD_DATA_TRANSACTION:I = 0x8

.field public static final UPDATE_CONFIG_TRANSACTION:I = 0x5

.field public static final descriptor:Ljava/lang/String; = "miui.IProcessManager"


# virtual methods
.method public abstract addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract adjBoost(Ljava/lang/String;IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract boostCameraIfNeeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActiveUidInfo(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/ActiveUidInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getForegroundInfo()Lmiui/process/ForegroundInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLockedApplication(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLockedApplication(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract kill(Lmiui/process/ProcessConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract protectCurrentProcess(ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startProcesses(Ljava/util/List;IZII)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateApplicationLockedState(Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateCloudData(Lmiui/process/ProcessCloudData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateConfig(Lmiui/process/ProcessConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
