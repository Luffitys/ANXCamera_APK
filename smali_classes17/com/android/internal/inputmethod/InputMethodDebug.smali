.class public final Lcom/android/internal/inputmethod/InputMethodDebug;
.super Ljava/lang/Object;
.source "InputMethodDebug.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static softInputDisplayReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "HIDE_RECENTS_ANIMATION"

    return-object v0

    :pswitch_18
    const-string v0, "HIDE_DOCKED_STACK_ATTACHED"

    return-object v0

    :pswitch_1b
    const-string v0, "HIDE_POWER_BUTTON_GO_HOME"

    return-object v0

    :pswitch_1e
    const-string v0, "HIDE_SETTINGS_ON_CHANGE"

    return-object v0

    :pswitch_21
    const-string v0, "HIDE_RESET_SHELL_COMMAND"

    return-object v0

    :pswitch_24
    const-string v0, "HIDE_ALWAYS_HIDDEN_STATE"

    return-object v0

    :pswitch_27
    const-string v0, "HIDE_STATE_HIDDEN_FORWARD_NAV"

    return-object v0

    :pswitch_2a
    const-string v0, "HIDE_UNSPECIFIED_WINDOW"

    return-object v0

    :pswitch_2d
    const-string v0, "HIDE_INVALID_USER"

    return-object v0

    :pswitch_30
    const-string v0, "HIDE_SWITCH_USER"

    return-object v0

    :pswitch_33
    const-string v0, "SHOW_SETTINGS_ON_CHANGE"

    return-object v0

    :pswitch_36
    const-string v0, "SHOW_STATE_ALWAYS_VISIBLE"

    return-object v0

    :pswitch_39
    const-string v0, "SHOW_STATE_VISIBLE_FORWARD_NAV"

    return-object v0

    :pswitch_3c
    const-string v0, "SHOW_AUTO_EDITOR_FORWARD_NAV"

    return-object v0

    :pswitch_3f
    const-string v0, "HIDE_MY_SOFT_INPUT"

    return-object v0

    :pswitch_42
    const-string v0, "HIDE_SOFT_INPUT"

    return-object v0

    :pswitch_45
    const-string v0, "SHOW_MY_SOFT_INPUT"

    return-object v0

    :pswitch_48
    const-string v0, "ATTACH_NEW_INPUT"

    return-object v0

    :pswitch_4b
    const-string v0, "SHOW_SOFT_INPUT"

    return-object v0

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static softInputModeToString(I)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0xf

    and-int/lit16 v2, p0, 0xf0

    and-int/lit16 v3, p0, 0x100

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    const-string v5, ")"

    if-eqz v1, :cond_5c

    if-eq v1, v4, :cond_56

    const/4 v4, 0x2

    if-eq v1, v4, :cond_50

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4a

    const/4 v4, 0x4

    if-eq v1, v4, :cond_44

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_UNKNOWN("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_62

    :cond_3e
    const-string v4, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_62

    :cond_44
    const-string v4, "STATE_VISIBLE"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_62

    :cond_4a
    const-string v4, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_62

    :cond_50
    const-string v4, "STATE_HIDDEN"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_62

    :cond_56
    const-string v4, "STATE_UNCHANGED"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_62

    :cond_5c
    const-string v4, "STATE_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    nop

    :goto_62
    if-eqz v2, :cond_9a

    const/16 v4, 0x10

    if-eq v2, v4, :cond_94

    const/16 v4, 0x20

    if-eq v2, v4, :cond_8e

    const/16 v4, 0x30

    if-eq v2, v4, :cond_88

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADJUST_UNKNOWN("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_a0

    :cond_88
    const-string v4, "ADJUST_NOTHING"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_a0

    :cond_8e
    const-string v4, "ADJUST_PAN"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_a0

    :cond_94
    const-string v4, "ADJUST_RESIZE"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_a0

    :cond_9a
    const-string v4, "ADJUST_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    nop

    :goto_a0
    if-eqz v3, :cond_a7

    const-string v4, "IS_FORWARD_NAVIGATION"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_a7
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static startInputFlagsToString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    const-string v1, "VIEW_HAS_FOCUS"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1a

    const-string v1, "IS_TEXT_EDITOR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_23

    const-string v1, "INITIAL_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_23
    const-string v1, "(none)"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static startInputReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "SESSION_CREATED_BY_IME"

    return-object v0

    :pswitch_18
    const-string v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_1b
    const-string v0, "ACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_1e
    const-string v0, "UNBOUND_FROM_IMMS"

    return-object v0

    :pswitch_21
    const-string v0, "BOUND_TO_IMMS"

    return-object v0

    :pswitch_24
    const-string v0, "CHECK_FOCUS"

    return-object v0

    :pswitch_27
    const-string v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    :pswitch_2a
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_WITHOUT_CONNECTION"

    return-object v0

    :pswitch_2d
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_WITH_CONNECTION"

    return-object v0

    :pswitch_30
    const-string v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    :pswitch_33
    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static unbindReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "SWITCH_USER"

    return-object v0

    :pswitch_18
    const-string v0, "SWITCH_IME_FAILED"

    return-object v0

    :pswitch_1b
    const-string v0, "NO_IME"

    return-object v0

    :pswitch_1e
    const-string v0, "DISCONNECT_IME"

    return-object v0

    :pswitch_21
    const-string v0, "SWITCH_IME"

    return-object v0

    :pswitch_24
    const-string v0, "SWITCH_CLIENT"

    return-object v0

    :pswitch_27
    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method
