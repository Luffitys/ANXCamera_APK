.class public Landroid/security/MiuiLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;,
        Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final MATCHED_BLUETOOTH_DEVICE_ADDRESS_TO_UNLOCK:Ljava/lang/String; = "bluetooth_address_to_unlock"

.field private static final MATCHED_BLUETOOTH_DEVICE_NAME_TO_UNLOCK:Ljava/lang/String; = "bluetooth_name_to_unlock"

.field private static final MATCHED_BLUETOOTH_KEY_TO_UNLOCK:Ljava/lang/String; = "bluetooth_key_to_unlock"

.field private static final MATCHED_BLUETOOTH_UNLOCK_STATUS:Ljava/lang/String; = "bluetooth_unlock_status"

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_AC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_GALLERY:I = 0x2

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_PRIVACY_PASSWORD:I = 0x3

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_SMS:I = 0x1

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "MiuiLockPatternUtils"

.field private static mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "access_control"

    const-string v4, "access_control.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string/jumbo v3, "sms"

    const-string/jumbo v4, "sms_private.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "gallery"

    const-string v4, "gallery_private.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string/jumbo v3, "privacy_password_setting"

    const-string/jumbo v4, "privacy_password_setting.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    sput-object v1, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-void

    nop

    :array_42
    .array-data 4
        0x1e
        0x3c
        0x12c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    aget-object v0, v0, p2

    iget-object v1, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/system/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    iget-object v4, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_52

    move v5, v2

    goto :goto_53

    :cond_52
    move v5, v3

    :goto_53
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v4, 0x388

    new-instance v5, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;

    invoke-direct {v5, v1, v4}, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    iput-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    iget-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    :cond_64
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v3

    :goto_6e
    iput-boolean v2, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    return-void
.end method

.method static synthetic access$000()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    .registers 1

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-object v0
.end method

.method private checkAccessKeyguardStoragePermission()Z
    .registers 6

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public static checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    if-eqz p0, :cond_59

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-static {v2}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_2d
    .catchall {:try_start_4 .. :try_end_24} :catchall_2b

    nop

    :try_start_25
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v4

    :goto_2a
    return v1

    :catchall_2b
    move-exception v1

    goto :goto_4f

    :catch_2d
    move-exception v2

    :try_start_2e
    const-string v3, "MiuiLockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPrivacyPasswordPattern error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_2b

    nop

    if-eqz v0, :cond_4d

    :try_start_47
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4d

    :catch_4b
    move-exception v3

    goto :goto_4e

    :cond_4d
    :goto_4d
    nop

    :goto_4e
    return v1

    :goto_4f
    if-eqz v0, :cond_57

    :try_start_51
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_57

    :catch_55
    move-exception v2

    goto :goto_58

    :cond_57
    :goto_57
    nop

    :goto_58
    throw v1

    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFileNameAsUser(I)Ljava/lang/String;
    .registers 7

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    if-eqz p1, :cond_1f

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v4, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private getLockSettingsService()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    nop

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_11
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getTimeoutInMsByFailedAttempts(I)I
    .registers 4

    add-int/lit8 v0, p1, -0x5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public static patternToByteArray(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_28

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    return-object v1
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    :try_start_24
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2e} :catch_2f

    return-object v3

    :catch_2f
    move-exception v2

    return-object v1
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    if-eqz p0, :cond_4a

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    if-eqz v1, :cond_22

    array-length v3, v1

    if-nez v3, :cond_1c

    goto :goto_22

    :cond_1c
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_27

    :cond_22
    :goto_22
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_31
    .catchall {:try_start_4 .. :try_end_27} :catchall_2f

    :goto_27
    nop

    :try_start_28
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_2e

    :catch_2c
    move-exception v1

    nop

    :goto_2e
    return-void

    :catchall_2f
    move-exception v1

    goto :goto_40

    :catch_31
    move-exception v1

    :try_start_32
    const-string v2, "MiuiLockPatternUtils"

    const-string/jumbo v3, "savePrivacyPasswordPattern error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2f

    :goto_40
    if-eqz v0, :cond_48

    :try_start_42
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_48

    :catch_46
    move-exception v2

    goto :goto_49

    :cond_48
    :goto_48
    nop

    :goto_49
    throw v1

    :cond_4a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 8

    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_26

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiLockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/MiuiLockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkMiuiLockPattern(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_14

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/security/PrivacyLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x1

    :try_start_15
    sget-object v2, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v3, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    array-length v5, v4

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_37

    return v0

    :cond_37
    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_3f} :catch_42
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3f} :catch_40

    return v0

    :catch_40
    move-exception v1

    return v0

    :catch_42
    move-exception v1

    return v0
.end method

.method public checkMiuiLockPatternAsUser(Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/security/PrivacyLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_15
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_1a
    invoke-direct {p0, p2}, Landroid/security/MiuiLockPatternUtils;->getFileNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v1, v0}, Lmiui/security/SecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public clearLockoutAttemptDeadline()V
    .registers 4

    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public getBluetoothAddressToUnlock()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothKeyToUnlock()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothNameToUnlock()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothUnlockEnabled()Z
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_unlock_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCurrentOrCallingUserId()I
    .registers 2

    iget-boolean v0, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public getKeyguardLockoutAttemptDeadline(I)J
    .registers 10

    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_11

    return-wide v1

    :cond_11
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v5

    return-wide v0

    :cond_2b
    return-wide v3
.end method

.method public getLockPasswordLength(I)J
    .registers 7

    const-wide/16 v0, 0x4

    :try_start_2
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_length"

    invoke-interface {v2, v3, v0, v1, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockPasswordLength error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiLockPatternUtils"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method protected getLong(Ljava/lang/String;J)J
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    return-wide p2
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 5

    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public saveMiuiLockPattern(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Unable to save lock pattern to "

    const-string v1, "MiuiLockPatternUtils"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_17

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Landroid/security/PrivacyLockPatternUtils;->savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_63

    :cond_17
    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    sget-object v4, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v5, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    :try_start_23
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_33

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_37

    :cond_33
    array-length v6, v2

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_37
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_3a} :catch_4f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3a} :catch_3b

    goto :goto_62

    :catch_3b
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :catch_4f
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    nop

    :goto_63
    return-void
.end method

.method public saveMiuiLockPatternAsUser(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/security/PrivacyLockPatternUtils;->savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_40

    :cond_14
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    goto :goto_40

    :cond_18
    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/security/MiuiLockPatternUtils;->getFileNameAsUser(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2f

    :try_start_22
    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_36

    :cond_2f
    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_36} :catch_37

    :goto_36
    goto :goto_40

    :catch_37
    move-exception v2

    const-string v3, "MiuiLockPatternUtils"

    const-string/jumbo v4, "save pattern as user failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public savedMiuiLockPatternExists()Z
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExistsAsUser(I)Z

    move-result v0

    return v0
.end method

.method public savedMiuiLockPatternExistsAsUser(I)Z
    .registers 4

    if-nez p1, :cond_f

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public setBluetoothAddressToUnlock(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothKeyToUnlock(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothNameToUnlock(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothUnlockEnabled(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_unlock_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeyguardLockoutAttemptDeadline(I)J
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setKeyguardPasswordQuality(I)V
    .registers 7

    const-string/jumbo v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1d

    int-to-long v2, p1

    const-string v4, "lockscreen.password_type"

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void

    :cond_1d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need miui.permission.USE_INTERNAL_GENERAL_API permission to access"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setLong(Ljava/lang/String;J)V
    .registers 5

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method
