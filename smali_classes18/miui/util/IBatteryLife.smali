.class public Lmiui/util/IBatteryLife;
.super Ljava/lang/Object;
.source "IBatteryLife.java"


# static fields
.field public static final BATTERYLIFE_STATUS_UNKNOWN:I = 0x64

.field public static final CHARGE_FULL_STATUS_UNKNOWN:I = 0x0

.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final GET_BATTERYLIFE_STATUS:I = 0x2

.field private static final GET_CHARGE_FULL_STATUS:I = 0x3

.field private static volatile INSTANCE:Lmiui/util/IBatteryLife; = null

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

.field private static final IS_BATTERYLIFE_SUPPORTED:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

.field private static final TAG:Ljava/lang/String; = "IBatteryLife"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/util/IBatteryLife;
    .registers 2

    sget-object v0, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    if-nez v0, :cond_17

    const-class v0, Lmiui/util/IBatteryLife;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/util/IBatteryLife;

    invoke-direct {v1}, Lmiui/util/IBatteryLife;-><init>()V

    sput-object v1, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

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
    sget-object v0, Lmiui/util/IBatteryLife;->INSTANCE:Lmiui/util/IBatteryLife;

    return-object v0
.end method


# virtual methods
.method public getBatteryChargeFullValue()I
    .registers 9

    const-string v0, "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

    const-string v1, "IBatteryLife"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_41

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "valid chargefull status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_48
    .catchall {:try_start_a .. :try_end_3c} :catchall_46

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_41
    nop

    :goto_42
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_5f

    :catchall_46
    move-exception v0

    goto :goto_65

    :catch_48
    move-exception v0

    :try_start_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryChargeFullValue transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_46

    nop

    goto :goto_42

    :goto_5f
    const-string v0, "Failed calling getBatteryChargeFullValue!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_65
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getBatteryLifeValue()I
    .registers 9

    const-string v0, "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

    const-string v1, "IBatteryLife"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/16 v3, 0x64

    :try_start_b
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_61

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-lez v0, :cond_48

    if-le v0, v3, :cond_2f

    goto :goto_48

    :cond_2f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "valid batterylife status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_68
    .catchall {:try_start_b .. :try_end_43} :catchall_66

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_48
    :goto_48
    :try_start_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid batterylife status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_68
    .catchall {:try_start_48 .. :try_end_5c} :catchall_66

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_61
    nop

    :goto_62
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_7f

    :catchall_66
    move-exception v0

    goto :goto_85

    :catch_68
    move-exception v0

    :try_start_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryLifeValue transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_66

    nop

    goto :goto_62

    :goto_7f
    const-string v0, "Failed calling getBatteryLifeValue!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_85
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public isBatteryLifeFunctionSupported()Z
    .registers 9

    const-string v0, "vendor.xiaomi.hardware.batterylife@1.0::IBatteryLife"

    const-string v1, "IBatteryLife"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_3e

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

    const-string v0, "Batterylife function not supported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_45
    .catchall {:try_start_a .. :try_end_2f} :catchall_43

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_34
    :try_start_34
    const-string v7, "Batterylife function is supported!"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_45
    .catchall {:try_start_34 .. :try_end_39} :catchall_43

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_3e
    nop

    :goto_3f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_5c

    :catchall_43
    move-exception v0

    goto :goto_62

    :catch_45
    move-exception v0

    :try_start_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBatteryLifeFunctionSupported transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_43

    nop

    goto :goto_3f

    :goto_5c
    const-string v0, "Failed calling isBatteryLifeFunctionSupported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_62
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method
