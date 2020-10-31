.class public Landroid/debug/AdbManager;
.super Ljava/lang/Object;
.source "AdbManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdbManager"

.field public static final WIRELESS_DEBUG_PAIRED_DEVICES_ACTION:Ljava/lang/String; = "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

.field public static final WIRELESS_DEBUG_PAIRING_RESULT_ACTION:Ljava/lang/String; = "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

.field public static final WIRELESS_DEBUG_PORT_EXTRA:Ljava/lang/String; = "adb_port"

.field public static final WIRELESS_DEBUG_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.android.server.adb.WIRELESS_DEBUG_STATUS"

.field public static final WIRELESS_DEVICES_EXTRA:Ljava/lang/String; = "devices_map"

.field public static final WIRELESS_PAIRING_CODE_EXTRA:Ljava/lang/String; = "pairing_code"

.field public static final WIRELESS_PAIR_DEVICE_EXTRA:Ljava/lang/String; = "pair_device"

.field public static final WIRELESS_STATUS_CANCELLED:I = 0x2

.field public static final WIRELESS_STATUS_CONNECTED:I = 0x4

.field public static final WIRELESS_STATUS_DISCONNECTED:I = 0x5

.field public static final WIRELESS_STATUS_EXTRA:Ljava/lang/String; = "status"

.field public static final WIRELESS_STATUS_FAIL:I = 0x0

.field public static final WIRELESS_STATUS_PAIRING_CODE:I = 0x3

.field public static final WIRELESS_STATUS_SUCCESS:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/debug/IAdbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/debug/IAdbManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/debug/AdbManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/debug/AdbManager;->mService:Landroid/debug/IAdbManager;

    return-void
.end method


# virtual methods
.method public isAdbWifiQrSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/debug/AdbManager;->mService:Landroid/debug/IAdbManager;

    invoke-interface {v0}, Landroid/debug/IAdbManager;->isAdbWifiQrSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAdbWifiSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/debug/AdbManager;->mService:Landroid/debug/IAdbManager;

    invoke-interface {v0}, Landroid/debug/IAdbManager;->isAdbWifiSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
