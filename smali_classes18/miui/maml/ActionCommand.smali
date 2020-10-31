.class public abstract Lmiui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$LoopCommand;,
        Lmiui/maml/ActionCommand$MultiCommand;,
        Lmiui/maml/ActionCommand$IfCommand;,
        Lmiui/maml/ActionCommand$FieldCommand;,
        Lmiui/maml/ActionCommand$MethodCommand;,
        Lmiui/maml/ActionCommand$BaseMethodCommand;,
        Lmiui/maml/ActionCommand$ObjVar;,
        Lmiui/maml/ActionCommand$VideoCommand;,
        Lmiui/maml/ActionCommand$FunctionPerformCommand;,
        Lmiui/maml/ActionCommand$ActionPerformCommand;,
        Lmiui/maml/ActionCommand$EaseTypeCommand;,
        Lmiui/maml/ActionCommand$FolmeCommand;,
        Lmiui/maml/ActionCommand$AnimConfigCommand;,
        Lmiui/maml/ActionCommand$AnimStateCommand;,
        Lmiui/maml/ActionCommand$AnimationCommand;,
        Lmiui/maml/ActionCommand$TickListenerCommand;,
        Lmiui/maml/ActionCommand$GraphicsCommand;,
        Lmiui/maml/ActionCommand$SensorBinderCommand;,
        Lmiui/maml/ActionCommand$TargetCommand;,
        Lmiui/maml/ActionCommand$AnimationProperty;,
        Lmiui/maml/ActionCommand$VisibilityProperty;,
        Lmiui/maml/ActionCommand$PropertyCommand;,
        Lmiui/maml/ActionCommand$DelayCommand;,
        Lmiui/maml/ActionCommand$ConditionCommand;,
        Lmiui/maml/ActionCommand$ExternCommand;,
        Lmiui/maml/ActionCommand$SoundCommand;,
        Lmiui/maml/ActionCommand$IntentCommand;,
        Lmiui/maml/ActionCommand$VariableBinderCommand;,
        Lmiui/maml/ActionCommand$VariableAssignmentCommand;,
        Lmiui/maml/ActionCommand$FrameRateCommand;,
        Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/maml/ActionCommand$DataSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiEnableAsyncTask;,
        Lmiui/maml/ActionCommand$WifiStateTracker;,
        Lmiui/maml/ActionCommand$StateTracker;,
        Lmiui/maml/ActionCommand$OnOffCommandHelper;,
        Lmiui/maml/ActionCommand$RingModeCommand;,
        Lmiui/maml/ActionCommand$ModeToggleHelper;,
        Lmiui/maml/ActionCommand$NotificationReceiver;,
        Lmiui/maml/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final PERFORMANCE_DEBUG_LOG:Z = false

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_69

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_69

    :cond_e
    new-instance v0, Lmiui/maml/util/Variable;

    invoke-direct {v0, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-static {p0, p1, p2}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v1

    return-object v1

    :cond_1e
    invoke-virtual {v0}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RingMode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v1, Lmiui/maml/ActionCommand$RingModeCommand;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ActionCommand$RingModeCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v1

    :cond_30
    const-string v3, "Wifi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    new-instance v1, Lmiui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v1

    :cond_3e
    const-string v3, "Data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    new-instance v1, Lmiui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ActionCommand$DataSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v1

    :cond_4c
    const-string v3, "Bluetooth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    new-instance v1, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v1

    :cond_5a
    const-string v3, "UsbStorage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    new-instance v1, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v1

    :cond_68
    return-object v1

    :cond_69
    :goto_69
    return-object v1
.end method

.method public static create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "condition"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "delayCondition"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    const-string v3, "delay"

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v3, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "ActionCommand"

    sparse-switch v10, :sswitch_data_242

    :cond_37
    goto/16 :goto_150

    :sswitch_39
    const-string v10, "LoopCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0xd

    goto/16 :goto_150

    :sswitch_45
    const-string v10, "FunctionCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x13

    goto/16 :goto_150

    :sswitch_51
    const-string v10, "FolmeCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x10

    goto/16 :goto_150

    :sswitch_5d
    const-string v10, "BinderCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x2

    goto/16 :goto_150

    :sswitch_68
    const-string v10, "AnimStateCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x17

    goto/16 :goto_150

    :sswitch_74
    const-string v10, "VibrateCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x6

    goto/16 :goto_150

    :sswitch_7f
    const-string v10, "FieldCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x9

    goto/16 :goto_150

    :sswitch_8b
    const-string v10, "IfCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x14

    goto/16 :goto_150

    :sswitch_97
    const-string v10, "SensorCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x15

    goto/16 :goto_150

    :sswitch_a3
    const-string v10, "VideoCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x18

    goto/16 :goto_150

    :sswitch_af
    const-string v10, "VariableCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x1

    goto/16 :goto_150

    :sswitch_ba
    const-string v10, "AnimationCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0xe

    goto/16 :goto_150

    :sswitch_c6
    const-string v10, "GroupCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0xc

    goto/16 :goto_150

    :sswitch_d2
    const-string v10, "ExternCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x5

    goto/16 :goto_150

    :sswitch_dd
    const-string v10, "MethodCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x8

    goto/16 :goto_150

    :sswitch_e9
    const-string v10, "FrameRateCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x7

    goto :goto_150

    :sswitch_f3
    const-string v10, "MultiCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0xb

    goto :goto_150

    :sswitch_fe
    const-string v10, "EaseTypeCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x11

    goto :goto_150

    :sswitch_109
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0xf

    goto :goto_150

    :sswitch_112
    const-string v10, "AnimConfigCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x16

    goto :goto_150

    :sswitch_11d
    const-string v10, "Command"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x0

    goto :goto_150

    :sswitch_127
    const-string v10, "TickListenerCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0x12

    goto :goto_150

    :sswitch_132
    const-string v10, "SoundCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x4

    goto :goto_150

    :sswitch_13c
    const-string v10, "IntentCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v9, 0x3

    goto :goto_150

    :sswitch_146
    const-string v10, "GraphicsCommand"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    const/16 v9, 0xa

    :goto_150
    packed-switch v9, :pswitch_data_2a8

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    invoke-virtual {v9, v11}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v9

    check-cast v9, Lmiui/maml/ObjectFactory$ActionCommandFactory;

    if-eqz v9, :cond_223

    invoke-virtual {v9, p1, p0}, Lmiui/maml/ObjectFactory$ActionCommandFactory;->create(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;

    move-result-object v3

    goto/16 :goto_223

    :pswitch_165
    new-instance v9, Lmiui/maml/ActionCommand$VideoCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$VideoCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_16d
    new-instance v9, Lmiui/maml/ActionCommand$AnimStateCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$AnimStateCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_175
    new-instance v9, Lmiui/maml/ActionCommand$AnimConfigCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$AnimConfigCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_17d
    new-instance v9, Lmiui/maml/ActionCommand$SensorBinderCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$SensorBinderCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_185
    new-instance v9, Lmiui/maml/ActionCommand$IfCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$IfCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_18d
    new-instance v9, Lmiui/maml/ActionCommand$FunctionPerformCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$FunctionPerformCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_195
    new-instance v9, Lmiui/maml/ActionCommand$TickListenerCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$TickListenerCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_19d
    new-instance v9, Lmiui/maml/ActionCommand$EaseTypeCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$EaseTypeCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_1a5
    new-instance v9, Lmiui/maml/ActionCommand$FolmeCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$FolmeCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_1ad
    new-instance v9, Lmiui/maml/ActionCommand$ActionPerformCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$ActionPerformCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_1b5
    new-instance v9, Lmiui/maml/ActionCommand$AnimationCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$AnimationCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_1bd
    new-instance v9, Lmiui/maml/ActionCommand$LoopCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$LoopCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_1c5
    new-instance v9, Lmiui/maml/ActionCommand$MultiCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto/16 :goto_223

    :pswitch_1cd
    new-instance v9, Lmiui/maml/ActionCommand$GraphicsCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$GraphicsCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1d4
    new-instance v9, Lmiui/maml/ActionCommand$FieldCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$FieldCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1db
    new-instance v9, Lmiui/maml/ActionCommand$MethodCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$MethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1e2
    new-instance v9, Lmiui/maml/ActionCommand$FrameRateCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$FrameRateCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1e9
    new-instance v9, Lmiui/maml/VibrateCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/VibrateCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1f0
    new-instance v9, Lmiui/maml/ActionCommand$ExternCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$ExternCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1f7
    new-instance v9, Lmiui/maml/ActionCommand$SoundCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$SoundCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_1fe
    new-instance v9, Lmiui/maml/ActionCommand$IntentCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$IntentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_205
    new-instance v9, Lmiui/maml/ActionCommand$VariableBinderCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_20c
    new-instance v9, Lmiui/maml/ActionCommand$VariableAssignmentCommand;

    invoke-direct {v9, p1, p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v3, v9

    goto :goto_223

    :pswitch_213
    const-string v9, "target"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "value"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lmiui/maml/ActionCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;

    move-result-object v3

    :cond_223
    :goto_223
    if-nez v3, :cond_226

    return-object v0

    :cond_226
    if-eqz v2, :cond_22e

    new-instance v0, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v0, v3, v2}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    move-object v3, v0

    :cond_22e
    cmp-long v0, v6, v4

    if-lez v0, :cond_238

    new-instance v0, Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {v0, v3, v6, v7}, Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V

    move-object v3, v0

    :cond_238
    if-eqz v1, :cond_240

    new-instance v0, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v0, v3, v1}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    move-object v3, v0

    :cond_240
    return-object v3

    nop

    :sswitch_data_242
    .sparse-switch
        -0x767f5de0 -> :sswitch_146
        -0x7264f711 -> :sswitch_13c
        -0x67717ca4 -> :sswitch_132
        -0x65361f86 -> :sswitch_127
        -0x642188d5 -> :sswitch_11d
        -0x48618908 -> :sswitch_112
        -0x44fc1feb -> :sswitch_109
        -0x3d79f23d -> :sswitch_fe
        -0x2dd3ac0e -> :sswitch_f3
        -0x1ab20542 -> :sswitch_e9
        -0xa89b8f6 -> :sswitch_dd
        0x24a136b -> :sswitch_d2
        0x2d9d57ec -> :sswitch_c6
        0x306e6347 -> :sswitch_ba
        0x364dd90f -> :sswitch_af
        0x39abc670 -> :sswitch_a3
        0x3ca48e11 -> :sswitch_97
        0x4719ff4e -> :sswitch_8b
        0x4a0cfd11 -> :sswitch_7f
        0x4aa3a2fc -> :sswitch_74
        0x60d7664b -> :sswitch_68
        0x69bdbe21 -> :sswitch_5d
        0x7190e150 -> :sswitch_51
        0x74683833 -> :sswitch_45
        0x77cb57e7 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_213
        :pswitch_20c
        :pswitch_205
        :pswitch_1fe
        :pswitch_1f7
        :pswitch_1f0
        :pswitch_1e9
        :pswitch_1e2
        :pswitch_1db
        :pswitch_1d4
        :pswitch_1cd
        :pswitch_1c5
        :pswitch_1c5
        :pswitch_1bd
        :pswitch_1b5
        :pswitch_1ad
        :pswitch_1a5
        :pswitch_19d
        :pswitch_195
        :pswitch_18d
        :pswitch_185
        :pswitch_17d
        :pswitch_175
        :pswitch_16d
        :pswitch_165
    .end packed-switch
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .registers 1

    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getScreenContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final getScreenContext()Lmiui/maml/ScreenContext;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenElement()Lmiui/maml/elements/ScreenElement;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method protected isExpressionsValid([Lmiui/maml/data/Expression;)Z
    .registers 4

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_e

    aget-object v1, p1, v0

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    :goto_e
    array-length v1, p1

    if-ne v0, v1, :cond_13

    const/4 v1, 0x1

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public perform()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->doPerform()V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method
