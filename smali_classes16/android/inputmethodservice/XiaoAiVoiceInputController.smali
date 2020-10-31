.class public Landroid/inputmethodservice/XiaoAiVoiceInputController;
.super Ljava/lang/Object;
.source "XiaoAiVoiceInputController.java"


# static fields
.field private static final INPUT_METHOD_CALLBACK:Ljava/lang/String; = "inputMethodCallBack"

.field private static final MESSAGE_IS_SEND:Ljava/lang/String; = "message_is_send"

.field private static final TAG:Ljava/lang/String; = "XiaoAiVoiceInputController"

.field private static final VOICE_INPUT_BOTTOM_HEIGHT:Ljava/lang/String; = "input_method_bottom_bar_height"

.field private static final VOICE_INPUT_BUTTON_DOWN:Ljava/lang/String; = "com.xiaomi.inputmethod.ACTION_INPUT_METHOD_BUTTON_DOWN"

.field private static final VOICE_INPUT_BUTTON_DOWNTIME:Ljava/lang/String; = "down_time"

.field private static final VOICE_INPUT_BUTTON_UP:Ljava/lang/String; = "com.xiaomi.inputmethod.ACTION_INPUT_METHOD_BUTTON_UP"

.field private static final VOICE_INPUT_BUTTON_UPTIME:Ljava/lang/String; = "up_time"

.field private static final VOICE_INPUT_DISAPPEAR:Ljava/lang/String; = "com.xiaomi.inputmethod.ACTION_INPUT_METHOD_BUTTON_DISAPPEAR"

.field private static final VOICE_INPUT_METHOD_HEIGHT:Ljava/lang/String; = "input_method_height"

.field private static final XIAOAI_ACTION_NAME:Ljava/lang/String; = "com.xiaomi.inputmethod.IVoiceIMInterface"

.field public static final XIAOAI_PACKAGE_NAME:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final XIAOAI_SUPPORT_BIND_VERSIONCODE:I = 0x122e05b0

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static sIsBind:Z

.field private static sIsSupportBindService:Z

.field private static sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

.field private static sXiaoAiVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    new-instance v0, Landroid/inputmethodservice/XiaoAiVoiceInputController$1;

    invoke-direct {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/inputmethod/IVoiceIMInterface;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/inputmethod/IVoiceIMInterface;)Lcom/xiaomi/inputmethod/IVoiceIMInterface;
    .registers 1

    sput-object p0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsBind:Z

    return p0
.end method

.method public static bindXiaoAiService(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsBind:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.inputmethod.IVoiceIMInterface"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/inputmethodservice/XiaoAiVoiceInputController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sput-boolean v1, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsBind:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindXiaoAiService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XiaoAiVoiceInputController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static disappearStartService(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.inputmethod.ACTION_INPUT_METHOD_BUTTON_DISAPPEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->startXiaoAiService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static getXiaoAiVersionCode(Landroid/content/Context;)V
    .registers 3

    sget v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const-string v0, "com.miui.voiceassist"

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    :cond_d
    sget v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    const v1, 0x122e05b0

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    sput-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    return-void
.end method

.method public static inputMethodDisappear(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    const-string v1, "XiaoAiVoiceInputController"

    if-eqz v0, :cond_26

    :try_start_6
    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v0, :cond_10

    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    invoke-interface {v0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface;->keyboardDisappear()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    return-void

    :cond_10
    goto :goto_26

    :catch_11
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputMethodDisappear RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputMethodDisappear. XiaoAiVersionCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".sXiaoAiService : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->disappearStartService(Landroid/content/Context;)V

    return-void
.end method

.method private static sendActionDownStartService(Landroid/content/Context;JLandroid/os/RemoteCallback;II)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.inputmethod.ACTION_INPUT_METHOD_BUTTON_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "down_time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "input_method_height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "input_method_bottom_bar_height"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "inputMethodCallBack"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v0, p0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->startXiaoAiService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private static sendActionUpStartService(Landroid/content/Context;J)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.inputmethod.ACTION_INPUT_METHOD_BUTTON_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "up_time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "message_is_send"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->startXiaoAiService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static sendMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    if-eqz v0, :cond_26

    :try_start_4
    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v0, :cond_d

    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    invoke-interface {v0, p0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface;->setMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_26

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMotionEvent,RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XiaoAiVoiceInputController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public static sendVoiceActionDown(Landroid/content/Context;JLandroid/os/RemoteCallback;II)V
    .registers 14

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    const-string v1, "XiaoAiVoiceInputController"

    if-eqz v0, :cond_2b

    :try_start_6
    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v0, :cond_14

    sget-object v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/inputmethod/IVoiceIMInterface;->voiceButtonDown(JLandroid/os/RemoteCallback;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_15

    return-void

    :cond_14
    goto :goto_2b

    :catch_15
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVoiceActionDown,RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendActionDownStartService. XiaoAiVersionCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".sXiaoAiService : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sendActionDownStartService(Landroid/content/Context;JLandroid/os/RemoteCallback;II)V

    return-void
.end method

.method public static sendVoiceActionUp(Landroid/content/Context;J)V
    .registers 7

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    const-string v1, "XiaoAiVoiceInputController"

    if-eqz v0, :cond_27

    :try_start_6
    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v0, :cond_10

    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/inputmethod/IVoiceIMInterface;->voiceButtonUP(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    return-void

    :cond_10
    goto :goto_27

    :catch_11
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVoiceActionUp,RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVoiceActionUp. XiaoAiVersionCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".sXiaoAiService : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sendActionUpStartService(Landroid/content/Context;J)V

    return-void
.end method

.method private static startXiaoAiService(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "com.miui.voiceassist"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    const-string v1, "XiaoAiVoiceInputController"

    const-string v2, "XiaoAi service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void
.end method

.method public static unBindXiaoAiService(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsSupportBindService:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v0, :cond_20

    sget-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsBind:Z

    if-eqz v0, :cond_20

    sget-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sXiaoAiService:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/XiaoAiVoiceInputController;->sIsBind:Z

    const-string v0, "XiaoAiVoiceInputController"

    const-string/jumbo v1, "unBindXiaoAiService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method
