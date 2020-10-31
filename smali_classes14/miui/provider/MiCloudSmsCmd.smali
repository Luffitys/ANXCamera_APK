.class public Lmiui/provider/MiCloudSmsCmd;
.super Ljava/lang/Object;
.source "MiCloudSmsCmd.java"


# static fields
.field private static final ACTIVATION_SMS_PREFIX:Ljava/lang/String; = "AC/"

.field private static final ACTIVATION_SMS_PREFIX_2:Ljava/lang/String; = "ACT/"

.field private static final CMD_INDEX:I = 0x1

.field private static final HEADER_INDEX:I = 0x0

.field private static final MSG_ID_INDEX:I = 0x2

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field private static final SMS_CMD_HEADER:Ljava/lang/String; = "mfc"

.field private static final SMS_CMD_HEADER_V1:Ljava/lang/String; = "mf"

.field private static final SMS_CMD_TAIL:Ljava/lang/String; = "##"

.field private static final SMS_CMD_TAIL_V1:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "MiCloudSmsCmd"

.field private static final TIME_INDEX:I = 0x3

.field public static final TYPE_DISCARD_TOKEN:Ljava/lang/String; = "d"

.field public static final TYPE_LOCATION:Ljava/lang/String; = "l"

.field public static final TYPE_LOCK:Ljava/lang/String; = "k"

.field public static final TYPE_NOISE:Ljava/lang/String; = "n"

.field public static final TYPE_WIPE:Ljava/lang/String; = "w"

.field private static sHexChars:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x7b

    new-array v0, v0, [Z

    sput-object v0, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    const/16 v0, 0x41

    :goto_8
    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-gt v0, v1, :cond_15

    sget-object v1, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_8

    :cond_15
    const/16 v0, 0x61

    :goto_17
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_23

    sget-object v1, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_17

    :cond_23
    const/16 v0, 0x30

    :goto_25
    const/16 v1, 0x39

    if-gt v0, v1, :cond_31

    sget-object v1, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_25

    :cond_31
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lmiui/provider/MiCloudSmsCmd;->transferToOldVersionFindDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-string v0, "AC/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    invoke-static {p0, p1, p2, p3}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_e
    const-string v2, "MiCloudSmsCmd"

    const-string v3, "checkAndDispatchActivationSms: The message looks like an activation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x20

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0xb

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-ge v6, v5, :cond_48

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndDispatchActivationSms: length check failed, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " < "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_48
    invoke-static {p3, v0, v3}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_54

    const-string v6, "checkAndDispatchActivationSms: left hex check failed"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_54
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3a

    if-eq v6, v8, :cond_62

    const-string v6, "checkAndDispatchActivationSms: colon check failed"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_62
    invoke-static {p3, v4, v5}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "checkAndDispatchActivationSms: right hex check failed"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6e
    const-string v6, "checkAndDispatchActivationSms: activation SMS acknowledged, broadcasting..."

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.xiaomi.action.ACTIVATION_SMS_RECEIVED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "extra_sim_index"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "extra_address"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "extra_msg_id"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "extra_vkey1"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.xiaomi.simactivate.service"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lmiui/provider/MiCloudSmsCmd;->getAllUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v6, 0x1

    return v6
.end method

.method private static checkAndDispatchActivationSms2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-string v0, "ACT/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    return v2

    :cond_b
    const-string v3, "MiCloudSmsCmd"

    const-string v4, "checkAndDispatchActivationSmsi2: The message looks like an activation"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x20

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0xb

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_44

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndDispatchActivationSms2: length check failed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_44
    invoke-static {p3, v0, v4}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_50

    const-string v7, "checkAndDispatchActivationSms2: left hex check failed"

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_50
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_5e

    const-string v7, "checkAndDispatchActivationSms2: colon check failed"

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5e
    invoke-static {p3, v5, v6}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_6a

    const-string v7, "checkAndDispatchActivationSms2: right hex check failed"

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6a
    const-string v2, "checkAndDispatchActivationSms2: activation SMS acknowledged, broadcasting..."

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaomi.action.ACTIVATION_SMS_2_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_sim_index"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_address"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_sms"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.xiaomi.simactivate.service"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lmiui/provider/MiCloudSmsCmd;->getAllUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v3, 0x1

    return v3
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 11

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkSmsCmd(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "mfc"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_16

    const-string v0, "mf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2c

    :cond_16
    const-string v0, "##"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_27

    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_27

    goto :goto_2c

    :cond_27
    invoke-static/range {p0 .. p5}, Lmiui/provider/MiCloudSmsCmd;->transferToFindDevice(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllUser()Landroid/os/UserHandle;
    .registers 4

    const-string v0, "will not reach here"

    :try_start_2
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_11} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_11} :catch_12

    return-object v2

    :catch_12
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_19
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static isStrHex(Ljava/lang/String;II)Z
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_16

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_14

    aget-boolean v2, v2, v1

    if-nez v2, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    :goto_14
    const/4 v2, 0x0

    return v2

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private static sendOldVersionCommandToFindDeviceService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.device_msgId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.device_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.device_digest"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.device_cmd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.lock_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.from_address"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "l"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v1, "miui.intent.action.REQUEST_LOCATION"

    goto :goto_5a

    :cond_2f
    const-string v2, "n"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v1, "miui.intent.action.NOISE"

    goto :goto_5a

    :cond_3a
    const-string v2, "k"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v1, "miui.intent.action.LOCK_DEVICE"

    goto :goto_5a

    :cond_45
    const-string v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v1, "miui.intent.action.WIPE_DATA"

    goto :goto_5a

    :cond_50
    const-string v2, "d"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v1, "miui.intent.action.DISCARD_FIND_DEVICE_TOKEN"

    :cond_5a
    :goto_5a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_76

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaomi.finddevice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_76

    const-string v2, "com.miui.cloudservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_76
    return-void
.end method

.method private static transferToFindDevice(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "power"

    move-object/from16 v12, p1

    invoke-virtual {v12, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-class v4, Lmiui/provider/MiCloudSmsCmd;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lmiui/content/ExtraIntent;->INTENT_FIND_DEVICE_V2_CMD_RECEIVER:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v14, v4

    const-string v4, "android.intent.extra.finddevice.command_type"

    const-string v5, "sms"

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.from_address"

    invoke-virtual {v14, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.from_slotId"

    move/from16 v15, p4

    invoke-virtual {v14, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.from_subId"

    move/from16 v11, p5

    invoke-virtual {v14, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.finddevice.command"

    invoke-virtual {v14, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_4c

    const-string v4, "android.intent.extra.finddevice.intercept_sms_intent"

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4c
    new-instance v7, Lmiui/provider/MiCloudSmsCmd$1;

    invoke-direct {v7, v1, v2, v13}, Lmiui/provider/MiCloudSmsCmd$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-string v6, "miui.cloud.finddevice.RECEIVE_COMMAND"

    move-object/from16 v4, p1

    move-object v5, v14

    move-object/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static transferToOldVersionFindDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    array-length v2, v1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4e

    const/4 v2, 0x0

    aget-object v4, v1, v2

    const-string v5, "mfc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1a

    goto :goto_4e

    :cond_1a
    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v12, v1, v5

    const/4 v5, 0x3

    aget-object v13, v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "k"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_34

    aget-object v5, v1, v8

    aget-object v3, v1, v3

    move-object v14, v5

    goto :goto_37

    :cond_34
    aget-object v3, v1, v8

    move-object v14, v5

    :goto_37
    const-string v5, "##"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v3, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p0

    move-object v6, v12

    move-object v7, v13

    move-object v8, v4

    move-object v9, v14

    move-object v10, v2

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lmiui/provider/MiCloudSmsCmd;->sendOldVersionCommandToFindDeviceService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    :goto_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad find device command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiCloudSmsCmd"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
