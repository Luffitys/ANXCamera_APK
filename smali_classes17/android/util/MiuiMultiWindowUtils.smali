.class public Landroid/util/MiuiMultiWindowUtils;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;
    }
.end annotation


# static fields
.field public static final ALREADY_IN_SMALL_FREEFORM:I = 0x3

.field public static final BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

.field public static final DECOR_CAPTIONVIEW_HEIGHT:F = 36.36f

.field static final ENABLE_WHITELIST:Z = false

.field private static final FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final FREEFORM_HOTSPOT_LEFT_BOTTOM:I = 0x3

.field public static final FREEFORM_HOTSPOT_LEFT_TOP:I = 0x1

.field public static final FREEFORM_HOTSPOT_NONE:I = -0x1

.field public static final FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

.field public static final FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

.field public static final FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_RIGHT_BOTTOM:I = 0x4

.field public static final FREEFORM_HOTSPOT_RIGHT_TOP:I = 0x2

.field public static final FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

.field public static final FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final FREEFORM_HOT_MARGIN:F

.field public static final FREEFORM_LANDCAPE_HEIGHT:I

.field public static final FREEFORM_LANDCAPE_LANDCAPE_RESERVE_MARGINS:F

.field public static final FREEFORM_LANDCAPE_RESERVE_MARGINS:F

.field public static final FREEFORM_LANDCAPE_WIDTH:I

.field public static final FREEFORM_PACKAGE_NAME:Ljava/lang/String; = "freeform_package_name"

.field public static final FREEFORM_PORTRAIT_HEIGHT:I

.field public static final FREEFORM_PORTRAIT_WIDTH:I

.field public static final FREEFORM_ROUND_CORNER:F

.field public static final FREEFORM_TO_LEFT:I

.field public static final FREEFORM_TO_TOP:I

.field public static final FREEFORM_WINDOW_CHANGED_SCALE:Ljava/lang/String; = "freeform_window_changed_scale"

.field public static final FREEFORM_WINDOW_SCALE:Ljava/lang/String; = "freeform_scale"

.field public static final GLOBAL_LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.mi.android.globallauncher"

.field public static final HOT_SPACE_BOTTOM_HEIGHT:I

.field public static final HOT_SPACE_BOTTOM_OFFSITE:I

.field public static final HOT_SPACE_TOP_OFFSITE:I

.field public static final KEY_FIRST_USE_FREEFORM:Ljava/lang/String; = "first_use_freeform"

.field public static final KEY_FIRST_USE_TIP_CONFIRM_TIMES:Ljava/lang/String; = "first_use_tip_confirm_times"

.field public static final KEY_FREEFORM_TIMESTAMPS:Ljava/lang/String; = "freeform_timestamps"

.field public static final KEY_FREEFORM_WINDOW_STATE:Ljava/lang/String; = "freeform_window_state"

.field public static final KEY_QUICKREPLY:Ljava/lang/String; = "quick_reply"

.field public static final LANDCAPE_FREEFORM_HEIGHT:I

.field public static final LANDCAPE_FREEFORM_WIDTH:I

.field public static final LANDCAPE_LANDCAPE_MAX_WIDTH:F = 470.91f

.field public static final LANDCAPE_LANDCAPE_MIN_WIDTH:F = 261.81f

.field public static final LANDCAPE_PORTRAIT_MAX_WIDTH:F = 370.91f

.field public static final LANDCAPE_PORTRAIT_MIN_WIDTH:F = 261.81f

.field public static final LANDCAPE_SMALL_FREEFORM_HEIGHT:F

.field public static final LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

.field public static final LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

.field public static final LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

.field public static final LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

.field public static final LANDCAPE_SMALL_FREEFORM_WIDTH:F

.field public static final MAX_LANDCAPE_WIDTH:F = 249.45f

.field public static final MAX_PORTRAIT_WIDTH:F = 370.91f

.field public static final MIN_LANDCAPE_WIDTH:F = 181.09f

.field public static final MIN_PORTRAIT_WIDTH:F = 181.09f

.field public static final MONKEY_PACKAGE_NAME:Ljava/lang/String; = "com.android.commands.monkey"

.field public static final MTBF_PACKAGE_NAME:Ljava/lang/String; = "com.phonetest.stresstest"

.field public static final NOTCH_MARGIN:I

.field public static final NO_AVALIABLE_APPLICATION:I = 0x2

.field public static final SLIDE_OUT_FINAL_POSITION_OFFSITE:I

.field public static final SLIDE_OUT_POSITION_THRESHOLD:I

.field public static final SLIDE_OUT_VELOCITY_THRESHOLD:I

.field public static final SMALL_FREEFORM_DOWNWARD_RIGHT_MARGIN:I

.field public static final SMALL_FREEFORM_DOWNWARD_TOP_MARGIN:I

.field public static final SMALL_FREEFORM_HEIGHT:F

.field public static final SMALL_FREEFORM_LANDCAPE_HEIGHT:F

.field public static final SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

.field public static final SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

.field public static final SMALL_FREEFORM_LANDCAPE_WIDTH:F

.field public static final SMALL_FREEFORM_MOVE_VELOCITY_X_THRESHOLD:F = 2000.0f

.field public static final SMALL_FREEFORM_MOVE_VELOCITY_Y_THRESHOLD:F = 4000.0f

.field public static final SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

.field public static final SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

.field public static final SMALL_FREEFORM_RIGHT_MARGIN:F

.field public static final SMALL_FREEFORM_TOP_MARGIN:F

.field public static final SMALL_FREEFORM_WIDTH:F

.field public static final START_SAMLL_FREEFORM:I = 0x1

.field static final TAG:Ljava/lang/String; = "MiuiMultiWindowUtils"

.field private static final TIMESTAP_MAX_SIZE:I = 0xa

.field public static final TOP_DECOR_CAPTIONVIEW_HEIGHT:I

.field public static mCurrentSmallWindowCorner:I

.field public static volatile mIsMiniFreeformMode:Z

.field public static needAnimation:Z

.field private static sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFreeformPackageNotSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFreeformSuggestionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastUpdateTime:J

.field private static sNotSupportFreeformDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/MiuiMultiWindowUtils;->needAnimation:Z

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x41ce6666    # 25.8f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_ROUND_CORNER:F

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x4389d0a4    # 275.63f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_WIDTH:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x43d3170a    # 422.18f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_HEIGHT:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x43797333    # 249.45f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_WIDTH:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x43b45d71

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_HEIGHT:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x43b80000    # 368.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_WIDTH:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_HEIGHT:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x424ba3d7    # 50.91f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_TOP:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x421170a4    # 36.36f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_LEFT:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x4168a3d7    # 14.54f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_RESERVE_MARGINS:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x423f3333    # 47.8f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_LANDCAPE_RESERVE_MARGINS:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x4122e148    # 10.18f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_TOP_OFFSITE:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_BOTTOM_HEIGHT:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x413a3d71    # 11.64f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_BOTTOM_OFFSITE:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x4145c28f    # 12.36f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x42a5199a    # 82.55f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x415170a4    # 13.09f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v4, 0x41ae8f5c    # 21.82f

    invoke-static {v0, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v4, 0x432c5c29    # 172.36f

    invoke-static {v0, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v5, 0x42c2e666    # 97.45f

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v6, 0x431c5c29    # 156.36f

    invoke-static {v0, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_WIDTH:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HEIGHT:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v4, 0x4367451f    # 231.27f

    invoke-static {v0, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_DOWNWARD_TOP_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_DOWNWARD_RIGHT_MARGIN:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x42968a3d    # 75.27f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_RIGHT_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, -0x3cd60000    # -170.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SLIDE_OUT_VELOCITY_THRESHOLD:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SLIDE_OUT_POSITION_THRESHOLD:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->SLIDE_OUT_FINAL_POSITION_OFFSITE:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOT_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x42cd199a    # 102.55f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x42b747ae    # 91.64f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x42b8b852    # 92.36f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x42ce8a3d    # 103.27f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x4315170a    # 149.09f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x432e2e14    # 174.18f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x4371170a    # 241.09f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x42145c29    # 37.09f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x423747ae    # 45.82f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x4222eb85    # 40.73f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    const/4 v1, -0x1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x421747ae    # 37.82f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/util/MiuiMultiWindowUtils;->sFreeformPackageNotSupport:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/MiuiMultiWindowUtils;->sFreeformSuggestionList:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.whatsapp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.ss.android.lark.kami"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.ss.android.lark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v1, "dandelion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v1, "angelica"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v1, "angelicain"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v1, "cattail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v1, "angelican"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static calculateCornerBound(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "window"

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isNotchScreen(Landroid/content/Context;)Z

    move-result v8

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v11, 0x1

    if-le v9, v10, :cond_33

    const/4 v11, 0x0

    :cond_33
    if-eqz v11, :cond_e1

    if-eqz p5, :cond_8c

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    int-to-float v14, v12

    sget v15, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v15, v13

    sget v16, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    float-to-int v13, v13

    sub-int v13, v10, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    sub-int/2addr v13, v14

    int-to-float v15, v12

    sget v16, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    add-float v15, v15, v16

    float-to-int v15, v15

    sub-int v14, v10, v14

    invoke-virtual {v2, v12, v13, v15, v14}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    sub-int v13, v9, v13

    int-to-float v15, v14

    sget v16, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v1, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    float-to-int v14, v14

    sub-int v14, v10, v14

    sget v15, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    sub-int/2addr v14, v15

    sub-int v13, v9, v13

    sub-int v15, v10, v15

    invoke-virtual {v3, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1ee

    :cond_8c
    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    int-to-float v14, v12

    sget v15, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v15, v13

    sget v16, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    float-to-int v13, v13

    sub-int v13, v10, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    sub-int/2addr v13, v14

    int-to-float v15, v12

    sget v16, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    add-float v15, v15, v16

    float-to-int v15, v15

    sub-int v14, v10, v14

    invoke-virtual {v2, v12, v13, v15, v14}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    sub-int v13, v9, v13

    int-to-float v15, v14

    sget v16, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v1, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    float-to-int v14, v14

    sub-int v14, v10, v14

    sget v15, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    sub-int/2addr v14, v15

    sub-int v13, v9, v13

    sub-int v15, v10, v15

    invoke-virtual {v3, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1ee

    :cond_e1
    if-eqz p5, :cond_139

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    int-to-float v14, v12

    sget v15, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v15, v13

    sget v16, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    float-to-int v13, v13

    sub-int v13, v10, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    sub-int/2addr v13, v14

    sget v15, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    int-to-float v15, v15

    sget v16, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    add-float v15, v15, v16

    float-to-int v15, v15

    sub-int v14, v10, v14

    invoke-virtual {v2, v12, v13, v15, v14}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    sub-int v13, v9, v13

    int-to-float v15, v14

    sget v16, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v1, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_HEIGHT:F

    float-to-int v14, v14

    sub-int v14, v10, v14

    sget v15, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    sub-int/2addr v14, v15

    sub-int v13, v9, v13

    sub-int v15, v10, v15

    invoke-virtual {v3, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18e

    :cond_139
    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    int-to-float v14, v12

    sget v15, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v15, v13

    sget v16, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    float-to-int v13, v13

    sub-int v13, v10, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    sub-int/2addr v13, v14

    sget v15, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    int-to-float v15, v15

    sget v16, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    add-float v15, v15, v16

    float-to-int v15, v15

    sub-int v14, v10, v14

    invoke-virtual {v2, v12, v13, v15, v14}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    sub-int v13, v9, v13

    int-to-float v15, v14

    sget v16, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v1, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_WIDTH:F

    float-to-int v12, v12

    sub-int v12, v9, v12

    sget v13, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sub-int/2addr v12, v13

    sget v14, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_HEIGHT:F

    float-to-int v14, v14

    sub-int v14, v10, v14

    sget v15, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    sub-int/2addr v14, v15

    sub-int v13, v9, v13

    sub-int v15, v10, v15

    invoke-virtual {v3, v12, v14, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    :goto_18e
    const/4 v12, 0x3

    const/4 v13, 0x1

    if-eqz v8, :cond_1bf

    if-ne v7, v13, :cond_1a9

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sget v15, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    add-int/2addr v14, v15

    iget v15, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sget v15, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    add-int/2addr v14, v15

    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1bf

    :cond_1a9
    if-ne v7, v12, :cond_1bf

    iget v14, v1, Landroid/graphics/Rect;->left:I

    sget v15, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    sub-int/2addr v14, v15

    iget v15, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v14, v3, Landroid/graphics/Rect;->left:I

    sget v15, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    sub-int/2addr v14, v15

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1bf
    :goto_1bf
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isFullScreenGestureNav(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1ee

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getNavBarResHeight(Landroid/content/Context;)I

    move-result v14

    if-ne v7, v13, :cond_1dc

    iget v12, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iget v13, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1ee

    :cond_1dc
    if-ne v7, v12, :cond_1ee

    iget v12, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v14

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v12, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v14

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1ee
    :goto_1ee
    return-void
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_36

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_16

    :catch_13
    move-exception v1

    const/4 v2, 0x0

    move-object v1, v2

    :goto_16
    if-nez v1, :cond_19

    return v0

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkAppInstalled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is installed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiMultiWindowUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_36
    :goto_36
    return v0
.end method

.method public static exitFreeFormWindowIfNeeded()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_30

    goto :goto_1b

    :cond_2f
    goto :goto_34

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public static findNearestCorner(Landroid/content/Context;FFIFFZ)Landroid/graphics/Rect;
    .registers 26

    move/from16 v0, p3

    const-string/jumbo v1, "window"

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v9, v2

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v12, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v14, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v2

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/util/MiuiMultiWindowUtils;->calculateCornerBound(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftTopWindowBounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rightTopWindowBounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " leftBottomWindowBounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rightBottomWindowBounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq v0, v6, :cond_92

    if-ne v0, v4, :cond_83

    sput v4, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v12

    :cond_83
    if-ne v0, v5, :cond_88

    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v13

    :cond_88
    if-ne v0, v3, :cond_8d

    sput v3, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v15

    :cond_8d
    if-ne v0, v2, :cond_92

    sput v2, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v14

    :cond_92
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpl-float v6, v6, v7

    const/high16 v16, 0x457a0000    # 4000.0f

    if-gtz v6, :cond_a6

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v16

    if-lez v6, :cond_12a

    :cond_a6
    cmpl-float v6, p4, v7

    if-lez v6, :cond_b1

    cmpl-float v6, p5, v16

    if-lez v6, :cond_b1

    sput v3, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v15

    :cond_b1
    const/high16 v6, -0x3b060000    # -2000.0f

    cmpg-float v17, p4, v6

    const/high16 v18, -0x3a860000    # -4000.0f

    if-gez v17, :cond_c0

    cmpg-float v17, p5, v18

    if-gez v17, :cond_c0

    sput v4, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v12

    :cond_c0
    cmpl-float v17, p4, v7

    if-lez v17, :cond_cb

    cmpg-float v17, p5, v18

    if-gez v17, :cond_cb

    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v13

    :cond_cb
    cmpg-float v17, p4, v6

    if-gez v17, :cond_d6

    cmpl-float v17, p5, v16

    if-lez v17, :cond_d6

    sput v2, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v14

    :cond_d6
    cmpl-float v7, p4, v7

    if-lez v7, :cond_eb

    sget v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v6, v4, :cond_e8

    if-ne v6, v5, :cond_e1

    goto :goto_e8

    :cond_e1
    if-eq v6, v2, :cond_e5

    if-ne v6, v3, :cond_12a

    :cond_e5
    sput v3, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v15

    :cond_e8
    :goto_e8
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v13

    :cond_eb
    cmpg-float v6, p4, v6

    if-gez v6, :cond_100

    sget v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v6, v4, :cond_fd

    if-ne v6, v5, :cond_f6

    goto :goto_fd

    :cond_f6
    if-eq v6, v2, :cond_fa

    if-ne v6, v3, :cond_12a

    :cond_fa
    sput v2, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v14

    :cond_fd
    :goto_fd
    sput v4, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v12

    :cond_100
    cmpl-float v6, p5, v16

    if-lez v6, :cond_115

    sget v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v6, v4, :cond_112

    if-ne v6, v2, :cond_10b

    goto :goto_112

    :cond_10b
    if-eq v6, v5, :cond_10f

    if-ne v6, v3, :cond_12a

    :cond_10f
    sput v3, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v15

    :cond_112
    :goto_112
    sput v2, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v14

    :cond_115
    cmpg-float v6, p5, v18

    if-gez v6, :cond_12a

    sget v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v6, v4, :cond_127

    if-ne v6, v2, :cond_120

    goto :goto_127

    :cond_120
    if-eq v6, v5, :cond_124

    if-ne v6, v3, :cond_12a

    :cond_124
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v13

    :cond_127
    :goto_127
    sput v4, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v12

    :cond_12a
    div-int/lit8 v6, v10, 0x2

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_13e

    div-int/lit8 v3, v11, 0x2

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_13b

    sput v4, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v12

    :cond_13b
    sput v2, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v14

    :cond_13e
    div-int/lit8 v2, v11, 0x2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_148

    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v13

    :cond_148
    sput v3, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    return-object v15
.end method

.method public static findNearestCorner(Landroid/content/Context;FFIZ)Landroid/graphics/Rect;
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIFFZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/ActivityOptions;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    return-object v4

    :cond_e
    sput-boolean p3, Landroid/util/MiuiMultiWindowUtils;->mIsMiniFreeformMode:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getCurrentFreeFormWindowMode()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, -0x2

    const-string/jumbo v8, "quick_reply"

    const/4 v9, 0x0

    invoke-static {v0, v8, v9, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "screen_project_private_on"

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_project_in_screening"

    invoke-static {v0, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v7, v11, :cond_46

    if-ne v8, v11, :cond_4c

    if-ne v10, v11, :cond_4c

    :cond_46
    invoke-static/range {p0 .. p1}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_4c
    if-eqz v3, :cond_4f

    goto :goto_51

    :cond_4f
    move v0, v9

    goto :goto_52

    :cond_51
    :goto_51
    move v0, v11

    :goto_52
    move v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isLaunchMultiWindow:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " gameKey:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "isScreenProjectionPrivace:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "screenProjectionState:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " noCheck:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " currentMode:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MiuiMultiWindowUtils"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_95

    return-object v4

    :cond_95
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v14

    :try_start_99
    invoke-interface {v14}, Landroid/app/IActivityTaskManager;->isInSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string v0, "current focusStack is DOCKED and will cancel freeform"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a4} :catch_a7

    const/4 v0, 0x0

    move v12, v0

    :cond_a6
    goto :goto_ab

    :catch_a7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ab
    const/4 v0, 0x0

    if-eqz v12, :cond_197

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v2, :cond_e7

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v4, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_e7

    iget-object v9, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v9}, Landroid/util/MiuiMultiWindowUtils;->isOrientationLandscape(I)Z

    move-result v9

    if-nez v9, :cond_e3

    const-string v9, "com.tencent.tmgp.cf"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e1

    goto :goto_e3

    :cond_e1
    const/4 v9, 0x0

    goto :goto_e4

    :cond_e3
    :goto_e3
    const/4 v9, 0x1

    :goto_e4
    move v0, v9

    move v4, v0

    goto :goto_e8

    :cond_e7
    move v4, v0

    :goto_e8
    const/4 v0, 0x5

    invoke-virtual {v15, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->mIsMiniFreeformMode:Z

    const/4 v9, 0x0

    invoke-static {v1, v9, v9, v0, v4}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZ)Landroid/graphics/Rect;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MiuiMulti::getActivityOptions::launchBounds= "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15, v11}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x0

    aput-object v9, v0, v17

    const-string/jumbo v9, "setMiuiConfigFlag"

    invoke-static {v15, v9, v0}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_11c
    const-string v0, "getActivityOptionsInjector"

    const/4 v9, 0x0

    invoke-static {v15, v0, v9}, Landroid/util/MiuiMultiWindowUtils;->isMethodExist(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_165

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v9, "setFreeformScale"
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_12f} :catch_16c

    move/from16 v16, v4

    move-object/from16 v18, v5

    const/4 v4, 0x1

    :try_start_134
    new-array v5, v4, [Ljava/lang/Object;

    sget v4, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_13c} :catch_161

    move/from16 v19, v6

    const/4 v6, 0x0

    :try_start_13f
    aput-object v4, v5, v6

    invoke-static {v3, v9, v5}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Landroid/util/MiuiMultiWindowUtils;->mIsMiniFreeformMode:Z

    if-eqz v3, :cond_173

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "setMiniFreeformMode"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v6, v9

    invoke-static {v3, v4, v6}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_15e} :catch_15f

    goto :goto_173

    :catch_15f
    move-exception v0

    goto :goto_173

    :catch_161
    move-exception v0

    move/from16 v19, v6

    goto :goto_173

    :cond_165
    move/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    goto :goto_173

    :catch_16c
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    :cond_173
    :goto_173
    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiMulti options: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Landroid/util/MiuiMultiWindowUtils$1;

    invoke-direct {v3, v1, v2}, Landroid/util/MiuiMultiWindowUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move-object v0, v15

    goto :goto_19b

    :cond_197
    move-object/from16 v18, v5

    move/from16 v19, v6

    :goto_19b
    return-object v0
.end method

.method public static getCurrentFreeFormWindowMode()I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentFreeFormWindowMode"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_26

    nop

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_27

    move v0, v2

    :cond_26
    goto :goto_2b

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFreeFormWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getDistance(FFFF)D
    .registers 8

    sub-float v0, p0, p2

    sub-float v1, p0, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p3

    sub-float v2, p1, p3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getFreeFormWindowPosition(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormWindowPositionOrientation(Landroid/content/Context;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static getFreeFormWindowPositionOrientation(Landroid/content/Context;Landroid/graphics/Rect;Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz p2, :cond_29

    const-string v3, "VFreeForm_Position_Left"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    const-string v3, "VFreeForm_Position_Top"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    const-string v3, "VFreeForm_Position_Right"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    const-string v3, "VFreeForm_Position_Bottom"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_49

    :cond_29
    const-string v3, "HFreeForm_Position_Left"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    const-string v3, "HFreeForm_Position_Top"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    const-string v3, "HFreeForm_Position_Right"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    const-string v3, "HFreeForm_Position_Bottom"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_49
    return-void
.end method

.method public static getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformRect(Landroid/content/Context;ZZ)Landroid/graphics/Rect;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformRect(Landroid/content/Context;ZZZ)Landroid/graphics/Rect;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformRect(Landroid/content/Context;ZZZZ)Landroid/graphics/Rect;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFreeformRect::isFreeformLandscape = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_20

    const/4 v3, 0x0

    return-object v3

    :cond_20
    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const v11, 0x421170a4    # 36.36f

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v11

    float-to-int v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    move-object/from16 v17, v3

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f000000    # 0.5f

    if-eqz p1, :cond_69

    if-eqz p2, :cond_66

    goto :goto_69

    :cond_66
    move-object/from16 v20, v5

    goto :goto_8b

    :cond_69
    :goto_69
    if-nez p1, :cond_e2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v3

    move-object/from16 v20, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_8b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_84

    goto :goto_8b

    :cond_84
    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    goto :goto_ea

    :cond_8b
    :goto_8b
    if-eqz v1, :cond_bc

    sget v3, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_WIDTH:I

    int-to-float v5, v3

    mul-float v5, v5, v18

    move/from16 v21, v11

    int-to-float v11, v9

    div-float/2addr v5, v11

    sget v11, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_HEIGHT:I

    move/from16 v22, v12

    int-to-float v12, v11

    mul-float v12, v12, v18

    move/from16 v23, v13

    int-to-float v13, v8

    div-float/2addr v12, v13

    add-float/2addr v5, v12

    div-float v5, v5, v16

    sput v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    sget v12, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_LEFT:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float v3, v3, v19

    float-to-int v3, v3

    add-int/2addr v3, v12

    sub-int v13, v8, v11

    const/16 v16, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v11, v11

    div-float/2addr v11, v5

    add-float v11, v11, v19

    float-to-int v5, v11

    add-int/2addr v5, v13

    goto/16 :goto_131

    :cond_bc
    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_WIDTH:I

    int-to-float v5, v3

    mul-float v5, v5, v18

    int-to-float v11, v8

    div-float/2addr v5, v11

    sput v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    sget v12, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_LEFT:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float v3, v3, v19

    float-to-int v3, v3

    add-int/2addr v3, v12

    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_HEIGHT:I

    sub-int v13, v8, v11

    const/16 v16, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v11, v11

    div-float/2addr v11, v5

    add-float v11, v11, v19

    float-to-int v5, v11

    add-int/2addr v5, v13

    goto :goto_131

    :cond_e2
    move-object/from16 v20, v5

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    :goto_ea
    if-eqz v1, :cond_113

    sget v3, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_WIDTH:I

    int-to-float v5, v3

    mul-float v5, v5, v18

    int-to-float v11, v8

    div-float/2addr v5, v11

    sget v11, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_HEIGHT:I

    int-to-float v12, v11

    mul-float v12, v12, v18

    int-to-float v13, v9

    div-float/2addr v12, v13

    add-float/2addr v5, v12

    div-float v5, v5, v16

    sput v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_TOP:I

    int-to-float v11, v11

    div-float/2addr v11, v5

    add-float v11, v11, v19

    float-to-int v11, v11

    add-int/2addr v11, v13

    sub-int v12, v8, v3

    const/4 v14, 0x2

    div-int/2addr v12, v14

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float v3, v3, v19

    float-to-int v3, v3

    add-int/2addr v3, v12

    move v5, v11

    goto :goto_131

    :cond_113
    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_WIDTH:I

    int-to-float v5, v3

    mul-float v5, v5, v18

    int-to-float v11, v8

    div-float/2addr v5, v11

    sput v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_TOP:I

    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v11, v5

    add-float v11, v11, v19

    float-to-int v11, v11

    add-int/2addr v11, v13

    sub-int v12, v8, v3

    const/4 v14, 0x2

    div-int/2addr v12, v14

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float v3, v3, v19

    float-to-int v3, v3

    add-int/2addr v3, v12

    move v5, v11

    :goto_131
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    const-string/jumbo v14, "x"

    const-string v15, "freeform window screen ("

    if-eqz v11, :cond_169

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-nez v11, :cond_143

    goto :goto_169

    :cond_143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") positionPoint:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1a9

    :cond_169
    :goto_169
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") rect["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v13, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1a9
    if-eqz p3, :cond_1c6

    nop

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v11, v14, :cond_1b8

    const/4 v11, 0x1

    goto :goto_1b9

    :cond_1b8
    const/4 v11, 0x0

    :goto_1b9
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-static {v0, v14, v14, v15, v11}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIZ)Landroid/graphics/Rect;

    move-result-object v11

    iget v14, v11, Landroid/graphics/Rect;->left:I

    iget v15, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1c6
    if-eqz v2, :cond_1cb

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1cb
    return-object v4
.end method

.method public static getFreeformSuggestionList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->readFreeformTimestamps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isForceResizeable()Z

    move-result v7

    sget-wide v8, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-nez v8, :cond_41

    invoke-static {v6}, Landroid/util/MiuiMultiWindowUtils;->updateFreeformTimestamps(Ljava/util/HashMap;)V

    invoke-static {v1, v0, v4}, Landroid/util/MiuiMultiWindowUtils;->updateList(Landroid/app/ActivityManager;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    :cond_41
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getFreeformBlackList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->queryUsageStats(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getAppLaunchCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/LinkedList;

    if-eqz v15, :cond_90

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v17

    mul-int/lit8 v17, v17, 0xa

    add-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :cond_90
    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_bb

    invoke-interface {v4, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b8

    move-object/from16 v16, v1

    sget-object v1, Landroid/util/MiuiMultiWindowUtils;->sFreeformPackageNotSupport:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {v0, v13}, Landroid/util/MiuiMultiWindowUtils;->pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    if-nez v7, :cond_b4

    invoke-static {v0, v13}, Landroid/util/MiuiMultiWindowUtils;->isPkgMainActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    :cond_b4
    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    :cond_b8
    move-object/from16 v16, v1

    goto :goto_bd

    :cond_bb
    move-object/from16 v16, v1

    :cond_bd
    :goto_bd
    move-object/from16 v1, v16

    goto :goto_60

    :cond_c0
    move-object/from16 v16, v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v11, 0x40

    invoke-virtual {v1, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_123

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_122

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_122

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_122

    sget-object v14, Landroid/util/MiuiMultiWindowUtils;->sFreeformPackageNotSupport:Ljava/util/List;

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_122

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v14}, Landroid/util/MiuiMultiWindowUtils;->pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11b

    if-nez v7, :cond_110

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v14}, Landroid/util/MiuiMultiWindowUtils;->isPkgMainActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11b

    :cond_110
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    :cond_11b
    sget-object v14, Landroid/util/MiuiMultiWindowUtils;->sFreeformPackageNotSupport:Ljava/util/List;

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_122
    :goto_122
    goto :goto_d0

    :cond_123
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Landroid/util/MiuiMultiWindowUtils$2;

    invoke-direct {v13}, Landroid/util/MiuiMultiWindowUtils$2;-><init>()V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v13, 0x0

    :goto_135
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_14d

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_135

    :cond_14d
    return-object v8
.end method

.method public static getLauncherPackageName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.miui.product.home"

    const-string v1, "com.miui.home"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isFullScreenGestureNav(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getNavBarResHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getNavBarResHeight(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_1e
    return v0
.end method

.method public static getNotchSize(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public static getOriFreeformRect(Landroid/content/Context;ZZZ)Landroid/graphics/Rect;
    .registers 24

    move-object/from16 v0, p0

    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    :cond_6
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const v8, 0x421170a4    # 36.36f

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v8

    float-to-int v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_48

    goto :goto_4b

    :cond_48
    move-object/from16 v18, v1

    goto :goto_69

    :cond_4b
    :goto_4b
    if-nez p1, :cond_93

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v15

    move-object/from16 v18, v1

    const/4 v1, 0x1

    if-eq v15, v1, :cond_69

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v15

    const/4 v1, 0x3

    if-ne v15, v1, :cond_66

    goto :goto_69

    :cond_66
    move-object/from16 v19, v2

    goto :goto_97

    :cond_69
    :goto_69
    if-nez v10, :cond_90

    const/4 v9, 0x1

    sget v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_WIDTH:I

    int-to-float v15, v1

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v19, v2

    int-to-float v2, v5

    div-float/2addr v15, v2

    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_LEFT:I

    int-to-float v1, v1

    div-float/2addr v1, v15

    add-float v1, v1, v17

    float-to-int v1, v1

    add-int v12, v11, v1

    sget v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_HEIGHT:I

    sub-int v2, v5, v1

    const/16 v16, 0x2

    div-int/lit8 v13, v2, 0x2

    int-to-float v1, v1

    div-float/2addr v1, v15

    add-float v1, v1, v17

    float-to-int v1, v1

    add-int v14, v13, v1

    goto :goto_ba

    :cond_90
    move-object/from16 v19, v2

    goto :goto_ba

    :cond_93
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    :goto_97
    if-nez v10, :cond_ba

    const/4 v9, 0x1

    sget v1, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_WIDTH:I

    int-to-float v2, v1

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v2, v15

    int-to-float v15, v5

    div-float/2addr v2, v15

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_TO_TOP:I

    sget v15, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_HEIGHT:I

    int-to-float v15, v15

    div-float/2addr v15, v2

    add-float v15, v15, v17

    float-to-int v15, v15

    add-int v14, v13, v15

    sub-int v15, v5, v1

    const/16 v16, 0x2

    div-int/lit8 v11, v15, 0x2

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float v1, v1, v17

    float-to-int v1, v1

    add-int v12, v11, v1

    :cond_ba
    :goto_ba
    const-string v1, "closeMemRect: "

    const-string/jumbo v2, "x"

    const-string v15, "freeform window screen ("

    move/from16 v16, v5

    const-string v5, "MiuiMultiWindowUtils"

    if-nez v9, :cond_10c

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v17

    if-eqz v17, :cond_10c

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-nez v17, :cond_d6

    move/from16 v17, v6

    goto :goto_10e

    :cond_d6
    move/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") positionPoint:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "isVaildPosition: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_157

    :cond_10c
    move/from16 v17, v6

    :goto_10e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") rect["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]isVaildPosition: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11, v13, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_157
    if-eqz p3, :cond_174

    nop

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v2, v5, :cond_166

    const/4 v15, 0x1

    goto :goto_167

    :cond_166
    const/4 v15, 0x0

    :goto_167
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v2, v2, v5, v15}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_174
    return-object v1
.end method

.method public static getOriFreeformScale(Landroid/content/Context;Z)F
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_5

    return v0

    :cond_5
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_3e

    if-eqz p1, :cond_33

    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_WIDTH:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_55

    :cond_33
    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_PORTRAIT_WIDTH:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_55

    :cond_3e
    if-eqz p1, :cond_4b

    sget v3, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_WIDTH:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_55

    :cond_4b
    sget v3, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_FREEFORM_WIDTH:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_55
    return v3
.end method

.method public static getStatusBarHeight(Landroid/content/Context;I)I
    .registers 6

    if-nez p0, :cond_3

    return p1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    :cond_1d
    return p1
.end method

.method private static getTaskResizeable(Landroid/app/ActivityManager;Landroid/app/ActivityManager$StackInfo;)Z
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskResizeableForFreeform"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    return v0

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p2, :cond_19

    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_19
    array-length v4, p2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_1d
    array-length v6, p2

    if-ge v5, v6, :cond_4c

    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2b

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    :cond_2b
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_36

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    :cond_36
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_41

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    :cond_41
    aget-object v6, p2, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    :goto_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_4c
    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v0, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    return-object v1

    :catch_59
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeclaredMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static isEnterHotArea(Landroid/content/Context;FF)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->isEnterHotArea(Landroid/content/Context;FFZ)I

    move-result v0

    return v0
.end method

.method public static isEnterHotArea(Landroid/content/Context;FFZ)I
    .registers 21

    move/from16 v0, p1

    move/from16 v1, p2

    const-string/jumbo v2, "window"

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x1

    if-le v5, v6, :cond_23

    const/4 v7, 0x0

    :cond_23
    if-nez p3, :cond_4e

    if-eqz v7, :cond_2a

    sget v8, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

    goto :goto_2c

    :cond_2a
    sget v8, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

    :goto_2c
    nop

    if-eqz v7, :cond_32

    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    goto :goto_34

    :cond_32
    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    :goto_34
    nop

    if-eqz v7, :cond_3a

    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_3c

    :cond_3a
    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    :goto_3c
    nop

    if-eqz v7, :cond_42

    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    goto :goto_44

    :cond_42
    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    :goto_44
    nop

    if-eqz v7, :cond_4a

    sget v12, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    goto :goto_4c

    :cond_4a
    sget v12, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    :goto_4c
    nop

    goto :goto_76

    :cond_4e
    if-eqz v7, :cond_53

    sget v8, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

    goto :goto_55

    :cond_53
    sget v8, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

    :goto_55
    nop

    if-eqz v7, :cond_5b

    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    goto :goto_5d

    :cond_5b
    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    :goto_5d
    nop

    if-eqz v7, :cond_63

    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_65

    :cond_63
    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    :goto_65
    nop

    if-eqz v7, :cond_6b

    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    goto :goto_6d

    :cond_6b
    sget v11, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    :goto_6d
    nop

    if-eqz v7, :cond_73

    sget v12, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    goto :goto_75

    :cond_73
    sget v12, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    :goto_75
    nop

    :goto_76
    new-instance v13, Landroid/graphics/Rect;

    add-float v14, v8, v12

    float-to-int v14, v14

    float-to-int v15, v10

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-direct {v13, v2, v2, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v14, v0

    float-to-int v15, v1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_16f

    new-instance v13, Landroid/graphics/Rect;

    float-to-int v14, v12

    float-to-int v15, v8

    invoke-direct {v13, v2, v2, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v14, v0

    float-to-int v15, v1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_16f

    invoke-static {v0, v1, v12, v10}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v13

    float-to-double v2, v8

    cmpg-double v2, v13, v2

    if-gtz v2, :cond_a4

    goto/16 :goto_16f

    :cond_a4
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v12

    sub-float/2addr v3, v8

    float-to-int v3, v3

    iget v13, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    float-to-int v14, v10

    const/4 v15, 0x0

    invoke-direct {v2, v3, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v3, v0

    float-to-int v13, v1

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16d

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v12

    float-to-int v3, v3

    iget v13, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    float-to-int v14, v10

    const/4 v15, 0x0

    invoke-direct {v2, v3, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v3, v0

    float-to-int v13, v1

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16d

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float/2addr v2, v12

    invoke-static {v0, v1, v2, v10}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v2

    float-to-double v13, v8

    cmpg-double v2, v2, v13

    if-gtz v2, :cond_e0

    goto/16 :goto_16d

    :cond_e0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v9

    float-to-int v3, v3

    add-float v13, v8, v11

    float-to-int v13, v13

    iget v14, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v15, 0x0

    invoke-direct {v2, v15, v3, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v3, v0

    float-to-int v13, v1

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16b

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v9

    sub-float/2addr v3, v8

    float-to-int v3, v3

    float-to-int v13, v11

    iget v14, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v15, 0x0

    invoke-direct {v2, v15, v3, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v3, v0

    float-to-int v13, v1

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16b

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float/2addr v2, v9

    invoke-static {v0, v1, v11, v2}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v2

    float-to-double v13, v8

    cmpg-double v2, v2, v13

    if-gtz v2, :cond_11d

    goto :goto_16b

    :cond_11d
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v8

    sub-float/2addr v3, v11

    float-to-int v3, v3

    iget v13, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    sub-float/2addr v13, v9

    float-to-int v13, v13

    iget v14, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v3, v0

    float-to-int v13, v1

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_169

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v11

    float-to-int v3, v3

    iget v13, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    sub-float/2addr v13, v9

    sub-float/2addr v13, v8

    float-to-int v13, v13

    iget v14, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v3, v0

    float-to-int v13, v1

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_169

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float/2addr v2, v11

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v2

    float-to-double v13, v8

    cmpg-double v2, v2, v13

    if-gtz v2, :cond_167

    goto :goto_169

    :cond_167
    const/4 v2, -0x1

    return v2

    :cond_169
    :goto_169
    const/4 v2, 0x4

    return v2

    :cond_16b
    :goto_16b
    const/4 v2, 0x3

    return v2

    :cond_16d
    :goto_16d
    const/4 v2, 0x2

    return v2

    :cond_16f
    :goto_16f
    const/4 v2, 0x1

    return v2
.end method

.method public static isForceResizeable()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isFullScreenGestureNav(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static isGlobalLauncher()Z
    .registers 2

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getLauncherPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mi.android.globallauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs isMethodExist(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_12

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v0

    :cond_12
    array-length v3, p2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    :goto_16
    array-length v5, p2

    if-ge v4, v5, :cond_3a

    aget-object v5, p2, v4

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_24

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    goto :goto_37

    :cond_24
    aget-object v5, p2, v4

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_2f

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    goto :goto_37

    :cond_2f
    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_3a
    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_43

    goto :goto_5e

    :catch_43
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeclaredMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-object v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 4

    const-string/jumbo v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static isNotchScreen(Landroid/content/Context;)Z
    .registers 4

    :try_start_0
    const-string/jumbo v0, "ro.miui.notch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_14

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    return v1

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "MiuiMultiWindowUtils"

    const-string v2, "isNotchScreen"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static isOrientationLandscape(I)Z
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/16 v0, 0xb

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private static isPkgMainActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xc0040

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_30

    goto :goto_3f

    :cond_30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v3

    return v3

    :cond_3f
    :goto_3f
    return v3
.end method

.method public static isUserAMonkey()Z
    .registers 1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isVerical(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    return v1

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public static moveTaskToStack(IIZ)I
    .registers 10

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_d

    const/4 v3, 0x5

    :cond_d
    :try_start_d
    invoke-interface {v0, p0, v3, p2}, Landroid/app/IActivityTaskManager;->setTaskWindowingMode(IIZ)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_15
    move-exception v3

    goto :goto_36

    :catch_17
    move-exception v3

    :try_start_18
    const-string v4, "MiuiMultiWindowUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTaskWindowingMode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_15

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, -0x1

    return v3

    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xc0040

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private static queryUsageStats(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/usage/UsageStatsManager;

    const/4 v2, 0x1

    move-object v1, v11

    move-wide v3, v9

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static readFreeformTimestamps(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "freeform_timestamps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFreeformTimestamps::str = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7e

    :try_start_29
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    const/4 v3, 0x0

    :goto_30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_79

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    const/4 v10, 0x0

    :goto_5f
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_71

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v7, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5f

    :cond_71
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_74} :catch_7a

    nop

    goto :goto_45

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_79
    goto :goto_7e

    :catch_7a
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7e
    :goto_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFreeformTimestamps::result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static resizeTask(ILandroid/graphics/Rect;I)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public static saveFreeFormWindowPosition(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    if-eqz v0, :cond_3c

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const-string v4, "VFreeForm_Position_Left"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p1, Landroid/graphics/Rect;->top:I

    const-string v4, "VFreeForm_Position_Top"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p1, Landroid/graphics/Rect;->right:I

    const-string v4, "VFreeForm_Position_Right"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const-string v4, "VFreeForm_Position_Bottom"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_58

    :cond_3c
    iget v3, p1, Landroid/graphics/Rect;->left:I

    const-string v4, "HFreeForm_Position_Left"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p1, Landroid/graphics/Rect;->top:I

    const-string v4, "HFreeForm_Position_Top"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p1, Landroid/graphics/Rect;->right:I

    const-string v4, "HFreeForm_Position_Right"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const-string v4, "HFreeForm_Position_Bottom"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_58
    return-void
.end method

.method private static saveFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "freeform_timestamps"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->readFreeformTimestamps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_12

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    :cond_12
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1d

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->saveFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public static startSmallFreeform(Landroid/content/Context;)I
    .registers 4

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    return v0

    :cond_8
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-static {p0, v1}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result v2

    return v2
.end method

.method public static startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;)I
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_2
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityTaskManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_102

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, v8, :cond_58

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v11, "freeform_window_state"

    const/4 v12, -0x2

    invoke-static {v6, v11, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_55

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.miui.fullscreen_state_change"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "state"

    const-string/jumbo v8, "toHome"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v10

    :cond_55
    if-ne v6, v10, :cond_58

    return v7

    :cond_58
    iget-object v6, v5, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v6

    if-ne v6, v1, :cond_63

    return v1

    :cond_63
    iget-object v6, v5, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v6

    if-ne v6, v7, :cond_6e

    return v1

    :cond_6e
    iget-object v6, v5, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    if-ne v6, v10, :cond_100

    iget-object v4, v5, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d5

    invoke-static {p0, v4}, Landroid/util/MiuiMultiWindowUtils;->saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-wide v11, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v11

    if-nez v11, :cond_9f

    invoke-static {v2, p0, v6}, Landroid/util/MiuiMultiWindowUtils;->updateList(Landroid/app/ActivityManager;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    :cond_9f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_ac

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getFreeformBlackList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_ac
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_be

    invoke-static {p0, v4}, Landroid/util/MiuiMultiWindowUtils;->pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_be

    invoke-static {v2, v5}, Landroid/util/MiuiMultiWindowUtils;->getTaskResizeable(Landroid/app/ActivityManager;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v11

    if-nez v11, :cond_d5

    :cond_be
    const-string v7, "MiuiMultiWindowUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app in black list. packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v6

    const-string v11, "launchSmallFreeFormWindow"

    new-array v12, v8, [Ljava/lang/Object;

    iget-object v13, v5, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v13, v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v12, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v12, v7

    const/4 v7, 0x4

    aput-object p1, v12, v7

    invoke-static {v6, v11, v12}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ff} :catch_103

    return v10

    :cond_100
    goto/16 :goto_17

    :cond_102
    goto :goto_107

    :catch_103
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_107
    return v1
.end method

.method public static supportFreeFromWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    return v0
.end method

.method public static supportFreeform()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    :cond_f
    return v2
.end method

.method public static supportPinFreeFormApp()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQuickReply()Z
    .registers 1

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method private static updateFreeformTimestamps(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before updateFreeformTimestamps::allTimestamps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMultiWindowUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v9, 0x240c8400

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_5c
    goto :goto_34

    :cond_5d
    goto :goto_1e

    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after updateFreeformTimestamps::allTimestamps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateList(Landroid/app/ActivityManager;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/util/MiuiMultiWindowAdapter;->getFreeformBlackListFromCloud(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Landroid/util/MiuiMultiWindowAdapter;->getFreeformVideoWhiteListFromCloud(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->setFreeformBlackList(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->setFreeformVideoWhiteList(Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static updatewindowConfiguration(Lcom/android/internal/policy/DecorView;Landroid/content/res/Resources;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_23
    return-void
.end method
