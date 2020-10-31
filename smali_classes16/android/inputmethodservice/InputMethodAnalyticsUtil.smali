.class public Landroid/inputmethodservice/InputMethodAnalyticsUtil;
.super Ljava/lang/Object;
.source "InputMethodAnalyticsUtil.java"


# static fields
.field private static final BUBBLE_CLICK:Ljava/lang/String; = "_bubble_click"

.field private static final BUBBLE_CLOSE:Ljava/lang/String; = "_bubble_close"

.field private static final BUBBLE_CLOSE_AUTO:Ljava/lang/String; = "_bubble_close_auto"

.field private static final BUBBLE_SHOW:Ljava/lang/String; = "_bubble_show"

.field private static final KEY_CLIPBOARD_BUBBLE:Ljava/lang/String; = "clip_bubble"

.field public static final KEY_CLIPBOARD_CLEAR_BUTTON_CLICK:Ljava/lang/String; = "clipboard_clear_button_click"

.field public static final KEY_CLIPBOARD_COPY_BUTTON_CLICK:Ljava/lang/String; = "clipboard_copy_button_click"

.field public static final KEY_CLIPBOARD_DELETE_BUTTON_CLICK:Ljava/lang/String; = "clipboard_delete_button_click"

.field public static final KEY_CLIPBOARD_ITEM_CLICK:Ljava/lang/String; = "clipboard_item_click"

.field private static final KEY_CLIPBOARD_MORE_FUNCTION:Ljava/lang/String; = "clip_more"

.field public static final KEY_CLIPBOARD_SETTINGS_BUTTON_CLICK:Ljava/lang/String; = "clipboard_settings_button_click"

.field private static final KEY_FUNCTION_CLICKED:Ljava/lang/String; = "click"

.field private static final KEY_INPUT_METHOD_ANALYTICS:Ljava/lang/String; = "input_method_analytics"

.field private static final KEY_INPUT_METHOD_PROVIDER_URI:Ljava/lang/String; = "content://com.miui.input.provider"

.field private static final KEY_MOVE_CURSOR:Ljava/lang/String; = "move_cursor"

.field public static final KEY_MOVE_CURSOR_GUIDE_VIEW_SHOW1:Ljava/lang/String; = "move_cursor_guide_view_show1"

.field public static final KEY_MOVE_CURSOR_GUIDE_VIEW_SHOW2:Ljava/lang/String; = "move_cursor_guide_view_show2"

.field public static final KEY_MOVE_CURSOR_SEEK_BAR_SHOW:Ljava/lang/String; = "move_cursor_seek_bar_show"

.field public static final KEY_PHRASE_ITEM_CLICK:Ljava/lang/String; = "phrase_item_click"

.field private static final TAG:Ljava/lang/String; = "InputMethodAnalytics"

.field private static final TRACK_KEY_MULTIFUNCTIONAL_KEYBOARD_CLICK:Ljava/lang/String; = "multifunctional_keyboard_click"

.field private static final TRACK_KEY_NOTIFICATION_PANEL_KEYBOARD_SWITCH:Ljava/lang/String; = "notification_panel_keyboard_switch"

.field private static sClipboardBubbleType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    const-string v1, "common"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    const-string/jumbo v1, "taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClipboardBubbleAutoCloseRecord(Landroid/content/Context;I)V
    .registers 5

    if-ltz p1, :cond_2d

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_2d

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bubble_close_auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clip_bubble"

    const-string/jumbo v2, "multifunctional_keyboard_click"

    invoke-static {p0, v1, v0, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClipboardBubbleAutoCloseRecord error. clipType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addClipboardBubbleClickRecord(Landroid/content/Context;I)V
    .registers 5

    if-ltz p1, :cond_2d

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_2d

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bubble_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clip_bubble"

    const-string/jumbo v2, "multifunctional_keyboard_click"

    invoke-static {p0, v1, v0, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClipboardBubbleClickRecord error. clipType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addClipboardBubbleCloseRecord(Landroid/content/Context;I)V
    .registers 5

    if-ltz p1, :cond_2d

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_2d

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bubble_close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clip_bubble"

    const-string/jumbo v2, "multifunctional_keyboard_click"

    invoke-static {p0, v1, v0, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClipboardBubbleCloseRecord error. clipType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addClipboardBubbleShowRecord(Landroid/content/Context;I)V
    .registers 5

    if-ltz p1, :cond_2d

    sget-object v0, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_2d

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->sClipboardBubbleType:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bubble_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clip_bubble"

    const-string/jumbo v2, "multifunctional_keyboard_click"

    invoke-static {p0, v1, v0, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClipboardBubbleShowRecord error. clipType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addClipboardMoreRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "clip_more"

    const-string/jumbo v1, "multifunctional_keyboard_click"

    invoke-static {p0, v0, p1, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "click"

    const-string/jumbo v1, "multifunctional_keyboard_click"

    invoke-static {p0, v0, p1, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputMethodAnalytics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clickKey"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "clickValue"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "recordKey"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static addMoveCursorRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "move_cursor"

    const-string/jumbo v1, "multifunctional_keyboard_click"

    invoke-static {p0, v0, p1, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addNotificationPanelRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "click"

    const-string/jumbo v1, "notification_panel_keyboard_switch"

    invoke-static {p0, v0, p1, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
