.class public Landroid/util/MiuiMultiWindowAdapter;
.super Ljava/lang/Object;
.source "MiuiMultiWindowAdapter.java"


# static fields
.field public static final CLASS_NEME_NOTE_ALARMALERT:Ljava/lang/String; = "com.miui.todo.feature.remind.TodoAlarmAlertActivity"

.field private static final COLOR_BORDER_IMAGE_BLACK_FOCUS:I = 0x33ffffff

.field private static final COLOR_BORDER_IMAGE_BLACK_LOSE_FOCUS:I = 0x33ffffff

.field private static final COLOR_BORDER_IMAGE_LIGHT_FOCUS:I = 0x1e000000

.field private static final COLOR_BORDER_IMAGE_LIGHT_LOSE_FOCUS:I = 0xa000000

.field private static final COLOR_DECOR_CAPTION_BOTTOM_IMAGE_BLACK_FOCUS:I = -0x758a8a8b

.field private static final COLOR_DECOR_CAPTION_BOTTOM_IMAGE_BLACK_LOSE_FOCUS:I = 0x40757575

.field private static final COLOR_DECOR_CAPTION_BOTTOM_IMAGE_LIGHT_FOCUS:I = -0x75d9d9da

.field private static final COLOR_DECOR_CAPTION_BOTTOM_IMAGE_LIGHT_LOSE_FOCUS:I = 0x1a262626

.field private static final COLOR_DECOR_CAPTION_TOP_IMAGE_BLACK_FOCUS:I = 0x339b9b9b

.field private static final COLOR_DECOR_CAPTION_TOP_IMAGE_BLACK_LOSE_FOCUS:I = 0x1a9b9b9b

.field private static final COLOR_DECOR_CAPTION_TOP_IMAGE_LIGHT_FOCUS:I = 0x66b6b6b6

.field private static final COLOR_DECOR_CAPTION_TOP_IMAGE_LIGHT_LOSE_FOCUS:I = 0x33b6b6b6

.field private static final COLOR_DECOR_CAPTION_VIEW_TRANSLUCENT:I = 0x0

.field public static final FREEFORM_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FREEFORM_BORDER_WIDTH:I

.field public static final LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_NAME_CF:Ljava/lang/String; = "com.tencent.tmgp.cf"

.field public static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final SMALL_WINDOW_BLACK_LIST:Ljava/lang/String; = "small_window_blacklist"

.field public static final SMALL_WINDOW_MODULE_NAME:Ljava/lang/String; = "small_window"

.field public static final SMALL_WINDOW_VIDEO_WHITE_LIST:Ljava/lang/String; = "small_window_video_whitelist"

.field public static final START_FROM_FREEFORM_BLACK_LIST_ACTIVITY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWindowAdapter"

.field private static final mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private static sSmallWindowBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSmallWindowWhiteList:Ljava/util/ArrayList;
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
    .registers 4

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BORDER_WIDTH:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->START_FROM_FREEFORM_BLACK_LIST_ACTIVITY:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v1, "com.youku.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string/jumbo v1, "tv.danmaku.bili"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v1, "com.qiyi.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v1, "com.miui.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.ss.android.article.video"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.hunantv.imgo.activity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.duowan.kiwi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.babycloud.hanju"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.smarthome"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.smile.gifmaker"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mtt"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;

    const-string v3, "com.supercell.clashroyale.mi"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->START_FROM_FREEFORM_BLACK_LIST_ACTIVITY:Ljava/util/ArrayList;

    const-string v3, "com.miui.todo.feature.remind.TodoAlarmAlertActivity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.weather2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.miservice"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.calendar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.calendar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.mishare.connectivity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.printspooler"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.backup"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.huanji"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.calculator"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.deskclock"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.thememanager"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.mfashiongallery.emag"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.virtualsim"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.smarttravel"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.mi.health"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.camera"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.lbe.security.miui"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.cleanmaster"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.newhome"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.voiceassist"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.phone"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.yellowpage"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.updater"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.tsmclient"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.securitycore"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.account"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.shop"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.mipay.wallet"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.youpin"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.hm.health"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.bugreport"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.mibrain.speech"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.mimoji"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.scanner"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.duokan.phone.remotecontroller"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.hybrid"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.incallui"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.videoplayer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.fm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.dialer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.magazines"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.compass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.greenguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.kiteguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.prodcasts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.ar.lens"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiangkan.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.bankabc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.sohu.inputmethod.sogou"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.shyz.toutiao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.netease.mc.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.outfit7.talkingtomgoldrun.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.doudz.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.wepie.snake.new.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "cn.jj"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.standddz002.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miHoYo.bh3.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.qqgame.hlddz"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.happyelements.AndroidAnimal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.minitech.miniworld.TMobile.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.mfp.jelly.xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.lilithgames.afk.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.peng"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.teenpatti.hd.gold"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "blockpuzzle.jewelgames.jewelslegend"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.playgendary.tanks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.chillingo.robberybobfree.android.row"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.episodeinteractive.android.catalog"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.playrix.township"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.ansangha.drdriving"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.gbits.atm.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptionHeight(Lcom/android/internal/widget/MiuiDecorCaptionView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowAdapter;->needModifyTopInsets(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    sget v0, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    return v0
.end method

.method public static getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 5

    if-eqz p1, :cond_33

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_33

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayMetrics::metrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public static getFreeformBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    const-string v1, "MiuiMultiWindowAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiMultiWindowAdapter::getFreeformBlackList::sSmallWindowBlackList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public static getFreeformBlackListFromCloud(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "MiuiMultiWindowAdapter"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    nop

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "small_window"

    const-string/jumbo v4, "small_window_blacklist"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiuiMultiWindowAdapter::updateFreeformBlackList::data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_47

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_47
    goto :goto_4d

    :cond_48
    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiuiMultiWindowAdapter::updateFreeformBlackList::smallWindowBlackList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_61} :catch_63

    nop

    goto :goto_69

    :catch_63
    move-exception v2

    const-string v3, "Exception when get XSpaceWhiteApps :"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_69
    return-object v1
.end method

.method public static getFreeformVideoWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    const-string v1, "MiuiMultiWindowAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiMultiWindowAdapter::getFreeformVideoWhiteList::sSmallWindowWhiteList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public static getFreeformVideoWhiteListFromCloud(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "MiuiMultiWindowAdapter"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    nop

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "small_window"

    const-string/jumbo v4, "small_window_video_whitelist"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiuiMultiWindowAdapter::getFreeformVideoWhiteListFromCloud::data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_47

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_47
    goto :goto_4d

    :cond_48
    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiuiMultiWindowAdapter::getFreeformVideoWhiteListFromCloud::smallWindowWhiteList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_61} :catch_63

    nop

    goto :goto_69

    :catch_63
    move-exception v2

    const-string v3, "Exception when get XSpaceWhiteApps :"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_69
    return-object v1
.end method

.method public static getHeight(Landroid/content/res/Resources;I)I
    .registers 5

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeight::cachedAppHeightCompat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1

    :cond_34
    return p1
.end method

.method private static getListFromCloudData(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_70

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_70

    :cond_e
    :try_start_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_12

    :cond_27
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_52

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_52

    :cond_3c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_41
    if-ge v7, v6, :cond_51

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4e} :catch_54

    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_51
    goto :goto_12

    :cond_52
    :goto_52
    return-object v0

    :cond_53
    goto :goto_6f

    :catch_54
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    return-object v0

    :cond_70
    :goto_70
    return-object v0
.end method

.method public static getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 5

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3b

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMetrics::outMetrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public static getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
    .registers 5

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_47

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSize::outSize.x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  outSize.y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method public static getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_23

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_23
    return-void
.end method

.method public static getWidth(Landroid/content/res/Resources;I)I
    .registers 5

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidth::cachedAppWidthCompat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1

    :cond_34
    return p1
.end method

.method public static getWindowVisibleDisplayFrame(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v2, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    sget v3, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    const/4 v4, 0x0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->hasSmallFreeWindow()Z

    move-result v4

    if-eqz v4, :cond_1c

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_22

    :cond_1c
    sub-int v4, v0, v3

    add-int/lit8 v4, v4, 0xa

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :goto_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWindowVisibleDisplayFrame::outRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiMultiWindowAdapter"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getheightUsed(Lcom/android/internal/widget/MiuiDecorCaptionView;II)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowAdapter;->needModifyTopInsets(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int v0, p1, p2

    return v0

    :cond_d
    return p2
.end method

.method public static hasSmallFreeWindow()Z
    .registers 2

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getCurrentFreeFormWindowMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static hasSmallFreeformFeature()Z
    .registers 1

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method public static isPrevent(Landroid/view/View;ILjava/lang/String;I)Z
    .registers 5

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1d

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1d

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public static layoutContentView(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowAdapter;->needModifyTopInsets(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_23

    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    :goto_23
    return-void
.end method

.method public static needModifyTopInsets(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static needRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 5

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x0

    return v0

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public static setFreeformBlackList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_14

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5
    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1

    :cond_14
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiMultiWindowAdapter::setFreeformBlackList::blackList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMultiWindowAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setFreeformVideoWhiteList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2c

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5
    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.smile.gifmaker"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mtt"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1

    :cond_2c
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiMultiWindowAdapter::setFreeformVideoWhiteList::whiteList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMultiWindowAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_41

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v1, v2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :cond_41
    return-void
.end method

.method public static updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 16

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;ZF)V

    return-void
.end method

.method public static updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;ZF)V
    .registers 31

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    const-string/jumbo v9, "uimode"

    move-object/from16 v10, p0

    invoke-virtual {v10, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    invoke-virtual {v9}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v11, v13, :cond_47

    const/4 v11, 0x1

    goto :goto_48

    :cond_47
    move v11, v12

    :goto_48
    const/4 v14, 0x5

    if-ne v6, v14, :cond_55

    if-ne v7, v13, :cond_55

    iget v13, v8, Landroid/graphics/Rect;->left:I

    if-eqz v13, :cond_55

    iget v13, v8, Landroid/graphics/Rect;->top:I

    if-nez v13, :cond_57

    :cond_55
    if-eqz v11, :cond_fa

    :cond_57
    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v12, -0x1000000

    invoke-virtual {v1, v12}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v2, :cond_95

    sget-object v12, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    const v13, 0x1a9b9b9b

    const v14, 0x339b9b9b

    if-eqz p7, :cond_6d

    move v15, v13

    goto :goto_6e

    :cond_6d
    move v15, v14

    :goto_6e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz p7, :cond_76

    move v13, v14

    goto :goto_77

    :cond_76
    nop

    :goto_77
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v5, v15, v13}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    instance-of v13, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v13, :cond_90

    move-object v13, v2

    check-cast v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_95

    :cond_90
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_95
    :goto_95
    if-eqz v3, :cond_cb

    sget-object v12, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    const v13, 0x40757575

    const v14, -0x758a8a8b

    if-eqz p7, :cond_a3

    move v15, v13

    goto :goto_a4

    :cond_a3
    move v15, v14

    :goto_a4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz p7, :cond_ac

    move v13, v14

    goto :goto_ad

    :cond_ac
    nop

    :goto_ad
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v5, v15, v13}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    instance-of v13, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v13, :cond_c6

    move-object v13, v3

    check-cast v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_cb

    :cond_c6
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_cb
    :goto_cb
    if-eqz v4, :cond_1d2

    sget-object v12, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    if-eqz p7, :cond_d2

    goto :goto_d3

    :cond_d2
    nop

    :goto_d3
    const v13, 0x33ffffff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz p7, :cond_dd

    goto :goto_de

    :cond_dd
    nop

    :goto_de
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v5, v14, v13}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    instance-of v13, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v13, :cond_f8

    move-object v13, v4

    check-cast v13, Landroid/graphics/drawable/GradientDrawable;

    sget v14, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BORDER_WIDTH:I

    invoke-virtual {v13, v14, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_f8
    goto/16 :goto_1d2

    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1060249

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/policy/DecorView;

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x4000000

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/policy/PhoneWindow;->getStatusBarColor()I

    move-result v18

    invoke-virtual {v13}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v19

    const/16 v20, 0x2000

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/policy/PhoneWindow;->isStatusBarContrastEnforced()Z

    move-result v21

    move/from16 v17, v12

    invoke-static/range {v15 .. v21}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v2, :cond_16b

    sget-object v15, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    const v16, 0x33b6b6b6

    const v17, 0x66b6b6b6

    if-eqz p7, :cond_141

    move/from16 v18, v16

    goto :goto_143

    :cond_141
    move/from16 v18, v17

    :goto_143
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p7, :cond_14c

    move/from16 v16, v17

    goto :goto_14d

    :cond_14c
    nop

    :goto_14d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v5, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    instance-of v1, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_166

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_16b

    :cond_166
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_16b
    :goto_16b
    if-eqz v3, :cond_1a2

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    const v15, -0x75d9d9da    # -7.999784E-33f

    if-eqz p7, :cond_178

    const v16, 0x1a262626

    goto :goto_17a

    :cond_178
    move/from16 v16, v15

    :goto_17a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p7, :cond_181

    goto :goto_184

    :cond_181
    const v15, 0x1a262626

    :goto_184
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v5, v1, v15}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    instance-of v1, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_19d

    move-object v1, v3

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1a2

    :cond_19d
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1a2
    :goto_1a2
    if-eqz v4, :cond_1d2

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->mTopFocusColorInterpolator:Landroid/animation/ArgbEvaluator;

    const/high16 v15, 0x1e000000

    if-eqz p7, :cond_1ad

    const/high16 v16, 0xa000000

    goto :goto_1af

    :cond_1ad
    move/from16 v16, v15

    :goto_1af
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p7, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/high16 v15, 0xa000000

    :goto_1b8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v5, v1, v15}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    instance-of v1, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1d2

    move-object v1, v4

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    sget v15, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BORDER_WIDTH:I

    invoke-virtual {v1, v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1d2
    :goto_1d2
    return-void
.end method

.method public static updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v8}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;ZF)V

    return-void
.end method

.method public static updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
    .registers 8

    if-eqz p0, :cond_82

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_82

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_2a

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sget v3, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_2a
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sget v3, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_45

    const/4 v2, 0x2

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_4d

    :cond_45
    iput v4, p0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :goto_4d
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_82
    return-void
.end method
