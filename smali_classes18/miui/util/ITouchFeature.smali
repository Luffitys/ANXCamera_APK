.class public Lmiui/util/ITouchFeature;
.super Ljava/lang/Object;
.source "ITouchFeature.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final GET_MODE_CUR_VALUE:I = 0x2

.field private static final GET_MODE_DEF_VALUE:I = 0x5

.field private static final GET_MODE_MAX_VALUE:I = 0x3

.field private static final GET_MODE_MIN_VALUE:I = 0x4

.field private static final GET_MODE_VALUES:I = 0x7

.field private static volatile INSTANCE:Lmiui/util/ITouchFeature; = null

.field private static final MODE_RESET:I = 0x6

.field private static final SERVICE_NAME_V1:Ljava/lang/String; = "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

.field private static final SERVICE_NAME_V2:Ljava/lang/String; = "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

.field public static final SERVICE_VERSION_CODE_NONE:I = 0x0

.field public static final SERVICE_VERSION_CODE_V1:I = 0x1

.field public static final SERVICE_VERSION_CODE_V2:I = 0x2

.field private static final SET_MODE_EDGE_VALUE:I = 0x8

.field private static final SET_MODE_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ITouchFeature"

.field private static final TOUCHFEATURE_DOUBLE_TAP:I = 0x1

.field private static final TOUCHFEATURE_EDGE_MODE:I = 0x4

.field private static final TOUCHFEATURE_GLOBAL_TOUCH_DIRECTION:I = 0x2

.field public static final TOUCH_ACTIVE_MODE:I = 0x1

.field public static final TOUCH_DOUBLETAP_MODE:I = 0xe

.field public static final TOUCH_EDGE_FILTER:I = 0x7

.field public static final TOUCH_EDGE_MODE:I = 0xf

.field public static final TOUCH_GAME_MODE:I = 0x0

.field public static final TOUCH_ID_PRIMARY:I = 0x0

.field public static final TOUCH_ID_SECONDARY:I = 0x1

.field public static final TOUCH_MODE_DIRECTION:I = 0x8

.field public static final TOUCH_TOLERANCE:I = 0x3

.field public static final TOUCH_UP_THRESHOLD:I = 0x2

.field public static final TOUCH_WGH_MAX:I = 0x5

.field public static final TOUCH_WGH_MIN:I = 0x4

.field public static final TOUCH_WGH_STEP:I = 0x6


# instance fields
.field private mServiceVersion:I

.field private mTouchFeatureProperties:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/ITouchFeature;->INSTANCE:Lmiui/util/ITouchFeature;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ITouchFeature;->mServiceVersion:I

    const-string v1, "ro.vendor.touchfeature.type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/util/ITouchFeature;->mTouchFeatureProperties:I

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v0

    iput v0, p0, Lmiui/util/ITouchFeature;->mServiceVersion:I

    return-void
.end method

.method public static getInstance()Lmiui/util/ITouchFeature;
    .registers 2

    sget-object v0, Lmiui/util/ITouchFeature;->INSTANCE:Lmiui/util/ITouchFeature;

    if-nez v0, :cond_17

    const-class v0, Lmiui/util/ITouchFeature;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/util/ITouchFeature;->INSTANCE:Lmiui/util/ITouchFeature;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/util/ITouchFeature;

    invoke-direct {v1}, Lmiui/util/ITouchFeature;-><init>()V

    sput-object v1, Lmiui/util/ITouchFeature;->INSTANCE:Lmiui/util/ITouchFeature;

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
    sget-object v0, Lmiui/util/ITouchFeature;->INSTANCE:Lmiui/util/ITouchFeature;

    return-object v0
.end method


# virtual methods
.method public getModeValues(I)[I
    .registers 11

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_9
    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v3

    if-eqz v3, :cond_48

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v2, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v5, :cond_43

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_40} :catch_59
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_40} :catch_4f
    .catchall {:try_start_9 .. :try_end_40} :catchall_4d

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_43
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-object v6

    :cond_48
    nop

    :goto_49
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_70

    :catchall_4d
    move-exception v0

    goto :goto_79

    :catch_4f
    move-exception v0

    :try_start_50
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_49

    :catch_59
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transact failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_4d

    nop

    goto :goto_49

    :goto_70
    const-string v0, "getModeValues failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0

    :goto_79
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getModeValues(II)[I
    .registers 13

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_8e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_89

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_55

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    :goto_3f
    if-ge v8, v6, :cond_50

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_66
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4d} :catch_5c
    .catchall {:try_start_13 .. :try_end_4d} :catchall_5a

    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    :cond_50
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-object v7

    :cond_55
    nop

    :goto_56
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_7d

    :catchall_5a
    move-exception v0

    goto :goto_85

    :catch_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_56

    :catch_66
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_5d .. :try_end_7b} :catchall_5a

    nop

    goto :goto_56

    :goto_7d
    const-string v0, "getModeValues failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [I

    return-object v0

    :goto_85
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_89
    invoke-virtual {p0, p2}, Lmiui/util/ITouchFeature;->getModeValues(I)[I

    move-result-object v0

    return-object v0

    :cond_8e
    new-array v0, v3, [I

    return-object v0
.end method

.method public getSupportTouchFeatureVersion()I
    .registers 5

    const-string v0, "default"

    iget v1, p0, Lmiui/util/ITouchFeature;->mServiceVersion:I

    const-string v2, "ITouchFeature"

    if-eqz v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current device and process support version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/ITouchFeature;->mServiceVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmiui/util/ITouchFeature;->mServiceVersion:I

    return v0

    :cond_21
    :try_start_21
    const-string v1, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    invoke-static {v1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v3, "current device and process support v2 service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_21 .. :try_end_2e} :catch_31

    const/4 v0, 0x2

    return v0

    :cond_30
    goto :goto_3e

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3e
    nop

    :goto_3f
    :try_start_3f
    const-string v1, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    invoke-static {v1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, "current device and process support v1 service"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4c} :catch_58
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_4c} :catch_4f

    const/4 v1, 0x1

    return v1

    :cond_4e
    goto :goto_5c

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5c
    nop

    :goto_5d
    const-string v0, "current device and process not support, v1/v2 service not found"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTouchModeCurValue(I)I
    .registers 10

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, -0x1

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_4c

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeCurValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_5d
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_42} :catch_53
    .catchall {:try_start_a .. :try_end_42} :catchall_51

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_47
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_4c
    nop

    :goto_4d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_74

    :catchall_51
    move-exception v0

    goto :goto_7a

    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4d

    :catch_5d
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_51

    nop

    goto :goto_4d

    :goto_74
    const-string v0, "getTouchModeCurValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_7a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getTouchModeCurValue(II)I
    .registers 11

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_8f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8a

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_58

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_53

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeCurValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4e} :catch_69
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4e} :catch_5f
    .catchall {:try_start_13 .. :try_end_4e} :catchall_5d

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_53
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_58
    nop

    :goto_59
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_80

    :catchall_5d
    move-exception v0

    goto :goto_86

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_59

    :catch_69
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_5d

    nop

    goto :goto_59

    :goto_80
    const-string v0, "getTouchModeCurValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_86
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_8a
    invoke-virtual {p0, p2}, Lmiui/util/ITouchFeature;->getTouchModeCurValue(I)I

    move-result v0

    return v0

    :cond_8f
    return v3
.end method

.method public getTouchModeDefValue(I)I
    .registers 10

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, -0x1

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_4c

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeDefValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_5d
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_42} :catch_53
    .catchall {:try_start_a .. :try_end_42} :catchall_51

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_47
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_4c
    nop

    :goto_4d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_74

    :catchall_51
    move-exception v0

    goto :goto_7a

    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4d

    :catch_5d
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_51

    nop

    goto :goto_4d

    :goto_74
    const-string v0, "getTouchModeDefValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_7a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getTouchModeDefValue(II)I
    .registers 11

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_8f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8a

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_58

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_53

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeDefValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4e} :catch_69
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4e} :catch_5f
    .catchall {:try_start_13 .. :try_end_4e} :catchall_5d

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_53
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_58
    nop

    :goto_59
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_80

    :catchall_5d
    move-exception v0

    goto :goto_86

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_59

    :catch_69
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_5d

    nop

    goto :goto_59

    :goto_80
    const-string v0, "getTouchModeDefValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_86
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_8a
    invoke-virtual {p0, p2}, Lmiui/util/ITouchFeature;->getTouchModeDefValue(I)I

    move-result v0

    return v0

    :cond_8f
    return v3
.end method

.method public getTouchModeMaxValue(I)I
    .registers 10

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, -0x1

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_4c

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeMaxValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_5d
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_42} :catch_53
    .catchall {:try_start_a .. :try_end_42} :catchall_51

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_47
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_4c
    nop

    :goto_4d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_74

    :catchall_51
    move-exception v0

    goto :goto_7a

    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4d

    :catch_5d
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_51

    nop

    goto :goto_4d

    :goto_74
    const-string v0, "getTouchModeMaxValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_7a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getTouchModeMaxValue(II)I
    .registers 11

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_8f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8a

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_58

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_53

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeMaxValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4e} :catch_69
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4e} :catch_5f
    .catchall {:try_start_13 .. :try_end_4e} :catchall_5d

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_53
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_58
    nop

    :goto_59
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_80

    :catchall_5d
    move-exception v0

    goto :goto_86

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_59

    :catch_69
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_5d

    nop

    goto :goto_59

    :goto_80
    const-string v0, "getTouchModeMaxValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_86
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_8a
    invoke-virtual {p0, p2}, Lmiui/util/ITouchFeature;->getTouchModeMaxValue(I)I

    move-result v0

    return v0

    :cond_8f
    return v3
.end method

.method public getTouchModeMinValue(I)I
    .registers 10

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, -0x1

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_4c

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeMinValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_5d
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_42} :catch_53
    .catchall {:try_start_a .. :try_end_42} :catchall_51

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_47
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_4c
    nop

    :goto_4d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_74

    :catchall_51
    move-exception v0

    goto :goto_7a

    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4d

    :catch_5d
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_51

    nop

    goto :goto_4d

    :goto_74
    const-string v0, "getTouchModeMinValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_7a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getTouchModeMinValue(II)I
    .registers 11

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_8f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8a

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_58

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-gez v0, :cond_53

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTouchModeMinValue failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4e} :catch_69
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4e} :catch_5f
    .catchall {:try_start_13 .. :try_end_4e} :catchall_5d

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_53
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_58
    nop

    :goto_59
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_80

    :catchall_5d
    move-exception v0

    goto :goto_86

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_59

    :catch_69
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_5d

    nop

    goto :goto_59

    :goto_80
    const-string v0, "getTouchModeMinValue failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_86
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_8a
    invoke-virtual {p0, p2}, Lmiui/util/ITouchFeature;->getTouchModeMinValue(I)I

    move-result v0

    return v0

    :cond_8f
    return v3
.end method

.method public hasDoubleTapWakeUpSupport()Z
    .registers 3

    iget v0, p0, Lmiui/util/ITouchFeature;->mTouchFeatureProperties:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasSupportEdgeMode()Z
    .registers 2

    iget v0, p0, Lmiui/util/ITouchFeature;->mTouchFeatureProperties:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSupportGlobalTouchDirection()Z
    .registers 2

    iget v0, p0, Lmiui/util/ITouchFeature;->mTouchFeatureProperties:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public resetTouchMode(I)Z
    .registers 10

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_4b

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x6

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_46

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetTouchMode failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_41} :catch_5c
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_41} :catch_52
    .catchall {:try_start_a .. :try_end_41} :catchall_50

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_46
    const/4 v1, 0x1

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v1

    :cond_4b
    nop

    :goto_4c
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_73

    :catchall_50
    move-exception v0

    goto :goto_79

    :catch_52
    move-exception v0

    :try_start_53
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4c

    :catch_5c
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_50

    nop

    goto :goto_4c

    :goto_73
    const-string v0, "resetTouchMode failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_79
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public resetTouchMode(II)Z
    .registers 11

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_89

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v5, "default"

    invoke-static {v0, v5}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v5

    if-eqz v5, :cond_57

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v6, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x6

    invoke-interface {v5, v0, v6, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_52

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetTouchMode failed. ret = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_68
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4d} :catch_5e
    .catchall {:try_start_13 .. :try_end_4d} :catchall_5c

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_52
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v4

    :cond_57
    nop

    :goto_58
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_7f

    :catchall_5c
    move-exception v0

    goto :goto_85

    :catch_5e
    move-exception v0

    :try_start_5f
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_58

    :catch_68
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_5c

    nop

    goto :goto_58

    :goto_7f
    const-string v0, "resetTouchMode failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_85
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_89
    invoke-virtual {p0, p2}, Lmiui/util/ITouchFeature;->resetTouchMode(I)Z

    move-result v0

    return v0

    :cond_8e
    return v3
.end method

.method public setEdgeMode(IILjava/util/ArrayList;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_95

    const/4 v4, 0x1

    if-eq v2, v4, :cond_90

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v5, "default"

    invoke-static {v0, v5}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v5

    if-eqz v5, :cond_5e

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v6, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v6, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v6, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    const/16 v0, 0x8

    invoke-interface {v5, v0, v6, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEdgeMode failed. ret = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_54} :catch_6f
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_54} :catch_65
    .catchall {:try_start_13 .. :try_end_54} :catchall_63

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_59
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v4

    :cond_5e
    nop

    :goto_5f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_86

    :catchall_63
    move-exception v0

    goto :goto_8c

    :catch_65
    move-exception v0

    :try_start_66
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_5f

    :catch_6f
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_66 .. :try_end_84} :catchall_63

    nop

    goto :goto_5f

    :goto_86
    const-string v0, "setEdgeMode failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_8c
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_90
    invoke-virtual {p0, p2, p3, p4}, Lmiui/util/ITouchFeature;->setEdgeMode(ILjava/util/ArrayList;I)Z

    move-result v0

    return v0

    :cond_95
    return v3
.end method

.method public setEdgeMode(ILjava/util/ArrayList;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_52

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    const/16 v0, 0x8

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEdgeMode failed. ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_48} :catch_63
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_48} :catch_59
    .catchall {:try_start_a .. :try_end_48} :catchall_57

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_4d
    const/4 v1, 0x1

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v1

    :cond_52
    nop

    :goto_53
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_7a

    :catchall_57
    move-exception v0

    goto :goto_80

    :catch_59
    move-exception v0

    :try_start_5a
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_53

    :catch_63
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_57

    nop

    goto :goto_53

    :goto_7a
    const-string v0, "setEdgeMode failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_80
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setTouchMode(II)Z
    .registers 11

    const-string v0, "vendor.xiaomi.hardware.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_4e

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x1

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    if-eqz v6, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTouchMode failed. ret = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_44} :catch_5f
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_44} :catch_55
    .catchall {:try_start_a .. :try_end_44} :catchall_53

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_49
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_4e
    nop

    :goto_4f
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_76

    :catchall_53
    move-exception v0

    goto :goto_7c

    :catch_55
    move-exception v0

    :try_start_56
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_4f

    :catch_5f
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_56 .. :try_end_74} :catchall_53

    nop

    goto :goto_4f

    :goto_76
    const-string v0, "setTouchMode failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_7c
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setTouchMode(III)Z
    .registers 12

    const-string v0, "vendor.xiaomi.hw.touchfeature@1.0::ITouchFeature"

    const-string v1, "ITouchFeature"

    invoke-virtual {p0}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_90

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8b

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_13
    const-string v5, "default"

    invoke-static {v0, v5}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v5

    if-eqz v5, :cond_59

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v6, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v6, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-interface {v5, v4, v6, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTouchMode failed. ret = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4f} :catch_6a
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_4f} :catch_60
    .catchall {:try_start_13 .. :try_end_4f} :catchall_5e

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_54
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v4

    :cond_59
    nop

    :goto_5a
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_81

    :catchall_5e
    move-exception v0

    goto :goto_87

    :catch_60
    move-exception v0

    :try_start_61
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_5a

    :catch_6a
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_5e

    nop

    goto :goto_5a

    :goto_81
    const-string v0, "setTouchMode failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_87
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0

    :cond_8b
    invoke-virtual {p0, p2, p3}, Lmiui/util/ITouchFeature;->setTouchMode(II)Z

    move-result v0

    return v0

    :cond_90
    return v3
.end method
