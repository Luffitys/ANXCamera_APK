.class public Lmiui/util/IWirelessSwitch;
.super Ljava/lang/Object;
.source "IWirelessSwitch.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final GET_WIRELESS_STATUS:I = 0x3

.field private static volatile INSTANCE:Lmiui/util/IWirelessSwitch; = null

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

.field private static final IS_WIRELESS_SUPPORTED:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

.field private static final SET_WIRELESS_ENABLED:I = 0x2

.field public static final STATUS_BAD_VALUE:I = 0x3

.field public static final STATUS_FAILURE_UNKNOWN:I = 0x1

.field public static final STATUS_NOT_SUPPORTED:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IWirelessSwitch"

.field public static final WIRELESS_DISABLED:I = 0x1

.field public static final WIRELESS_ENABLED:I = 0x0

.field public static final WIRELESS_NOT_SUPPORTED:I = 0x2

.field public static final WIRELESS_STATUS_UNKNOWN:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/util/IWirelessSwitch;
    .registers 2

    sget-object v0, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    if-nez v0, :cond_17

    const-class v0, Lmiui/util/IWirelessSwitch;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/util/IWirelessSwitch;

    invoke-direct {v1}, Lmiui/util/IWirelessSwitch;-><init>()V

    sput-object v1, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/util/IWirelessSwitch;->INSTANCE:Lmiui/util/IWirelessSwitch;

    return-object v0
.end method


# virtual methods
.method public getWirelessChargingStatus()I
    .registers 9

    const-string v0, "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

    const-string v1, "IWirelessSwitch"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x3

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_5b

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v4, v3, v5, v2, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_42

    const/4 v6, 0x1

    if-eq v0, v6, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid wireless charging status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current wireless charging status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_56} :catch_62
    .catchall {:try_start_a .. :try_end_56} :catchall_60

    :goto_56
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_5b
    nop

    :goto_5c
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_79

    :catchall_60
    move-exception v0

    goto :goto_7f

    :catch_62
    move-exception v0

    :try_start_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWirelessChargingStatus transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_60

    nop

    goto :goto_5c

    :goto_79
    const-string v0, "Failed calling getWirelessChargingStatus!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_7f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public isWirelessChargingSupported()Z
    .registers 8

    const-string v0, "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

    const-string v1, "IWirelessSwitch"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_39

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    if-nez v6, :cond_34

    const-string v0, "Wireless charging switch not supported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_40
    .catchall {:try_start_a .. :try_end_2f} :catchall_3e

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_34
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_39
    nop

    :goto_3a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_57

    :catchall_3e
    move-exception v0

    goto :goto_5d

    :catch_40
    move-exception v0

    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWirelessChargingSupported transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_3e

    nop

    goto :goto_3a

    :goto_57
    const-string v0, "Failed calling isWirelessChargingSupported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_5d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setWirelessChargingEnabled(Z)I
    .registers 9

    const-string v0, "vendor.xiaomi.hardware.wireless@1.0::IWirelessSwitch"

    const-string v1, "IWirelessSwitch"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_9
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    if-eqz v3, :cond_60

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v2, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-nez v0, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set wireless charging switch to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " successfully."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set wireless charging switch failed, err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5b} :catch_67
    .catchall {:try_start_9 .. :try_end_5b} :catchall_65

    :goto_5b
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_60
    nop

    :goto_61
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_7e

    :catchall_65
    move-exception v0

    goto :goto_85

    :catch_67
    move-exception v0

    :try_start_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWirelessChargingEnabled transact failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_65

    nop

    goto :goto_61

    :goto_7e
    const-string v0, "Failed calling setWirelessChargingEnabled!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :goto_85
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method
