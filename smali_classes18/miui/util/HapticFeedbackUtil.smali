.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field public static final EFFECT_KEY_CALCULATOR:Ljava/lang/String; = "calculator"

.field public static final EFFECT_KEY_CLOCK_PICKER:Ljava/lang/String; = "clock_picker"

.field public static final EFFECT_KEY_CLOCK_SECOND:Ljava/lang/String; = "clock_second"

.field public static final EFFECT_KEY_COMPASS_CALIBRATION:Ljava/lang/String; = "compass_calibration"

.field public static final EFFECT_KEY_COMPASS_NORTH:Ljava/lang/String; = "compass_north"

.field public static final EFFECT_KEY_FLICK:Ljava/lang/String; = "flick"

.field public static final EFFECT_KEY_FLICK_LIGHT:Ljava/lang/String; = "flick_light"

.field public static final EFFECT_KEY_HOLD:Ljava/lang/String; = "hold"

.field public static final EFFECT_KEY_HOME_DROP_FINISH:Ljava/lang/String; = "home_drop_finish"

.field public static final EFFECT_KEY_HOME_PICKUP_START:Ljava/lang/String; = "home_pickup_start"

.field public static final EFFECT_KEY_LONG_PRESS:Ljava/lang/String; = "long_press"

.field public static final EFFECT_KEY_MESH_HEAVY:Ljava/lang/String; = "mesh_heavy"

.field public static final EFFECT_KEY_MESH_LIGHT:Ljava/lang/String; = "mesh_light"

.field public static final EFFECT_KEY_MESH_NORMAL:Ljava/lang/String; = "mesh_normal"

.field public static final EFFECT_KEY_PICKUP:Ljava/lang/String; = "pickup"

.field public static final EFFECT_KEY_POPUP_LIGHT:Ljava/lang/String; = "popup_light"

.field public static final EFFECT_KEY_POPUP_NORMAL:Ljava/lang/String; = "popup_normal"

.field public static final EFFECT_KEY_RECORDER_DELETE:Ljava/lang/String; = "recorder_delete"

.field public static final EFFECT_KEY_RECORDER_FINISH:Ljava/lang/String; = "recorder_finish"

.field public static final EFFECT_KEY_RECORDER_LIST:Ljava/lang/String; = "recorder_list"

.field public static final EFFECT_KEY_RECORDER_PAUSE:Ljava/lang/String; = "recorder_pause"

.field public static final EFFECT_KEY_RECORDER_PLAY:Ljava/lang/String; = "recorder_play"

.field public static final EFFECT_KEY_RECORDER_RECORD:Ljava/lang/String; = "recorder_record"

.field public static final EFFECT_KEY_RECORDER_RECORD_PAUSE:Ljava/lang/String; = "recorder_record_pause"

.field public static final EFFECT_KEY_RECORDER_REWIND:Ljava/lang/String; = "recorder_rewind"

.field public static final EFFECT_KEY_RECORDER_SLIDER:Ljava/lang/String; = "recorder_slider"

.field public static final EFFECT_KEY_RECORDER_STOP:Ljava/lang/String; = "recorder_stop"

.field public static final EFFECT_KEY_SCREEN_BUTTON_RECENT_TASK:Ljava/lang/String; = "screen_button_recent_task"

.field public static final EFFECT_KEY_SCREEN_BUTTON_VOICE_ASSIST:Ljava/lang/String; = "screen_button_voice_assist"

.field public static final EFFECT_KEY_SCROLL_EDGE:Ljava/lang/String; = "scroll_edge"

.field public static final EFFECT_KEY_SWITCH:Ljava/lang/String; = "switch"

.field public static final EFFECT_KEY_TAP_LIGHT:Ljava/lang/String; = "tap_light"

.field public static final EFFECT_KEY_TAP_NORMAL:Ljava/lang/String; = "tap_normal"

.field public static final EFFECT_KEY_TORCH_OFF:Ljava/lang/String; = "torch_off"

.field public static final EFFECT_KEY_TORCH_ON:Ljava/lang/String; = "torch_on"

.field public static final EFFECT_KEY_TRIGGER_DRAWER:Ljava/lang/String; = "trigger_drawer"

.field public static final EFFECT_KEY_VIRTUAL_KEY_DOWN:Ljava/lang/String; = "virtual_key_down"

.field public static final EFFECT_KEY_VIRTUAL_KEY_LONGPRESS:Ljava/lang/String; = "virtual_key_longpress"

.field public static final EFFECT_KEY_VIRTUAL_KEY_TAP:Ljava/lang/String; = "virtual_key_tap"

.field public static final EFFECT_KEY_VIRTUAL_KEY_UP:Ljava/lang/String; = "virtual_key_up"

.field private static final EFFECT_STRENGTH_DEFAULT:I = -0x64

.field private static final EFFECT_STRENGTH_STRONG:I = 0x2

.field private static final ID_TO_KEY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_IMMERSION_ENABLED:Z = false

.field private static final KEY_VIBRATE_EX_ENABLED:Ljava/lang/String; = "ro.haptic.vibrate_ex.enabled"

.field private static final LEVEL_FACTOR:[F

.field private static final LEVEL_SUFFIX:[Ljava/lang/String;

.field private static final PROPERTY_KEY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_MOTOR_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RTP_MIN_VALUE:I = 0x0

.field private static final RTP_V1_MAX_VALUE:I = 0xa0

.field private static final RTP_V2_MAX_VALUE:I = 0xac

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final VIRTUAL_RELEASED:I = 0x2

.field private static final sPatternId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsSupportLinearMotorVibrate:Z

.field private mIsSupportZLinearMotorVibrate:Z

.field private mLevel:I

.field private mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    const-string v0, ".weak"

    const-string v1, ".normal"

    const-string v2, ".strong"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_1e2

    sput-object v1, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "virtual_key_down"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const/4 v2, 0x0

    const-string v4, "virtual_key_longpress"

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v2, "virtual_key_tap"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v5, "virtual_key_up"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const/high16 v1, 0x10000000

    const-string v6, "tap_normal"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000001

    const-string v7, "tap_light"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000002

    const-string v8, "flick"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x1000000d

    const-string v9, "flick_light"

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000003

    const-string v10, "switch"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000004

    const-string v11, "mesh_heavy"

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000005

    const-string v12, "mesh_normal"

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000006

    const-string v13, "mesh_light"

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000007

    const-string v14, "long_press"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000008

    const-string v15, "popup_normal"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x10000009

    move-object/from16 v16, v15

    const-string v15, "popup_light"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x1000000a

    move-object/from16 v17, v15

    const-string v15, "pickup"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x1000000b

    move-object/from16 v18, v15

    const-string v15, "scroll_edge"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x1000000c

    move-object/from16 v19, v15

    const-string v15, "trigger_drawer"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const v1, 0x1000000e

    move-object/from16 v20, v15

    const-string v15, "hold"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.down"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.long.press"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    move-object/from16 v21, v4

    const-string v4, "sys.haptic.tap.normal"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    move-object/from16 v22, v2

    const-string v2, "sys.haptic.up"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.tap.light"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.flick"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.flick.light"

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.switch"

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.mesh.heavy"

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.mesh.normal"

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v2, "sys.haptic.mesh.light"

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.pickup"

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.scroll.edge"

    move-object/from16 v4, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.popup.normal"

    move-object/from16 v5, v16

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.popup.light"

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.trigger.drawer"

    move-object/from16 v4, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "sys.haptic.hold"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    return-void

    nop

    :array_1e2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_longPressVibePattern"

    const-string v2, "array"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v4, "config_virtualKeyVibePattern"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "config_keyboardTapVibePattern"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "compass_north"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "home_pickup_start"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v5, 0x1102002e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "recorder_delete"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v6, "recorder_finish"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v6, "recorder_list"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v5, 0x1102002d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "recorder_pause"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v6, "recorder_play"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v6, "recorder_record"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v6, "recorder_record_pause"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v6, 0x1102002f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "recorder_rewind"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v6, 0x11020030

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "recorder_slider"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v6, "recorder_stop"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen_button_recent_task"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen_button_voice_assist"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v5, 0x11020031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "torch_off"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v5, 0x11020032

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "torch_on"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_longpress"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_down"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_tap"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const v5, 0x11020033

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_up"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_102

    const/4 v0, 0x1

    const-string v1, "ro.haptic.default_level"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_104

    :cond_102
    sget v0, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    :goto_104
    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_11c

    return-void

    :cond_11c
    if-eqz p2, :cond_122

    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    goto :goto_131

    :cond_122
    new-instance v0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;-><init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    :goto_131
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportZLinearMotorVibrate()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getHapticFeedback(I)Landroid/os/VibrationEffect;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-eqz v2, :cond_36

    array-length v3, v2

    if-lez v3, :cond_36

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    long-to-int v3, v3

    invoke-static {v3}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    goto :goto_3d

    :cond_36
    const-string v3, "HapticFeedbackUtil"

    const-string v4, "vibrate: null or empty pattern"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method private getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    aget v3, v0, v2

    int-to-float v3, v3

    sget-object v4, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    iget v5, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    return-object v1
.end method

.method private isHapticsDisable()Z
    .registers 2

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isHapticFeedbackDisabled(Landroid/content/Context;)Z

    move-result v0

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

    const-string v0, "sys.haptic.motor"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "linear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSupportLinearMotorVibrate(I)Z
    .registers 5

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    return v3

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportMotorEffect(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v0, :cond_14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isSupportZLinearMotorVibrate()Z
    .registers 2

    const-string v0, "sys.haptic.motor"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zlinear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private loadPattern(Ljava/lang/String;)[J
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    iget v4, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_32
    if-nez v0, :cond_5f

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_48
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_54

    move v2, v3

    goto :goto_55

    :catch_54
    move-exception v3

    :goto_55
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    :cond_5f
    return-object v0
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    return-object v2
.end method


# virtual methods
.method public convertToMiuiHapticFeedback(I)Landroid/os/VibrationEffect;
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const v0, 0x10000005

    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->getHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public isSupportExtHapticFeedback(I)Z
    .registers 7

    iget-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0xa0

    const/4 v2, 0x1

    if-ltz p1, :cond_f

    if-gt p1, v0, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    if-le p1, v0, :cond_22

    const/16 v0, 0xac

    if-gt p1, v0, :cond_22

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "crux"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    if-nez v3, :cond_27

    if-eqz v0, :cond_28

    :cond_27
    move v1, v2

    :cond_28
    return v1
.end method

.method public isSupportedEffect(I)Z
    .registers 3

    const/4 v0, 0x3

    if-le p1, v0, :cond_14

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->isSupportMotorEffect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public performExtHapticFeedback(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticFeedbackUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1}, Lmiui/util/VibrateUtils;->vibrateExt(Landroid/os/Vibrator;I)Z

    move-result v0

    return v0

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;)Z
    .registers 4

    iget-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lmiui/util/VibrateUtils;->vibrateExt(Landroid/os/Vibrator;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public performHapticFeedback(IDLjava/lang/String;)Z
    .registers 16

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HapticFeedbackUtil"

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "effectId is not supported:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_26
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_2f

    return v3

    :cond_2f
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    instance-of v1, v1, Landroid/os/SystemVibrator;

    if-nez v1, :cond_3b

    const-string v1, "vibrate is not SystemVibrator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3b
    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-nez v1, :cond_46

    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    if-eqz v1, :cond_44

    goto :goto_46

    :cond_44
    move v1, v3

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v1, 0x1

    :goto_47
    if-nez v1, :cond_4f

    const-string v4, "not use PrebakedEffect"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v4, "reason is empty"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5b
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v4

    if-eqz v4, :cond_62

    return v3

    :cond_62
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    if-eqz v4, :cond_96

    array-length v5, v4

    if-nez v5, :cond_81

    goto :goto_96

    :cond_81
    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    move-object v5, v2

    check-cast v5, Landroid/os/SystemVibrator;

    aget-wide v2, v4, v3

    long-to-int v6, v2

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    move-wide v7, p2

    move-object v10, p4

    invoke-static/range {v5 .. v10}, Lmiui/util/VibrateUtils;->vibrate(Landroid/os/SystemVibrator;IDLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_96
    :goto_96
    const-string v5, "vibrate: null or empty pattern"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public performHapticFeedback(IZ)Z
    .registers 4

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(IZI)Z
    .registers 5

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Ljava/lang/String;Z)Z
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HapticFeedbackUtil"

    if-eqz v0, :cond_f

    const-string v0, "fail to get key"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_60

    array-length v3, v0

    if-nez v3, :cond_2e

    goto :goto_60

    :cond_2e
    invoke-direct {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportMotorEffect(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_47

    array-length v3, v0

    if-ge v3, v4, :cond_3e

    const-string v3, "fail to read strength id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3e
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    long-to-int v1, v1

    invoke-virtual {p0, p1, p2, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    move-result v2

    return v2

    :cond_47
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "andromeda"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v1, :cond_56

    goto :goto_59

    :cond_56
    const/16 v4, -0x64

    goto :goto_5a

    :cond_59
    :goto_59
    nop

    :goto_5a
    move v1, v4

    invoke-virtual {p0, p1, p2, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    move-result v2

    return v2

    :cond_60
    :goto_60
    const-string v3, "vibrate: null or empty pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public performHapticFeedback(Ljava/lang/String;ZI)Z
    .registers 9

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_13

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_44

    array-length v2, v0

    if-nez v2, :cond_32

    goto :goto_44

    :cond_32
    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    iget-boolean v3, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3d

    iget-boolean v3, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    if-eqz v3, :cond_3e

    :cond_3d
    move v1, v4

    :cond_3e
    const/16 v3, -0x64

    invoke-static {v2, v1, v0, p3, v3}, Lmiui/util/VibrateUtils;->vibrate(Landroid/os/Vibrator;Z[JII)V

    return v4

    :cond_44
    :goto_44
    const-string v2, "HapticFeedbackUtil"

    const-string v3, "vibrate: null or empty pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->unobserve()V

    :cond_7
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public updateImmersionSettings(Z)V
    .registers 2

    return-void
.end method

.method public updateSettings()V
    .registers 3

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getHapticFeedbackLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
