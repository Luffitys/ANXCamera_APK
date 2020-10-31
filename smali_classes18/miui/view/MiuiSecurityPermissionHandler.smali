.class public Lmiui/view/MiuiSecurityPermissionHandler;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LISTEN_MODE_ACCOUNT:I = 0x1

.field private static final LISTEN_MODE_WIFI:I = 0x2

.field private static final NETWORK_ERROR:I = -0x2

.field private static final PERMISSION_ACCOUNT_WHITELIST:I = 0x1

.field private static final PERMISSION_ERROR:I = -0x1

.field private static final PERMISSION_IMEIACCOUNT_WHITELIST:I = 0x3

.field private static final PERMISSION_IMEI_WHITELIST:I = 0x2

.field private static final POST_VERIFICATION_REQUEST:I = 0x0

.field private static final POST_VERIFICATION_WATER_MARKER:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final WATERMARKER_ACCOUNT_WHITELIST:I = 0x1

.field private static final WATERMARKER_IMEI_ACCOUNT_WHITELIST:I = 0x3

.field private static final WATERMARKER_IMEI_WHITELIST:I = 0x2

.field private static final WATERMARKER_SHOW:I

.field private static sDefaultUrl:Ljava/lang/String;

.field private static sGlobalUrl:Ljava/lang/String;


# instance fields
.field private mBootComplete:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMiuiSecurityImeiFlag:I

.field private mNeedAddAccount:Z

.field private mNeedListenAccount:Z

.field private mOpenWifiOnce:Z

.field private mPermissionListenAccount:Z

.field private mPermissionView:Landroid/view/View;

.field private mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetPermission:I

.field private mRetWater:I

.field private responseResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "https://update.intl.miui.com/updates/mi-vip.php"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->sGlobalUrl:Ljava/lang/String;

    const-string v0, "https://update.miui.com/updates/mi-vip.php"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->sDefaultUrl:Ljava/lang/String;

    const-string v0, "MiuiPermission"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const/4 v1, -0x2

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedListenAccount:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiSecurityPermissionHandler$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;)V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_28

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_31

    :cond_28
    invoke-virtual {p0, p2}, Lmiui/view/MiuiSecurityPermissionHandler;->registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->registerNetWReceiver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->mayBringUpPermissionView()V

    :cond_31
    return-void
.end method

.method static synthetic access$000(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->onOpenWifiSettingsButtonClicked()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->enableWifiAndData()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return v0
.end method

.method static synthetic access$202(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return v0
.end method

.method static synthetic access$502(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;
    .registers 2

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .registers 2

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    return v0
.end method

.method static synthetic access$800(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .registers 2

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return v0
.end method

.method static synthetic access$902(Lmiui/view/MiuiSecurityPermissionHandler;I)I
    .registers 2

    iput p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return p1
.end method

.method private appendImei(Ljava/io/OutputStreamWriter;)V
    .registers 7

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_64

    :cond_12
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2e
    if-eqz v2, :cond_47

    :try_start_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&imei1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_47

    :catch_45
    move-exception v3

    goto :goto_5e

    :cond_47
    :goto_47
    if-eqz v1, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&imei2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_5d} :catch_45

    goto :goto_62

    :goto_5e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :cond_62
    :goto_62
    nop

    :goto_63
    return-void

    :cond_64
    :goto_64
    return-void
.end method

.method private decryptData(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "ODQ4NWFmYjdhNGE="

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->generateRawKey(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_d
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_31

    return-object v5

    :catch_31
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method private doPermissionView()V
    .registers 8

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "miui_account_login_check"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    if-nez v0, :cond_48

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lmiui/view/MiuiSecurityPermissionHandler$3;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v4, v3}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Z)V

    iput-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v6, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_4e

    :cond_48
    if-eqz v3, :cond_4b

    return-void

    :cond_4b
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :goto_4e
    return-void
.end method

.method private doWaterMarker()V
    .registers 8

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_permission_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    return-void

    :cond_14
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    move-object v3, v1

    goto :goto_1f

    :cond_1d
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_1f
    invoke-direct {p0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2a

    if-nez v3, :cond_70

    :cond_2a
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_3b

    :cond_3a
    move v3, v2

    :goto_3b
    if-nez v3, :cond_61

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {v5, p0, v1, v4, v0}, Lmiui/view/MiuiSecurityPermissionHandler$2;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Landroid/accounts/Account;)V

    iput-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_70

    :cond_61
    monitor-enter p0

    :try_start_62
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-eq v4, v1, :cond_6a

    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-nez v1, :cond_6f

    :cond_6a
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    :cond_6f
    monitor-exit p0

    :cond_70
    :goto_70
    return-void

    :catchall_71
    move-exception v1

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_71

    throw v1
.end method

.method private enableWifiAndData()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1f
    return-void
.end method

.method private generateRawKey(Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_19
    array-length v3, v0

    if-ge v2, v3, :cond_23

    aget-byte v3, v0, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_23
    return-object v1
.end method

.method public static hashSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method

.method private loadAccountId()Landroid/accounts/Account;
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method private onOpenWifiSettingsButtonClicked()V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_show_on_finddevice_keyguard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_18
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_35

    :catch_1e
    move-exception v1

    sget-object v2, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p3, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v0, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    :goto_9
    invoke-virtual {p2, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    :catchall_d
    move-exception v0

    goto :goto_26

    :catch_f
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    if-nez v1, :cond_1f

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$6;

    invoke-direct {v1, p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler$6;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_d

    :cond_1f
    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v0, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    goto :goto_9

    :goto_25
    return-void

    :goto_26
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v1, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method private postVerificationResult(Ljava/lang/String;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "&sid=1&device="

    const-string v4, "uid="

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ro.product.mod_device"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1d

    sget-object v9, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_1e

    :cond_1d
    move-object v9, v8

    :goto_1e
    move-object v8, v9

    const/16 v9, 0x1388

    :try_start_21
    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_2d

    new-instance v10, Ljava/net/URL;

    sget-object v11, Lmiui/view/MiuiSecurityPermissionHandler;->sGlobalUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :cond_2d
    new-instance v10, Ljava/net/URL;

    sget-object v11, Lmiui/view/MiuiSecurityPermissionHandler;->sDefaultUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    move-object v7, v11

    const/16 v11, 0x1388

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v13, "POST"

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object v13, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v5}, Lmiui/view/MiuiSecurityPermissionHandler;->appendImei(Ljava/io/OutputStreamWriter;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_104

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    const/16 v0, 0x1000

    const/16 v4, 0x1000

    new-array v4, v4, [C

    const/4 v13, 0x0

    :goto_af
    rsub-int v14, v13, 0x1000

    invoke-virtual {v6, v4, v13, v14}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v14

    move v15, v14

    const/4 v11, -0x1

    if-eq v14, v11, :cond_bc

    add-int/2addr v13, v15

    const/4 v11, 0x0

    goto :goto_af

    :cond_bc
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    if-ne v3, v12, :cond_d3

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v4, v12, v13}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v11}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lmiui/view/MiuiSecurityPermissionHandler;->processWatermarResult(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    goto :goto_104

    :cond_d3
    if-nez v3, :cond_104

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v4, v12, v13}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v11}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lmiui/view/MiuiSecurityPermissionHandler;->processResult(Ljava/lang/String;)V

    sget-object v11, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mRetPermission:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "mRetWater "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_104} :catch_125
    .catchall {:try_start_21 .. :try_end_104} :catchall_122

    :cond_104
    :goto_104
    if-eqz v5, :cond_110

    :try_start_106
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_110

    :catch_10a
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_110
    :goto_110
    if-eqz v6, :cond_11c

    :try_start_112
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    goto :goto_11c

    :catch_116
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_11c
    :goto_11c
    if-eqz v7, :cond_121

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_121
    return-void

    :catchall_122
    move-exception v0

    move-object v4, v0

    goto :goto_128

    :catch_125
    move-exception v0

    nop

    :try_start_127
    throw v0
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_122

    :goto_128
    if-eqz v5, :cond_134

    :try_start_12a
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12e

    goto :goto_134

    :catch_12e
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_134
    :goto_134
    if-eqz v6, :cond_140

    :try_start_136
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_140

    :catch_13a
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_140
    :goto_140
    if-eqz v7, :cond_145

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_145
    throw v4
.end method

.method private postVerificationWaterMarker(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    return v0
.end method

.method private processMiuiSecurityImeiFlag(II)V
    .registers 6

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_10

    :cond_a
    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    :cond_10
    if-eq p2, v0, :cond_14

    if-ne p2, v1, :cond_19

    :cond_14
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    :cond_19
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const-string v2, "miui_permission_check"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_26
    return-void
.end method

.method private processResult(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Watermark"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    iput v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    invoke-direct {p0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private processWatermarResult(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Watermark"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return v2

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x2

    return v0
.end method

.method private registerNetWReceiver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateWaterMarkerAccount()V
    .registers 3

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$8;

    invoke-direct {v1, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$8;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Lmiui/view/MiuiSecurityPermissionHandler$8;->start()V

    return-void
.end method


# virtual methods
.method public createPermissionView()V
    .registers 9

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_permission_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string v2, "createPermissionView!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    if-nez v1, :cond_4d

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const v2, 0x110b0031

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e0

    const v6, 0x5020500

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v2, "Permission"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4d
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v2, 0x11090005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v3, 0x11090088

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$4;

    invoke-direct {v3, p0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$4;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$5;

    invoke-direct {v3, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$5;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public handleAccountLogin()V
    .registers 4

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_18

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_10

    goto :goto_1c

    :cond_10
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_1c

    :cond_14
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_1c

    :cond_18
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    nop

    :goto_1c
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    if-eq v0, v2, :cond_32

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    if-eq v0, v1, :cond_2a

    goto :goto_35

    :cond_2a
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_35

    :cond_2e
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_35

    :cond_32
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_35
    :goto_35
    return-void
.end method

.method public handleAccountLogout()V
    .registers 4

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_43

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAccountLogout mRetPermission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1e
    invoke-direct {p0, v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    if-eq v0, v2, :cond_32

    goto :goto_43

    :cond_32
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_43

    :cond_38
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_43

    :cond_3e
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    :cond_43
    :goto_43
    return-void
.end method

.method public handleWifiSettingFinish()V
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_14

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string v1, "handleWifiSettingFinish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_14
    return-void
.end method

.method public mayBringUpPermissionView()V
    .registers 2

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    goto :goto_12

    :cond_c
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doPermissionView()V

    :cond_12
    :goto_12
    return-void
.end method

.method public registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-void
.end method
