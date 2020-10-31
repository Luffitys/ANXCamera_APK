.class public Lcom/xiaomi/mirror/MirrorManager;
.super Ljava/lang/Object;
.source "MirrorManager.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorManager;


# static fields
.field public static final APP_SERVICE_NAME:Ljava/lang/String; = "miui.mirror_app_service"

.field private static volatile INSTANCE:Lcom/xiaomi/mirror/MirrorManager; = null

.field public static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.xiaomi.mirror.remoteprovider"

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.mirror_service"

.field private static final SUPPORT_MODEL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNERGY_MODE:Ljava/lang/String; = "synergy_mode"

.field private static final TAG:Ljava/lang/String; = "MirrorManager"

.field private static final TRANSACT_REQUEST_DIMMING_RIGHT_NOW:I = 0xfffffe

.field public static final VIRTUAL_DEVICE_ID:I = -0x1


# instance fields
.field private final CODE_ACCEPT_INPUT_STATUS:I

.field private final CODE_INPUT_TEXT:I

.field private final CODE_REGISTER_MONITER:I

.field private final CODE_REG_SF_SECURE_WINDOW:I

.field private final CODE_SECURE_WINDOW:I

.field private final CODE_SYNERGY_OPERATE:I

.field private final CODE_UNREGISTER_MONITER:I

.field private final CODE_UNREG_SF_SECURE_WINDOW:I

.field private SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

.field private SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

.field private SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

.field private SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;

.field private mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

.field private mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

.field private mBinder:Landroid/os/Binder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

.field private final mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

.field private volatile mDelegating:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIPowerManager:Landroid/os/IBinder;

.field private final mLock:Ljava/lang/Object;

.field private mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

.field private mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

.field private mService:Lcom/xiaomi/mirror/IMirrorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTrackingEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->SUPPORT_MODEL:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/mirror/-$$Lambda$MirrorManager$aLgkq14jWKbtj_EFD2iyRzCG7tM;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/-$$Lambda$MirrorManager$aLgkq14jWKbtj_EFD2iyRzCG7tM;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    const v0, 0xfffffe

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_INPUT_TEXT:I

    const v0, 0xfffffd

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_REGISTER_MONITER:I

    const v0, 0xfffffc

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_UNREGISTER_MONITER:I

    const v0, 0xfffffb

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_SYNERGY_OPERATE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_ACCEPT_INPUT_STATUS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_SECURE_WINDOW:I

    const-string v0, "com.android.internal.view.IInputMethodManager"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    const-string v0, "com.android.synergy.Callback"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;

    const/16 v0, 0x140a

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_REG_SF_SECURE_WINDOW:I

    const/16 v0, 0x140b

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_UNREG_SF_SECURE_WINDOW:I

    const-string v0, "SurfaceFlinger"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

    const-string v0, "android.ui.ISurfaceComposer"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/MirrorManager$1;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mBinder:Landroid/os/Binder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/MirrorManager$2;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->initService()V

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIPowerManager:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/mirror/MirrorManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->sendAcceptInput(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/mirror/MirrorManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->sendSecureWin(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaomi/mirror/MirrorManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegating:Z

    return p1
.end method

.method private appServiceLost()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    return-void
.end method

.method private binderRegAcceptInput()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mBinder:Landroid/os/Binder;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const v3, 0xfffffd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_REGISTER_MONITER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method

.method private binderRegSecureWin()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mBinder:Landroid/os/Binder;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v3, 0x140a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_45

    :catch_2a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_REG_SF_SECURE_WINDOW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method private binderSendChineseText(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    goto :goto_44

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_INPUT_TEXT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method private binderSendSynergyOperate(I)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const v3, 0xfffffb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    goto :goto_44

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_SYNERGY_OPERATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method private binderUnregAcceptInput()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const v3, 0xfffffc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    goto :goto_41

    :catch_26
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_UNREGISTER_MONITER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManager;
    .registers 3

    sget-object v0, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/mirror/MirrorManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/MirrorManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

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
    sget-object v0, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    return-object v0
.end method

.method private getAppService()Lcom/xiaomi/mirror/IMirrorAppService;
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    if-nez v0, :cond_28

    const-string v0, "miui.mirror_app_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    :try_start_12
    invoke-interface {v1}, Lcom/xiaomi/mirror/IMirrorAppService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_28

    :catch_1d
    move-exception v1

    const-string v2, "MirrorManager"

    const-string v3, "getAppService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    return-object v0
.end method

.method private initService()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "miui.mirror_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v1, :cond_22

    :try_start_11
    new-instance v2, Lcom/xiaomi/mirror/MirrorManager$3;

    invoke-direct {v2, p0}, Lcom/xiaomi/mirror/MirrorManager$3;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    invoke-interface {v1, v2}, Lcom/xiaomi/mirror/IMirrorService;->addMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v1

    const-string v2, "MirrorManager"

    const-string v3, "mirror service not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return-void
.end method

.method private isMirrorDevice(I)Z
    .registers 3

    if-gez p1, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static synthetic lambda$aLgkq14jWKbtj_EFD2iyRzCG7tM(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->appServiceLost()V

    return-void
.end method

.method private sendAcceptInput(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendAcceptInput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;->onAcceptInputStatus(II)V

    :cond_25
    return-void
.end method

.method private sendSecureWin(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendSecureWin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;->onSecureWinStatus(II)V

    :cond_25
    return-void
.end method


# virtual methods
.method public beginSynergy(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synergy_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    return v0
.end method

.method public beginTrackingClickEvent(Landroid/view/MotionEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mTrackingEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public binderUnregSecureWin()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v3, 0x140b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    goto :goto_40

    :catch_25
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_UNREG_SF_SECURE_WINDOW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const-string v1, "MirrorManager"

    if-nez v0, :cond_c

    const-string v0, "mirror service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->cancelDragAndDrop(Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    const-string v2, "unable to cancel delegate drag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public delegateMirrorDrag(Landroid/view/IWindow;Landroid/view/ViewRootImpl;IILandroid/view/View$DragShadowBuilder;Landroid/graphics/Point;Landroid/content/ClipData;)Landroid/os/IBinder;
    .registers 23

    move-object v1, p0

    move-object/from16 v2, p6

    move/from16 v9, p4

    and-int/lit16 v0, v9, 0x100

    const/4 v10, 0x0

    const-string v11, "MirrorManager"

    if-nez v0, :cond_12

    const-string v0, "ignore local drag"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_12
    move/from16 v12, p3

    invoke-direct {p0, v12}, Lcom/xiaomi/mirror/MirrorManager;->isMirrorDevice(I)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "ignore drag from phone"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_20
    iget-object v0, v1, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-nez v0, :cond_2a

    const-string v0, "mirror service not found!"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_2a
    :try_start_2a
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v13, v3

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_5c

    move-object/from16 v14, p5

    :try_start_42
    invoke-virtual {v14, v13}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->setImmutable()V

    iget-object v3, v1, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v6

    move-object/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Lcom/xiaomi/mirror/IMirrorService;->performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;

    move-result-object v3
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_59} :catch_5a

    return-object v3

    :catch_5a
    move-exception v0

    goto :goto_5f

    :catch_5c
    move-exception v0

    move-object/from16 v14, p5

    :goto_5f
    const-string v3, "unable to delegate drag"

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method public endSynergy(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synergy_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2
.end method

.method public endTrackingEvent()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mTrackingEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public getWorkingMasterName()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isWorking()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_15

    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorAppService;->getMasterName()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v2

    return-object v1

    :cond_15
    :goto_15
    return-object v1
.end method

.method public grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_e

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService;->grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :cond_e
    :goto_e
    return-void
.end method

.method public injectDragEvent(IIFF)V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const-string v1, "MirrorManager"

    if-nez v0, :cond_c

    const-string v0, "mirror service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/mirror/IMirrorService;->injectDragEvent(IIFF)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    const-string v2, "unable to inject mirror drag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method public isCurrentClickFromMirror()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mTrackingEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mirror/MirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public isEventFromMirror(Landroid/view/InputEvent;)Z
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mirror/MirrorManager;->isMirrorDevice(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isMirrorDelegating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegating:Z

    return v0
.end method

.method public isModelSupport()Z
    .registers 5

    const-string v0, "ro.product.device"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    sget-object v1, Lcom/xiaomi/mirror/MirrorManager;->SUPPORT_MODEL:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isWorking()Z
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorAppService;->isWorking()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v2

    return v1
.end method

.method public notifyInputTypeAndPos(III)V
    .registers 8

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyInputTypeAndPos(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v1

    const-string v2, "MirrorManager"

    const-string v3, "notifyInputTypeAndPos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    .registers 7

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v1

    const-string v2, "MirrorManager"

    const-string v3, "notifyMoveTaskToBack"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public notifyStartActivity(Landroid/content/Intent;)V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_9

    goto :goto_1a

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isCurrentClickFromMirror()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyStartActivity(Landroid/content/Intent;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception v1

    const-string v2, "MirrorManager"

    const-string v3, "failed to notifyStartActivity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method public notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isCurrentClickFromMirror()Z

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyStartActivityFromRecents(ILandroid/os/Bundle;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v1

    const-string v2, "MirrorManager"

    const-string v3, "failed to notifyStartActivityFromRecents"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 6

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "onRemoteMenuActionCall()"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    :cond_17
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_20

    :try_start_1b
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorService;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception v0

    :cond_20
    :goto_20
    return-void
.end method

.method public performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0, p2}, Lcom/xiaomi/mirror/MirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;->onMirrorMenuClick(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_11
    return v1
.end method

.method public regAcceptInputCallback(Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;)I
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderRegAcceptInput()V

    const/4 v0, 0x0

    return v0
.end method

.method public regSecureWinCallback(Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;)I
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderRegSecureWin()V

    const/4 v0, 0x0

    return v0
.end method

.method public registerMirrorDelegate(Lcom/xiaomi/mirror/MirrorDelegate;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    :try_start_a
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

    invoke-interface {v0, v1, p2}, Lcom/xiaomi/mirror/IMirrorService;->registerDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception v0

    goto :goto_17

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_10

    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorService;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "MirrorManager"

    const-string v2, "failed to report drop result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public revokePermissions(Landroid/content/ClipData;I)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_9

    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorService;->revokePermissions(Landroid/content/ClipData;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :cond_9
    :goto_9
    return-void
.end method

.method public sendChineseText(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->binderSendChineseText(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public sendSynergyOperate(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->binderSendSynergyOperate(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public setDragAcceptable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_9

    :try_start_4
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->setDragAcceptable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :cond_9
    :goto_9
    return-void
.end method

.method public setOnMirrorMenuClickListener(Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    return-void
.end method

.method public startMirrorDrag(Landroid/content/ClipData;II)Landroid/os/IBinder;
    .registers 12

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const/4 v6, 0x0

    const-string v7, "MirrorManager"

    if-nez v0, :cond_d

    const-string v0, "mirror service not found!"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_d
    const/4 v1, 0x0

    const/4 v5, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p1

    :try_start_12
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService;->performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "unable to perform mirror drag"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public turnOffBacklight(Landroid/content/Context;)I
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIPowerManager:Landroid/os/IBinder;

    if-eqz v0, :cond_3a

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.os.IPowerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :try_start_16
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mIPowerManager:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_29
    .catchall {:try_start_16 .. :try_end_1f} :catchall_27

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3a

    :catchall_27
    move-exception v2

    goto :goto_33

    :catch_29
    move-exception v2

    :try_start_2a
    const-string v3, "MirrorManager"

    const-string v4, "Failed to request dimming..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    nop

    goto :goto_20

    :goto_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return v0
.end method

.method public unRegAcceptInputCallback()I
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderUnregAcceptInput()V

    const/4 v0, 0x0

    return v0
.end method

.method public unRegSecureWinCallback()I
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderUnregSecureWin()V

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterMirrorDelegate()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    :try_start_b
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

    invoke-interface {v0, v1}, Lcom/xiaomi/mirror/IMirrorService;->unregisterDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    move-exception v0

    goto :goto_18

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method public updateShadow(Landroid/view/View$DragShadowBuilder;II)V
    .registers 9

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const-string v1, "MirrorManager"

    if-nez v0, :cond_c

    const-string v0, "mirror service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_12
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->setImmutable()V

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v3, v0}, Lcom/xiaomi/mirror/IMirrorService;->updateShadow(Landroid/graphics/Bitmap;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v2

    const-string v3, "unable to update delegate drag shadow"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void
.end method
