.class public Lorg/mipay/android/manager/MipayManagerImpl;
.super Ljava/lang/Object;
.source "MipayManagerImpl.java"

# interfaces
.implements Lorg/mipay/android/manager/IMipayManager;


# static fields
.field private static CODE_CONTAINS:I

.field private static CODE_GEN_KEY_PAIR:I

.field private static CODE_GET_FP_IDS:I

.field private static CODE_RM_ALL_KEY:I

.field private static CODE_SIGN:I

.field private static CODE_SIGN_INIT:I

.field private static CODE_SIGN_UPDATE:I

.field private static DEBUG:Z

.field private static volatile INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

.field private static INTERFACE_DESCRIPTOR:Ljava/lang/String;

.field private static MIPAY_TYPE_FINGER:I

.field private static MIPAY_TYPE_IRIS:I

.field private static MIPAY_VERISON_1:I

.field private static SERVICE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static mPackName:Ljava/lang/String;

.field private static mService:Landroid/os/IBinder;

.field private static mTidaActName:Ljava/lang/String;

.field private static mTidaInterfaceDesc:Ljava/lang/String;

.field private static mipayconn:Landroid/content/ServiceConnection;


# instance fields
.field private mHwService:Landroid/os/IHwBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MipayManagerImpl"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    const/4 v0, 0x1

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    const/4 v1, 0x2

    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_IRIS:I

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    const/4 v0, 0x3

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    const/4 v0, 0x4

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    const/4 v0, 0x5

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    const/4 v0, 0x6

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    const/4 v0, 0x7

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    const-string v0, "vendor.xiaomi.hardware.tidaservice@1.0::ITidaService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    const-string v0, "com.tencent.soter.soterserver"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;

    const-string v0, "org.mipay.android.manager.MipayService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    const-string v0, "org.mipay.android.manager.IMipayService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$2;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl$2;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$3;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl$3;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/ServiceConnection;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$602(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 1

    sput-object p0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$700()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$800()V
    .registers 0

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V

    return-void
.end method

.method private static bindTidaService()V
    .registers 2

    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$1;

    const-string v1, "TidaThread"

    invoke-direct {v0, v1}, Lorg/mipay/android/manager/MipayManagerImpl$1;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 9

    const/16 v0, 0xa

    const/4 v1, -0x1

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6c

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_31

    :try_start_11
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, p0, p1, p2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_19

    const/4 v1, 0x0

    goto :goto_6c

    :catch_19
    move-exception v0

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectService transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_31
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectService waiting mipayService, remain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x1e

    :try_start_4e
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_51} :catch_52

    :goto_51
    goto :goto_6a

    :catch_52
    move-exception v0

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectService InterruptedException while waiting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :goto_6a
    move v0, v2

    goto :goto_3

    :cond_6c
    :goto_6c
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/mipay/android/manager/IMipayManager;
    .registers 4

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    if-nez v0, :cond_22

    const-class v0, Lorg/mipay/android/manager/MipayManagerImpl;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    if-nez v1, :cond_1d

    new-instance v1, Lorg/mipay/android/manager/MipayManagerImpl;

    invoke-direct {v1}, Lorg/mipay/android/manager/MipayManagerImpl;-><init>()V

    sput-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1d

    sput-object p0, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V

    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    :cond_22
    :goto_22
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    return-object v0
.end method

.method private initService()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-nez v0, :cond_e

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    :cond_e
    return-void
.end method

.method private signUpdate(Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_42

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_34

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_41

    :cond_34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_41
    goto :goto_8e

    :cond_42
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_47
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_6e

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_6d} :catch_75
    .catchall {:try_start_47 .. :try_end_6d} :catchall_73

    move v0, v3

    :cond_6e
    nop

    :goto_6f
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_8e

    :catchall_73
    move-exception v2

    goto :goto_a9

    :catch_75
    move-exception v2

    :try_start_76
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_73

    nop

    goto :goto_6f

    :goto_8e
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a8

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signUpdate, res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return v0

    :goto_a9
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_42

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v4

    if-eqz v4, :cond_34

    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "MipayService not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_41

    :cond_34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_41
    goto :goto_8e

    :cond_42
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_47
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_6e

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v3
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_6d} :catch_75
    .catchall {:try_start_47 .. :try_end_6d} :catchall_73

    move v0, v3

    :cond_6e
    nop

    :goto_6f
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_8e

    :catchall_73
    move-exception v2

    goto :goto_b1

    :catch_75
    move-exception v2

    :try_start_76
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_73

    nop

    goto :goto_6f

    :goto_8e
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_b0

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contains, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    return v0

    :goto_b1
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_45

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_44

    :cond_37
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_44
    goto :goto_94

    :cond_45
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_4a
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_74

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_73} :catch_7b
    .catchall {:try_start_4a .. :try_end_73} :catchall_79

    move v0, v3

    :cond_74
    nop

    :goto_75
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_94

    :catchall_79
    move-exception v2

    goto :goto_bf

    :catch_7b
    move-exception v2

    :try_start_7c
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7c .. :try_end_92} :catchall_79

    nop

    goto :goto_75

    :goto_94
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_be

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyPair, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return v0

    :goto_bf
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getFpIds()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_39

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    invoke-static {v3, v1, v2}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_38

    :cond_2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_38
    goto :goto_82

    :cond_39
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_3e
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_62

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_61} :catch_69
    .catchall {:try_start_3e .. :try_end_61} :catchall_67

    move-object v0, v3

    :cond_62
    nop

    :goto_63
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_82

    :catchall_67
    move-exception v2

    goto :goto_9d

    :catch_69
    move-exception v2

    :try_start_6a
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_67

    nop

    goto :goto_63

    :goto_82
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_9c

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFpIds, fpIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return-object v0

    :goto_9d
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .registers 5

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportBIOTypes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    return v0
.end method

.method public getVersion()I
    .registers 4

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    return v0
.end method

.method public removeAllKey()I
    .registers 7

    const/4 v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_31

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_3e

    :cond_31
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_3e
    goto :goto_88

    :cond_3f
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_44
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_68

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_67} :catch_6f
    .catchall {:try_start_44 .. :try_end_67} :catchall_6d

    move v0, v3

    :cond_68
    nop

    :goto_69
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_88

    :catchall_6d
    move-exception v2

    goto :goto_a3

    :catch_6f
    move-exception v2

    :try_start_70
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_6d

    nop

    goto :goto_69

    :goto_88
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a2

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllKey, res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return v0

    :goto_a3
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sign()[B
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3a

    new-array v0, v1, [B

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    invoke-static {v3, v1, v2}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :cond_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_39
    return-object v0

    :cond_3a
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_3f
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_7e

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    invoke-interface {v3, v4, v2, v0, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_68
    if-ge v5, v3, :cond_79

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_76} :catch_85
    .catchall {:try_start_3f .. :try_end_76} :catchall_83

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_79
    nop

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    return-object v4

    :cond_7e
    nop

    :goto_7f
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    goto :goto_9e

    :catchall_83
    move-exception v1

    goto :goto_a7

    :catch_85
    move-exception v1

    :try_start_86
    sget-object v2, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_86 .. :try_end_9c} :catchall_83

    nop

    goto :goto_7f

    :goto_9e
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "sign fail, return null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :goto_a7
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    throw v1
.end method

.method public signInit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_45

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_44

    :cond_37
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_44
    goto :goto_94

    :cond_45
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_4a
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_74

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_73} :catch_7b
    .catchall {:try_start_4a .. :try_end_73} :catchall_79

    move v0, v3

    :cond_74
    nop

    :goto_75
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_94

    :catchall_79
    move-exception v2

    goto :goto_bf

    :catch_7b
    move-exception v2

    :try_start_7c
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7c .. :try_end_92} :catchall_79

    nop

    goto :goto_75

    :goto_94
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_be

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signInit, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return v0

    :goto_bf
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public signUpdate([BII)I
    .registers 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/mipay/android/manager/MipayManagerImpl;->signUpdate(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
