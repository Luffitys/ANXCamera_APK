.class public Lmiui/util/IMiCharge;
.super Ljava/lang/Object;
.source "IMiCharge.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final GET_BATT_CAPACITY:I = 0xb

.field private static final GET_BATT_CHARGE_FULL:I = 0x3

.field private static final GET_BATT_CHARGE_TYPE:I = 0x4

.field private static final GET_BATT_CYCLE_COUNT:I = 0x1

.field private static final GET_BATT_IBAT:I = 0xc

.field private static final GET_BATT_RESISTANCE:I = 0xe

.field private static final GET_BATT_SOH:I = 0x2

.field private static final GET_BATT_TBAT:I = 0xd

.field private static final GET_BATT_THERMAL_LEVEL:I = 0xf

.field private static final GET_BATT_VBAT:I = 0xa

.field private static final GET_PD_APDO_MAX:I = 0x9

.field private static final GET_PD_AUTHENTICATION:I = 0x8

.field private static final GET_QUICK_CHARGE_TYPE:I = 0x10

.field private static final GET_TX_ADAPTER:I = 0x7

.field private static final GET_USB_CURRENT:I = 0x6

.field private static final GET_USB_VOLTAGE:I = 0x5

.field private static final GET_WIRELESS_REVERSE_CHARGE_STATUS:I = 0x11

.field private static volatile INSTANCE:Lmiui/util/IMiCharge; = null

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

.field private static final IS_BATTERYLIFE_SUPPORTED:I = 0x12

.field private static final SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

.field private static final TAG:Ljava/lang/String; = "IMiCharge"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHidlValue(I)Ljava/lang/String;
    .registers 8

    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    if-eqz v3, :cond_27

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, p1, v4, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_2e
    .catchall {:try_start_8 .. :try_end_26} :catchall_2c

    move-object v2, v0

    :cond_27
    nop

    :goto_28
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_47

    :catchall_2c
    move-exception v0

    goto :goto_48

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v3, "IMiCharge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiCharge transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2c

    nop

    goto :goto_28

    :goto_47
    return-object v2

    :goto_48
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method private getHidlValueInt(I)I
    .registers 8

    const-string v0, "vendor.xiaomi.hardware.micharge@1.0::IMiCharge"

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    if-eqz v3, :cond_27

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, p1, v4, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_2e
    .catchall {:try_start_8 .. :try_end_26} :catchall_2c

    move v2, v0

    :cond_27
    nop

    :goto_28
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_47

    :catchall_2c
    move-exception v0

    goto :goto_48

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v3, "IMiCharge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiCharge transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2c

    nop

    goto :goto_28

    :goto_47
    return v2

    :goto_48
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public static getInstance()Lmiui/util/IMiCharge;
    .registers 2

    sget-object v0, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    if-nez v0, :cond_17

    const-class v0, Lmiui/util/IMiCharge;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/util/IMiCharge;

    invoke-direct {v1}, Lmiui/util/IMiCharge;-><init>()V

    sput-object v1, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

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
    sget-object v0, Lmiui/util/IMiCharge;->INSTANCE:Lmiui/util/IMiCharge;

    return-object v0
.end method


# virtual methods
.method public getBatteryCapacity()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryChargeFull()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryChargeType()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryCycleCount()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryIbat()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryResistance()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatterySoh()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryTbat()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryThermaLevel()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVbat()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdApdoMax()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdAuthentication()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuickChargeType()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTxAdapt()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsbCurrent()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsbVoltage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWirelessReverseStatus()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBatteryLifeFunctionSupported()Z
    .registers 3

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lmiui/util/IMiCharge;->getHidlValueInt(I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x1

    return v1
.end method
