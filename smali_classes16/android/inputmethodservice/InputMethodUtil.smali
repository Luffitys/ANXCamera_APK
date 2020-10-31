.class public Landroid/inputmethodservice/InputMethodUtil;
.super Ljava/lang/Object;
.source "InputMethodUtil.java"


# static fields
.field public static final CLIPBOARD_TYPE_CLOUD:I = 0x1

.field public static final CLIPBOARD_TYPE_SYSTEM:I = 0x0

.field public static final CLIPBOARD_TYPE_TAOBAO:I = 0x2

.field public static final CLIPBOARD_TYPE_URL:I = 0x3

.field public static final CLOUD_SHOW_NONE:I = 0x2

.field public static final CLOUD_SHOW_POP_VIEW:I = 0x1

.field public static final CLOUD_SHOW_RED_POINT:I = 0x0

.field private static final ENABLE_LOAD_INPUT_METHOD_BOTTOM_PLUGIN:Ljava/lang/String; = "enable_load_input_method_bottom_plugin"

.field public static final ENABLE_MIUI_QUICK_PASTE:Ljava/lang/String; = "enable_miui_quick_paste"

.field public static final ENABLE_QUICK_PASTE_TAOBAO:Ljava/lang/String; = "enable_quick_paste_taobao"

.field public static final ENABLE_QUICK_PASTE_URL:Ljava/lang/String; = "enable_quick_paste_url"

.field public static final FULL_SCREEN_KEYBOARD_MIDDLE_FUNCTION:Ljava/lang/String; = "full_screen_keyboard_middle_function"

.field public static final GUIDE_SHOW_AFTER_IME_SHOW_TIMES:I = 0x8

.field public static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field public static final INPUT_METHOD_CLOUD_CLIPBOARD_QUICK_PASTE_MODE:Ljava/lang/String; = "input_method_cloud_clipboard_quick_paste_mode"

.field private static final KET_SAVE_CLIPBOARD_CIPHER_TEXT_METHOD:Ljava/lang/String; = "saveClipboardCipherText"

.field private static final KEY_CLEAR_OLD_CLIPBOARD_CONTENT_METHOD:Ljava/lang/String; = "clearOldClipboardContent"

.field private static final KEY_GET_CLIPBOARD_LIST_METHOD:Ljava/lang/String; = "getClipboardList"

.field private static final KEY_GET_CLOUD_CONTENT_METHOD:Ljava/lang/String; = "getCloudContent"

.field public static final KEY_INPUT_METHOD_GUIDE_PAGE_SHOW_VALUE:Ljava/lang/String; = "input_method_guide_page_show_value"

.field public static final KEY_INPUT_METHOD_TAOBAO_CMD_ENABLE:Ljava/lang/String; = "input_method_taobao_cmd_enable"

.field public static final KEY_INPUT_METHOD_TAOBAO_CMD_RULE:Ljava/lang/String; = "input_method_taobao_cmd_rule"

.field private static final KEY_OLD_CLIPBOARD_NEED_CLEAR:Ljava/lang/String; = "old_clipboard_content_need_clear"

.field private static final KEY_SECURITY_CENTER_INPUT_PROVIDER_URI:Ljava/lang/String; = "content://com.miui.input.provider"

.field private static final KEY_WRITE_SYSTEM_VALUE_BY_SECURITY_CENTER:Ljava/lang/String; = "writeSystemValueBySecurityCenter"

.field public static final MIUI_CLICK_CLIP_ICON_NO_NEED_SAVE:Ljava/lang/String; = "miui_click_clip_icon_no_need_save"

.field public static final MIUI_INPUT_NO_NEED_SHOW_POP:Ljava/lang/String; = "miui_input_no_need_show_pop"

.field private static final SEND_SECURITY_CENTER_WRITE_KEY:Ljava/lang/String; = "write_key"

.field private static final SEND_SECURITY_CENTER_WRITE_VALUE:Ljava/lang/String; = "write_value"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtil"

.field public static final THIRTY_SECONDS_TIME_INTERVAL:J = 0x7530L

.field private static final TWO_DAYS_TIME_INTERVAL:J = 0xa4cb800L

.field public static final USE_GESTURE_VERSION_THREE:Ljava/lang/String; = "use_gesture_version_three"

.field public static sBottomAreaHeight:I

.field private static sBottomAreaMargin:I

.field public static sCanShowGuideView:Z

.field public static sCanShowMiuiBottom:Z

.field public static sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

.field public static sIsGestureLineEnable:Z

.field public static sIsGestureLineSupport:Z

.field public static sIsMoveCursorEnable:Z

.field public static sIsSupportLinearMotorVibrate:Z

.field public static sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

.field public static sNavigationBarFullScreenValue:Z

.field public static sQuickPasteTaobaoEnable:Z

.field public static sQuickPasteUrlEnable:Z

.field public static sScreenHeight:I

.field public static sScreenWidth:I

.field public static sTaobaoCmdEnable:Z

.field public static sTaobaoCmdRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineSupport:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineEnable:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    const/4 v1, -0x1

    sput v1, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    sput v1, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    sput v0, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaMargin:I

    const/4 v1, 0x1

    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteUrlEnable:Z

    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteTaobaoEnable:Z

    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdEnable:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsMoveCursorEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClipboard(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contentToAdd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentLabel"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_14
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "saveClipboardCipherText"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string v3, "addClipboard call method error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void
.end method

.method private static callSecurityCenterToWrite(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "callSecurityCenterToWrite"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/inputmethodservice/InputMethodUtil$1;

    invoke-direct {v2, p0, p2, p1}, Landroid/inputmethodservice/InputMethodUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public static clearOldClipboardContent(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "old_clipboard_content_need_clear"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move v2, v1

    :cond_10
    move v0, v2

    if-nez v0, :cond_19

    const/4 v1, 0x0

    const-string v2, "clearOldClipboardContent"

    invoke-static {p0, v1, v2}, Landroid/inputmethodservice/InputMethodUtil;->callSecurityCenterToWrite(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static getCheckMoreViewBottomMargin(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v0

    const v1, 0x1106004a

    invoke-static {p0, v1}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->getDimenPx(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getClipboardData(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.input.provider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getClipboardList"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_2b

    const-string/jumbo v5, "savedClipboard"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_2b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-static {p0, v4, v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->getNoExpiredData(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_37

    move-object v2, v5

    :cond_36
    goto :goto_3f

    :catch_37
    move-exception v3

    const-string v4, "InputMethodUtil"

    const-string v5, "getClipboardData call method error."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-object v2
.end method

.method public static getClipboardQuickPasteEnable(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_quick_paste"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static getCloudClipboardQuickPasteMode(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_cloud_clipboard_quick_paste_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCloudContent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getCloudContent"

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_21

    const-string v2, "cloudContent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-object v0, v2

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string v3, "getCloudContent call error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-object v0
.end method

.method public static getGestureLineHeight(Landroid/content/Context;)I
    .registers 3

    invoke-static {}, Landroid/inputmethodservice/InputMethodUtil;->isShowNavigationHandle()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getNoExpiredData(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/inputmethodservice/InputMethodUtil;->jsonToBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "InputMethodUtil"

    if-nez v1, :cond_12

    const-string v1, "get saved clipboard list size is 0."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_12
    :try_start_12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v5}, Landroid/inputmethodservice/ClipboardContentModel;->getTime()J

    move-result-wide v6

    sub-long v8, p2, v6

    const-wide/32 v10, 0xa4cb800

    cmp-long v10, v8, v10

    if-lez v10, :cond_5b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no remain time delete : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/inputmethodservice/ClipboardContentModel;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_62

    :cond_5b
    invoke-virtual {v5}, Landroid/inputmethodservice/ClipboardContentModel;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_62
    goto :goto_1c

    :cond_63
    if-eqz v3, :cond_68

    invoke-static {p0, v1}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardJsonArray(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_68} :catch_69

    :cond_68
    goto :goto_6f

    :catch_69
    move-exception v1

    const-string v3, "getNoExpiredData,parse JSON error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6f
    return-object v0
.end method

.method public static getPopupWindowBottomMargin(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaHeight:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    sget v3, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    return v1

    :cond_e
    goto :goto_2b

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Version failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodUtil"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static hideMoveCursorGuideView(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "write_key"

    const-string v2, "hide_guide_view"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "write_value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "writeSystemValueBySecurityCenter"

    invoke-static {p0, v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->callSecurityCenterToWrite(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static isEnableLoadImeBottomPlugin(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_load_input_method_bottom_plugin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static isGuideViewCanShow(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_guide_page_show_value"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static isShowNavigationHandle()Z
    .registers 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineSupport:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineEnable:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isSupportLinearMotorVibrate()Z
    .registers 2

    const-string/jumbo v0, "sys.haptic.motor"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "linear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static jsonToBean(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_21

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-static {v3}, Landroid/inputmethodservice/ClipboardContentModel;->fromJSONObject(Lorg/json/JSONObject;)Landroid/inputmethodservice/ClipboardContentModel;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_22

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string v3, "jsonToBean,parse JSON error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-object v0
.end method

.method public static resetMoveCursorParams(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsMoveCursorEnable:Z

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    invoke-virtual {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->initTouchParams()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodUtil;->showHandleView(Landroid/content/Context;Z)V

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setVisibility(I)V

    :cond_1e
    return-void
.end method

.method private static setClipboardJsonArray(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsonArray"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "saveClipboardCipherText"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_29

    :catch_20
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string/jumbo v3, "setClipboardJsonArray save clipboard words error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

.method public static setClipboardModelList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v2}, Landroid/inputmethodservice/ClipboardContentModel;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardJsonArray(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_29

    :catch_20
    move-exception v0

    const-string v1, "InputMethodUtil"

    const-string/jumbo v2, "setClipboardModelList,bean to toJSONObject error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

.method public static setContentToClip(Landroid/content/Context;Landroid/inputmethodservice/ClipboardContentModel;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    if-eqz v1, :cond_17

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 v3, 0x1

    return v3

    :cond_17
    const-string v3, "InputMethodUtil"

    const-string v4, "ClipboardManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method public static showHandleView(Landroid/content/Context;Z)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "write_key"

    const-string/jumbo v2, "show_editor_handle"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "write_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "writeSystemValueBySecurityCenter"

    invoke-static {p0, v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->callSecurityCenterToWrite(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    :cond_8
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    goto :goto_38

    :catch_14
    move-exception v0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    invoke-interface {v1, p3, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start activity error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public static startBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "InputMethodUtil"

    const-string v1, "get clipboard url is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, p2, v0, p3}, Landroid/inputmethodservice/InputMethodUtil;->startActivity(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static startTaobao(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Landroid/inputmethodservice/InputMethodUtil;->startActivity(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static updateBottomMargin(I)V
    .registers 1

    sput p0, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaMargin:I

    return-void
.end method

.method public static updateGestureLineEnable(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineEnable:Z

    return-void
.end method

.method public static updateGestureLineSupport(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_gesture_version_three"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineSupport:Z

    return-void
.end method

.method public static updateTaoBaoCmdEnable(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_taobao_cmd_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdEnable:Z

    return-void
.end method

.method public static updateTaoBaoCmdRule(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_taobao_cmd_rule"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdRule:Ljava/lang/String;

    return-void
.end method

.method public static updateTaobaoQuickPasteEnable(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_quick_paste_taobao"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteTaobaoEnable:Z

    return-void
.end method

.method public static updateUrlQuickPasteEnable(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_quick_paste_url"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteUrlEnable:Z

    return-void
.end method
