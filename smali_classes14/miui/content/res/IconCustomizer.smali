.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$Holder;,
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field private static final ANIMATING_ICONS_INNER_PATH:Ljava/lang/String; = "animating_icons/"

.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String;

.field private static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final FINAL_MOD_ICONS:Ljava/lang/String;

.field private static final FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

.field private static final ICON_NAME_SUFFIX:Ljava/lang/String; = ".png"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/"

.field private static final MULTI_ANIM_ICONS_INNER_PATH:Ljava/lang/String; = "layer_animating_icons/"

.field private static adaptiveIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sAlphaShift:I = 0x18

.field private static final sAlphaThreshold:I = 0x32

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sColorByteSize:I = 0x4

.field private static final sColorShift:I = 0x8

.field private static sCustomizedIconContentHeight:I = 0x0

.field private static sCustomizedIconContentWidth:I = 0x0

.field private static sCustomizedIconHeight:I = 0x0

.field private static sCustomizedIconWidth:I = 0x0

.field private static sCustomizedIrregularContentHeight:I = 0x0

.field private static sCustomizedIrregularContentWidth:I = 0x0

.field private static volatile sCutPaint:Landroid/graphics/Paint; = null

.field private static volatile sHolder:Lmiui/content/res/IconCustomizer$Holder; = null

.field private static sIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static sIconTransformNeeded:Z = false

.field private static final sMaxContentRatio:F = 2.0f

.field private static sModIconPkgWhiteList:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPaintForTransformBitmap:Landroid/graphics/Paint; = null

.field private static final sRGBMask:I = 0xffffff

.field private static sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miui_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    sget-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    sput-object v0, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    sput-boolean v1, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    sput-object v0, Lmiui/content/res/IconCustomizer;->sHolder:Lmiui/content/res/IconCustomizer$Holder;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    const/4 v1, -0x1

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.calendar"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.settings"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.xiaomi.market"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.duokan.reader"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.contacts"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.notes"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.securitycenter"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.gallery"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.xiaomi.scanner"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.duokan.phone.remotecontroller"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.phone"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.camera"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.calculator"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.virtualsim"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.soundrecorder"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.browser"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.thememanager"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.screenrecorder"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.updater"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.deskclock"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.mi.health"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.xiaomi.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.compass"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.providers.downloads.ui"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.weather2"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.player"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.huanji"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.miservice"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.fileexplorer"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.mi.android.globalFileexplorer"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.xiaomi.smarthome"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.mms"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.voiceassist"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.miui.video"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    const-string v2, "com.android.email"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v3, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.miui.weather2.png"

    const-string v3, "com.miui.weather.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.miui.gallery.png"

    const-string v3, "com.android.gallery.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.android.gallery3d.png"

    const-string v4, "com.cooliris.media.png"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.xiaomi.market.png"

    const-string v4, "com.miui.supermarket.png"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.wali.miui.networkassistant.png"

    const-string v4, "com.android.monitor.png"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.xiaomi.scanner.png"

    const-string v4, "com.miui.barcodescanner.png"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.miui.calculator.png"

    const-string v4, "com.android.calculator2.png"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.android.camera.CameraEntry.png"

    const-string v4, "com.android.camera.png"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v3, "com.htc.album.png"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.fm.activity.FMRadioMain.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "pl.zdunex25.updater.png"

    const-string v3, "com.android.updater.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "pl.zdunex25.xiaomieutools.png"

    const-string v3, "com.miui.securitycenter.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.fm.FMRadio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.fm.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sec.android.app.camera.Camera.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sec.android.app.fm.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.hwcamera.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.huawei.android.FMRadio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sonyericsson.android.camera.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sonyericsson.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.motorola.Camera.Camera.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.lge.camera.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.oppo.camera.OppoCamera.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.lenovo.scg#com.android.camera.CameraLauncher.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.lenovo.fm.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.camera2#com.android.camera.CameraLauncher.png"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RGBToColor([I)I
    .registers 3

    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F
    .registers 22

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_108

    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_114

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    :goto_12
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v10, p0

    if-ge v5, v10, :cond_63

    const/4 v11, 0x0

    :goto_1a
    move/from16 v12, p1

    if-ge v11, v12, :cond_60

    add-int v13, v5, v11

    aget v13, p3, v13

    const v14, 0xffffff

    and-int/2addr v14, v13

    if-lez v14, :cond_46

    aget v14, v2, v8

    const/high16 v15, 0xff0000

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v14, v15

    aput v14, v2, v8

    aget v14, v2, v9

    const v15, 0xff00

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    aput v14, v2, v9

    aget v14, v2, v7

    and-int/lit16 v15, v13, 0xff

    add-int/2addr v14, v15

    aput v14, v2, v7

    add-int/lit8 v0, v0, 0x1

    :cond_46
    aget v14, v2, v3

    if-nez v14, :cond_5d

    if-eqz v6, :cond_5d

    aget v14, v2, v3

    shr-int/lit8 v15, v13, 0x18

    add-int v16, v5, v11

    shl-int/lit8 v16, v16, 0x2

    add-int/lit8 v16, v16, 0x3

    aget-byte v16, v6, v16

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v2, v3

    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_60
    add-int v5, v5, p2

    goto :goto_12

    :cond_63
    move/from16 v12, p1

    if-lez v0, :cond_76

    aget v11, v2, v8

    div-int/2addr v11, v0

    aput v11, v2, v8

    aget v11, v2, v9

    div-int/2addr v11, v0

    aput v11, v2, v9

    aget v11, v2, v7

    div-int/2addr v11, v0

    aput v11, v2, v7

    :cond_76
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v11

    invoke-static {v11, v4}, Lmiui/content/res/IconCustomizer;->getSaturation(I[I)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v13, v13, v15

    if-gez v13, :cond_8a

    const/4 v11, 0x0

    goto :goto_e7

    :cond_8a
    new-array v13, v7, [[I

    new-array v14, v7, [I

    fill-array-data v14, :array_11e

    aput-object v14, v13, v8

    new-array v14, v7, [I

    fill-array-data v14, :array_126

    aput-object v14, v13, v9

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_9c
    array-length v14, v13

    if-ge v5, v14, :cond_ac

    aget-object v14, v13, v5

    aget v14, v14, v9

    aget-object v15, v13, v5

    aget v15, v15, v8

    sub-int/2addr v14, v15

    add-int/2addr v0, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    :cond_ac
    invoke-static {v11, v4}, Lmiui/content/res/IconCustomizer;->getHue(I[I)F

    move-result v14

    int-to-float v15, v0

    mul-float/2addr v15, v14

    const/high16 v16, 0x43b40000    # 360.0f

    div-float v15, v15, v16

    const/4 v5, 0x0

    :goto_b7
    array-length v14, v13

    if-ge v5, v14, :cond_d5

    aget-object v14, v13, v5

    aget v14, v14, v9

    aget-object v16, v13, v5

    aget v16, v16, v8

    sub-int v14, v14, v16

    int-to-float v3, v14

    cmpl-float v3, v15, v3

    if-lez v3, :cond_cf

    int-to-float v3, v14

    sub-float/2addr v15, v3

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x3

    goto :goto_b7

    :cond_cf
    aget-object v3, v13, v5

    aget v3, v3, v8

    int-to-float v3, v3

    add-float/2addr v15, v3

    :cond_d5
    invoke-static {v11, v15, v4}, Lmiui/content/res/IconCustomizer;->setHue(IF[I)I

    move-result v3

    const v11, 0x3f19999a    # 0.6f

    invoke-static {v3, v11, v4}, Lmiui/content/res/IconCustomizer;->setValue(IF[I)I

    move-result v3

    const v11, 0x3ecccccd    # 0.4f

    invoke-static {v3, v11, v4}, Lmiui/content/res/IconCustomizer;->setSaturation(IF[I)I

    move-result v11

    :goto_e7
    invoke-static {v11, v2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    new-array v1, v1, [F

    aget v3, v2, v8

    int-to-float v3, v3

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v3, v13

    aput v3, v1, v8

    aget v3, v2, v9

    int-to-float v3, v3

    div-float/2addr v3, v13

    aput v3, v1, v9

    aget v3, v2, v7

    int-to-float v3, v3

    div-float/2addr v3, v13

    aput v3, v1, v7

    const/4 v3, 0x3

    aget v7, v2, v3

    int-to-float v7, v7

    div-float/2addr v7, v13

    aput v7, v1, v3

    return-object v1

    :array_108
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_11e
    .array-data 4
        0x64
        0x6e
    .end array-data

    :array_126
    .array-data 4
        0xbe
        0x113
    .end array-data
.end method

.method public static checkModIconsTimestamp()V
    .registers 10

    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x0

    :try_start_e
    sget-object v2, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-static {v2}, Lmiui/io/FileStat;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getMiuiModDownloadIconDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_55

    new-instance v6, Ljava/io/File;

    sget-object v7, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_51

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "miui version update"

    move-object v1, v8

    :cond_4d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_54

    :cond_51
    const-string v7, "miui version flag miss"

    move-object v1, v7

    :goto_54
    goto :goto_58

    :cond_55
    const-string v6, "mod download icon update"
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_57} :catch_59

    move-object v1, v6

    :goto_58
    goto :goto_5f

    :catch_59
    move-exception v2

    const-string v1, "miui version read exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check time stamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconCustomizer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_81

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/content/res/ThemeNativeUtils;->deleteContents(Ljava/lang/String;)V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8e

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/theme/ThemeFileUtils;->mkdirs(Ljava/lang/String;)Z

    :cond_8e
    return-void
.end method

.method public static clearCache()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    return-void
.end method

.method public static clearCache(Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3c

    sget-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_39

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_e
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_36

    sget-object v0, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_17
    sget-object v1, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_33

    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    sput-object v0, Lmiui/content/res/IconCustomizer;->sHolder:Lmiui/content/res/IconCustomizer$Holder;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    const/4 v0, -0x1

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    goto :goto_90

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    :cond_3c
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_3f
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_64
    goto :goto_49

    :cond_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_94

    sget-object v1, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_69
    sget-object v0, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_8e
    goto :goto_73

    :cond_8f
    monitor-exit v1

    :goto_90
    return-void

    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_69 .. :try_end_93} :catchall_91

    throw v0

    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .registers 8

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->deleteContents(Ljava/lang/String;)V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    goto :goto_47

    :cond_14
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    array-length v2, v1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_44

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_44
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method private static colorToRGB(I[I)V
    .registers 4

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    aput v0, p1, v1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aput v0, p1, v1

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x2

    aput v0, p1, v1

    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 29

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const/16 v17, 0x4

    div-int/lit8 v14, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    div-int/lit8 v13, v0, 0x4

    new-array v12, v14, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v12

    move v8, v13

    move v11, v15

    move-object/from16 v18, v12

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v0

    const/4 v0, 0x1

    const/16 v19, 0x0

    move-object v5, v11

    move-object/from16 v6, v18

    move-object/from16 v20, v11

    move v11, v15

    move-object/from16 v21, v12

    move/from16 v12, v16

    move/from16 v22, v13

    move v13, v0

    move v4, v14

    move-object/from16 v14, v19

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_9d

    sget-object v5, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_81

    const-class v5, Lmiui/content/res/IconCustomizer;

    monitor-enter v5

    :try_start_67
    sget-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7c

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sput-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    :cond_7c
    monitor-exit v5

    goto :goto_81

    :catchall_7e
    move-exception v0

    monitor-exit v5
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_7e

    throw v0

    :cond_81
    :goto_81
    sget-object v5, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    move-object/from16 v13, v20

    invoke-virtual {v13, v1, v14, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move/from16 v8, v22

    move v11, v15

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v0, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_9f

    :cond_9d
    move-object/from16 v13, v20

    :goto_9f
    const/4 v5, 0x0

    if-eqz v2, :cond_b5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    if-ne v6, v4, :cond_b5

    move-object/from16 v11, v18

    move/from16 v12, v22

    invoke-static {v4, v15, v12, v11, v2}, Lmiui/content/res/IconCustomizer;->calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_bb

    :cond_b5
    move-object/from16 v11, v18

    move/from16 v12, v22

    move-object/from16 v18, v5

    :goto_bb
    const/4 v5, 0x3

    if-eqz v18, :cond_12d

    aget v6, v18, v5

    cmpl-float v6, v6, v14

    if-eqz v6, :cond_12d

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v8, 0x14

    new-array v8, v8, [F

    aget v9, v18, v0

    aput v9, v8, v0

    const/4 v0, 0x1

    aput v14, v8, v0

    const/4 v9, 0x2

    aput v14, v8, v9

    aput v14, v8, v5

    aput v14, v8, v17

    const/4 v10, 0x5

    aput v14, v8, v10

    const/4 v10, 0x6

    aget v0, v18, v0

    aput v0, v8, v10

    const/4 v0, 0x7

    aput v14, v8, v0

    const/16 v0, 0x8

    aput v14, v8, v0

    const/16 v0, 0x9

    aput v14, v8, v0

    const/16 v0, 0xa

    aput v14, v8, v0

    const/16 v0, 0xb

    aput v14, v8, v0

    const/16 v0, 0xc

    aget v9, v18, v9

    aput v9, v8, v0

    const/16 v0, 0xd

    aput v14, v8, v0

    const/16 v0, 0xe

    aput v14, v8, v0

    const/16 v0, 0xf

    aput v14, v8, v0

    const/16 v0, 0x10

    aput v14, v8, v0

    const/16 v0, 0x11

    aput v14, v8, v0

    const/16 v0, 0x12

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v0

    const/16 v0, 0x13

    aput v14, v8, v0

    invoke-virtual {v7, v8}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v13, v2, v14, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_12d
    const/4 v0, 0x0

    if-eqz v18, :cond_136

    aget v5, v18, v5

    cmpl-float v5, v5, v14

    if-nez v5, :cond_138

    :cond_136
    if-nez v18, :cond_13d

    :cond_138
    if-eqz v3, :cond_13d

    invoke-virtual {v13, v3, v14, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_13d
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object v5, v13

    move-object v6, v11

    move v8, v12

    move-object/from16 v20, v11

    move v11, v15

    move/from16 v22, v12

    move/from16 v12, v16

    move-object/from16 v23, v13

    move/from16 v13, v17

    move v0, v14

    move-object/from16 v14, v19

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    move v5, v4

    move-object/from16 v4, p4

    if-eqz v4, :cond_164

    move-object/from16 v6, v23

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v0, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_166

    :cond_164
    move-object/from16 v6, v23

    :goto_166
    return-object v21
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v0, :cond_15

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    invoke-virtual {v0, p0}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    invoke-static {v0}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_15
    sget-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1f
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p4}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;
    .registers 15

    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    instance-of v4, p0, Landroid/graphics/drawable/PaintDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_68

    :cond_22
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_68

    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_62

    iget v8, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v7, v8, :cond_69

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v8

    move p1, v8

    const-string v8, "IconCustomizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BitmapDensity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  setTargetDensity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_62
    if-nez v7, :cond_69

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_69

    :cond_68
    :goto_68
    nop

    :cond_69
    :goto_69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-eqz p2, :cond_77

    move v4, v1

    move v6, v2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_77
    invoke-virtual {p0, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v7, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    int-to-float v8, v1

    int-to-float v9, v4

    mul-float/2addr v9, p1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v10, v2

    int-to-float v11, v6

    mul-float/2addr v11, p1

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    monitor-exit v0

    return-object v5

    :catchall_a6
    move-exception v1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_3 .. :try_end_a8} :catchall_a6

    throw v1
.end method

.method private static ensureIconConfigLoaded()V
    .registers 3

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_1c

    const-class v0, Lmiui/content/res/IconCustomizer;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v1, :cond_17

    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->makeIconMatrix(Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/Matrix;

    move-result-object v2

    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static ensureMiuiVersionFlagExist(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    sget-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "customized_icons_version"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_28
    :try_start_28
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v1

    :goto_3e
    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    :cond_53
    return-void
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8

    invoke-static {p0, p5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v1, :cond_18

    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_pattern.png"

    const-string v4, "icon_border.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_18
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    const-string v2, "icon_mask.png"

    const-string v3, "icon_shortcut.png"

    const-string v4, "icon_shortcut_arrow.png"

    invoke-static {v0, v2, v1, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_18
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getAdaptiveIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 12

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getAdaptiveIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1c

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getIconBitmapsFromTheme(Ljava/util/List;)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lmiui/theme/IconCustomizerUtils;->transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1c
    if-nez v2, :cond_2c

    if-eqz p3, :cond_2c

    if-eqz p4, :cond_2c

    iget v3, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v3, :cond_28

    if-eqz p5, :cond_2c

    :cond_28
    invoke-static {p0, p1, p3, p4}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveIconFromPackage(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2c
    if-nez v2, :cond_42

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    if-eqz v3, :cond_42

    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->isModIconEnabledForPackageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getMiuiModIconBitamps(Ljava/util/List;)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lmiui/theme/IconCustomizerUtils;->transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_42
    if-eqz v2, :cond_56

    sget-object v3, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v3

    :try_start_47
    sget-object v4, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_56

    :catchall_53
    move-exception v4

    monitor-exit v3
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_53

    throw v4

    :cond_56
    :goto_56
    return-object v2
.end method

.method private static getAdaptiveIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    move-object v0, v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_29

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :cond_27
    const/4 v1, 0x0

    return-object v1

    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public static getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "animating_icons/"

    const-string v1, "fancy/manifest.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigIconMaskValue()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    return-object v0
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .registers 16

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_a

    return v1

    :cond_a
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v4

    invoke-static {v0, v2, v2}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v5

    invoke-static {v0, v3, v3}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    invoke-static {v0, v3, v2}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v3

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentWidth()I

    move-result v7

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v10, v3, v6

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int v11, v5, v4

    add-int/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v10, 0x3f4ccccd    # 0.8f

    mul-float v11, v2, v10

    cmpg-float v11, v9, v11

    if-ltz v11, :cond_64

    mul-float/2addr v10, v9

    cmpg-float v10, v2, v10

    if-gez v10, :cond_5c

    goto :goto_64

    :cond_5c
    invoke-static {v0, v6, v4, v3, v5}, Lmiui/content/res/IconCustomizer;->isRegularShape(Landroid/graphics/Bitmap;IIII)Z

    move-result v10

    if-nez v10, :cond_65

    const/4 v1, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    const/4 v1, 0x0

    :cond_65
    :goto_65
    if-eqz v1, :cond_70

    int-to-float v10, v7

    div-float/2addr v10, v9

    int-to-float v11, v8

    div-float/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    return v10

    :cond_70
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIrregularContentWidth()I

    move-result v10

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIrregularContentHeight()I

    move-result v11

    int-to-float v12, v10

    div-float/2addr v12, v9

    int-to-float v13, v11

    div-float/2addr v13, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    return v14
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13

    invoke-static/range {p0 .. p5}, Lmiui/content/res/IconCustomizer;->getCustomizedNormalIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_16

    if-eqz p3, :cond_16

    if-eqz p4, :cond_16

    if-eqz p2, :cond_16

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 6

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    invoke-static {p0, v0, p3, v1}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIconContentHeight()I
    .registers 3

    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_content_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    :cond_11
    return v0
.end method

.method private static getCustomizedIconContentWidth()I
    .registers 3

    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_content_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    :cond_11
    return v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconHeight()I
    .registers 3

    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    :cond_11
    return v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_e

    return-object v1

    :cond_e
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    if-nez v1, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2c
    if-nez v1, :cond_57

    const/4 v2, 0x0

    if-eqz p3, :cond_53

    if-eqz p0, :cond_53

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->isModIconEnabledForPackageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x0

    :goto_3e
    if-nez v2, :cond_53

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_53
    invoke-static {p0, v2, p2, v0}, Lmiui/content/res/IconCustomizer;->transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :cond_57
    if-eqz v1, :cond_6f

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_5c
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_6f

    :catchall_6c
    move-exception v3

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_5c .. :try_end_6e} :catchall_6c

    throw v3

    :cond_6f
    :goto_6f
    return-object v1
.end method

.method private static getCustomizedIconVersionContent()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconWidth()I
    .registers 3

    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    :cond_11
    return v0
.end method

.method private static getCustomizedIrregularContentHeight()I
    .registers 3

    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    if-lez v1, :cond_10

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v0, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    goto :goto_1a

    :cond_10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_irregular_content_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1a
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    :cond_1c
    return v0
.end method

.method private static getCustomizedIrregularContentWidth()I
    .registers 3

    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    if-lez v1, :cond_10

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v0, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    goto :goto_1a

    :cond_10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_irregular_content_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1a
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    :cond_1c
    return v0
.end method

.method private static getCustomizedNormalIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 15

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    const/4 v4, 0x0

    invoke-static {p0, v0, v4, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_1e

    return-object v3

    :cond_1e
    const/4 v5, 0x0

    if-eqz p3, :cond_2d

    if-eqz p4, :cond_2d

    iget v6, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v6, :cond_29

    if-eqz p5, :cond_2d

    :cond_29
    invoke-virtual {v1, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_2d
    invoke-static {p0, v4, v5, v2}, Lmiui/content/res/IconCustomizer;->transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_49

    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v4

    :try_start_36
    sget-object v6, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_49

    :catchall_46
    move-exception v6

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_46

    throw v6

    :cond_49
    :goto_49
    return-object v3
.end method

.method private static getDimension(Ljava/lang/String;)I
    .registers 3

    nop

    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    return v0
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v0, v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1d

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return-object v1

    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_26
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_d

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_d
    return-object v0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .registers 15

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-static {p0}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    const/4 v4, -0x1

    if-nez p2, :cond_15

    move v5, v4

    goto :goto_16

    :cond_15
    move v5, v0

    :goto_16
    if-nez p2, :cond_1a

    move v6, v4

    goto :goto_1b

    :cond_1a
    move v6, v1

    :goto_1b
    const/4 v7, 0x1

    if-eqz p2, :cond_20

    move v8, v4

    goto :goto_21

    :cond_20
    move v8, v7

    :goto_21
    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    move v4, v7

    :goto_25
    if-eqz v3, :cond_64

    const/4 v7, 0x0

    :cond_28
    if-nez v7, :cond_64

    const/16 v9, 0x32

    if-eqz p1, :cond_49

    add-int/2addr v6, v4

    if-ltz v6, :cond_64

    if-lt v6, v1, :cond_34

    goto :goto_64

    :cond_34
    const/4 v5, 0x0

    :goto_35
    if-ge v5, v0, :cond_28

    mul-int v10, v6, v2

    shl-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    if-le v10, v9, :cond_46

    add-int/lit8 v7, v7, 0x1

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_49
    add-int/2addr v5, v8

    if-ltz v5, :cond_64

    if-lt v5, v0, :cond_4f

    goto :goto_64

    :cond_4f
    const/4 v6, 0x0

    :goto_50
    if-ge v6, v1, :cond_28

    mul-int v10, v6, v2

    shl-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    if-le v10, v9, :cond_61

    add-int/lit8 v7, v7, 0x1

    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    :cond_64
    :goto_64
    if-eqz p1, :cond_68

    move v7, v6

    goto :goto_69

    :cond_68
    move v7, v5

    :goto_69
    return v7
.end method

.method public static getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "fancy_icons/"

    const-string v1, "manifest.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ".png"

    if-nez p1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHue(I[I)F
    .registers 10

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, p1, v0

    aget v2, p1, v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v2, v0, v1

    if-nez v2, :cond_28

    const/4 v3, 0x0

    return v3

    :cond_28
    const/4 v3, 0x0

    :goto_29
    if-ge v3, v4, :cond_32

    aget v5, p1, v3

    if-eq v1, v5, :cond_32

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_32
    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x78

    int-to-float v4, v4

    add-int/lit8 v5, v3, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    int-to-float v7, v2

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    return v4
.end method

.method public static getIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 13

    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_14

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mSupportLayerIcon:Z

    if-eqz v1, :cond_14

    invoke-static/range {p0 .. p5}, Lmiui/content/res/IconCustomizer;->getAdaptiveIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_14
    if-nez v0, :cond_1a

    invoke-static/range {p0 .. p5}, Lmiui/content/res/IconCustomizer;->getCustomizedNormalIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_1a
    if-nez v0, :cond_2c

    if-eqz p3, :cond_2c

    if-eqz p4, :cond_2c

    if-eqz p2, :cond_2c

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lmiui/content/res/IconCustomizer;->getIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2c
    return-object v0
.end method

.method private static getIconBitmapsFromTheme(Ljava/util/List;)[Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_22

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    :goto_22
    return-object v0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    move-object v0, v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_19

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1

    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_30

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "%s.png"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    return-object v0
.end method

.method private static getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_f

    if-eqz p0, :cond_f

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v1, :cond_f

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    return-object v3

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_69
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMamlAdaptiveIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "layer_animating_icons/"

    const-string v1, "config.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMiuiModBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_5a

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_39
    const/4 v7, 0x5

    if-ge v6, v7, :cond_5a

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "%s/%d.png"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_5a

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    return-object v2
.end method

.method private static getMiuiModDownloadIconDir()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_19

    const-string v0, "com.android.stk.png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "com.android.stk.cu.png"

    goto :goto_19

    :cond_f
    const-string v0, "com.android.stk.StkLauncherActivity2.png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "com.android.stk.cu.2.png"

    :cond_19
    :goto_19
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_42
    return-object v1
.end method

.method private static getMiuiModIconBitamps(Ljava/util/List;)[Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getMiuiModBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    return-object v0
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_18
    if-eqz v0, :cond_2c

    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_1d
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_2c

    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_29

    throw v2

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public static getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 6

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_13
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v2

    :cond_26
    :goto_26
    return-object v0
.end method

.method private static getSaturation(I[I)F
    .registers 8

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, p1, v0

    aget v2, p1, v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_30

    if-ne v0, v1, :cond_27

    goto :goto_30

    :cond_27
    const/high16 v2, 0x3f800000    # 1.0f

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v2, v0

    div-float/2addr v3, v2

    return v3

    :cond_30
    :goto_30
    int-to-float v2, p0

    return v2
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .registers 12

    instance-of v0, p0, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v0, :cond_60

    if-gtz v2, :cond_14

    goto :goto_60

    :cond_14
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentWidth()I

    move-result v3

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentHeight()I

    move-result v4

    int-to-float v5, v3

    int-to-float v6, v0

    div-float/2addr v5, v6

    int-to-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    if-eqz p1, :cond_37

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v7, v0

    div-float/2addr v1, v7

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v7, v2

    div-float/2addr v5, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    return v6

    :cond_37
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content Ratio = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "IconCustomizer"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_57

    return v7

    :cond_57
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    :cond_60
    :goto_60
    return v1
.end method

.method private static getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;
    .registers 4

    sget-object v0, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v0, :cond_1e

    const-class v0, Lmiui/content/res/IconCustomizer;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_12

    move-object v1, p0

    :cond_12
    new-instance v2, Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {v2, v1}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :goto_1e
    sget-object v0, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    return-object v0
.end method

.method private static getValue(I[I)F
    .registers 5

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public static hdpiIconSizeToCurrent(D)D
    .registers 6

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static hdpiIconSizeToCurrent(F)F
    .registers 3

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static hdpiIconSizeToCurrent(I)I
    .registers 3

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static isAdaptiveIconDrawale(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1d

    if-eqz p0, :cond_1d

    :try_start_9
    const-string v1, "android.graphics.drawable.AdaptiveIconDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v0, v2

    goto :goto_1d

    :catch_15
    move-exception v1

    const-string v2, "IconCustomizer"

    const-string v3, "check adaptive icon fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return v0
.end method

.method private static isModIconEnabled()Z
    .registers 3

    sget-object v0, Lmiui/content/res/IconCustomizer;->sHolder:Lmiui/content/res/IconCustomizer$Holder;

    if-nez v0, :cond_18

    const-class v0, Lmiui/content/res/IconCustomizer;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/content/res/IconCustomizer;->sHolder:Lmiui/content/res/IconCustomizer$Holder;

    if-nez v1, :cond_13

    new-instance v1, Lmiui/content/res/IconCustomizer$Holder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/content/res/IconCustomizer$Holder;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sHolder:Lmiui/content/res/IconCustomizer$Holder;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    :cond_18
    :goto_18
    sget-object v0, Lmiui/content/res/IconCustomizer;->sHolder:Lmiui/content/res/IconCustomizer$Holder;

    iget-boolean v0, v0, Lmiui/content/res/IconCustomizer$Holder;->sModIconEnabled:Z

    return v0
.end method

.method public static isModIconEnabledForPackageName(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/content/res/IconCustomizer;->sModIconPkgWhiteList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lmiui/content/res/IconCustomizer;->isModIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static isRegularShape(Landroid/graphics/Bitmap;IIII)Z
    .registers 13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-static {p0}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    :cond_c
    sub-int v3, p3, p1

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p1

    :goto_11
    sub-int v4, p3, p1

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    const/4 v5, 0x0

    const/16 v6, 0x32

    if-ge v3, v4, :cond_3c

    mul-int v4, p2, v0

    shl-int/lit8 v7, v3, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v6, :cond_2b

    return v5

    :cond_2b
    mul-int v4, p4, v0

    shl-int/lit8 v7, v3, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v6, :cond_39

    return v5

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3c
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p2

    :goto_41
    sub-int v4, p4, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p2

    if-ge v3, v4, :cond_69

    mul-int v4, v3, v0

    shl-int/lit8 v7, p1, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v6, :cond_58

    return v5

    :cond_58
    mul-int v4, v3, v0

    shl-int/lit8 v7, p3, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v6, :cond_66

    return v5

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_69
    return v2
.end method

.method private static loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .registers 16

    new-instance v0, Lmiui/content/res/IconCustomizer$IconConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    move-object v2, v0

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const-string v3, "IconCustomizer"

    if-eqz v0, :cond_2a6

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_2a6

    :cond_15
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string v4, "transform_config.xml"

    invoke-virtual {v0, v4, v1}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_27

    const-string v0, "can\'t load transform_config.xml"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    const/4 v4, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    :try_start_2c
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_29f

    move-object v4, v6

    nop

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_298

    nop

    if-eqz v4, :cond_297

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v0, 0x0

    :goto_45
    :try_start_45
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    if-ge v0, v7, :cond_28d

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_58

    goto/16 :goto_289

    :cond_58
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "IconFilters"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v8

    iput-object v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    goto/16 :goto_289

    :cond_76
    const-string v10, "PointsMapping"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13e

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_8d
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v13, v14, :cond_108

    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    if-eq v14, v8, :cond_9e

    goto :goto_104

    :cond_9e
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string v15, "Point"

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_104

    const-string v8, "fromX"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "fromY"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "toX"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "toY"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_104
    :goto_104
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_8d

    :cond_108
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_13c

    const/16 v13, 0x8

    if-gt v8, v13, :cond_13c

    new-array v13, v8, [F

    iput-object v13, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    new-array v13, v8, [F

    iput-object v13, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    const/4 v13, 0x0

    :goto_11b
    if-ge v13, v8, :cond_13c

    iget-object v14, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v13

    iget-object v14, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_11b

    :cond_13c
    goto/16 :goto_289

    :cond_13e
    const-string v8, "Config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_144} :catch_291

    const-string v10, "value"

    if-eqz v8, :cond_17c

    :try_start_148
    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UseModIcon"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_161

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    goto :goto_17a

    :cond_161
    const-string v11, "SupportLayerIcon"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_170

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSupportLayerIcon:Z

    goto :goto_17a

    :cond_170
    const-string v11, "ConfigIconMask"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17a

    iput-object v10, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    :cond_17a
    :goto_17a
    goto/16 :goto_289

    :cond_17c
    const-string v8, "ScaleX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_190

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_289

    :cond_190
    const-string v8, "ScaleY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_289

    :cond_1a4
    const-string v8, "SkewX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b8

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_289

    :cond_1b8
    const-string v8, "SkewY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cc

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_289

    :cond_1cc
    const-string v8, "TransX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e4

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_289

    :cond_1e4
    const-string v8, "TransY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1fc

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_289

    :cond_1fc
    const-string v8, "RotateX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_210

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_289

    :cond_210
    const-string v8, "RotateY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_223

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto :goto_289

    :cond_223
    const-string v8, "RotateZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_236

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto :goto_289

    :cond_236
    const-string v8, "CameraX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto :goto_289

    :cond_24d
    const-string v8, "CameraY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_264

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto :goto_289

    :cond_264
    const-string v8, "OverridedIrregularContentWidth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_277

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->getDimension(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    goto :goto_289

    :cond_277
    const-string v8, "OverridedIrregularContentHeight"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_289

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->getDimension(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    :cond_289
    :goto_289
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_45

    :cond_28d
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_290} :catch_291

    goto :goto_297

    :catch_291
    move-exception v0

    const-string v7, "transform_config.xml parse failed."

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_297
    :goto_297
    return-object v2

    :catch_298
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v2

    :catch_29f
    move-exception v0

    const-string v6, "load icon config failed."

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_2a6
    :goto_2a6
    const-string v0, "can\'t load ThemeResources"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "ignoreWhenNotSupported"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v0, 0x0

    move v4, v0

    :goto_c
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_148

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_21

    move-object/from16 v17, v2

    goto/16 :goto_140

    :cond_21
    new-instance v0, Lmiui/imagefilters/ImageFilterBuilder;

    invoke-direct {v0}, Lmiui/imagefilters/ImageFilterBuilder;-><init>()V

    move-object v7, v0

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "Filter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v0, 0x0

    :goto_3f
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    const-string v12, "ignoreWhenNotSupported"

    const-string v13, "name"

    if-ge v0, v11, :cond_109

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v6, :cond_57

    move-object/from16 v17, v2

    goto/16 :goto_100

    :cond_57
    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Param"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fe

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v15

    if-eqz v15, :cond_be

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_80
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_bb

    invoke-interface {v15, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v1, 0x1

    if-eq v6, v1, :cond_94

    move-object/from16 v17, v2

    goto :goto_b3

    :cond_94
    invoke-interface {v15, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v2

    const-string v2, "IconFilters"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b3
    :goto_b3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto :goto_80

    :cond_bb
    move-object/from16 v17, v2

    goto :goto_c0

    :cond_be
    move-object/from16 v17, v2

    :goto_c0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e4

    const-string v1, "value"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_d4
    if-ge v6, v5, :cond_e4

    aget-object v15, v2, v6

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    add-int/lit8 v6, v6, 0x1

    goto :goto_d4

    :cond_e4
    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const/4 v2, 0x0

    goto :goto_fa

    :cond_f0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_fa
    invoke-virtual {v7, v1, v14, v2}, Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_100

    :cond_fe
    move-object/from16 v17, v2

    :goto_100
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto/16 :goto_3f

    :cond_109
    move-object/from16 v17, v2

    invoke-interface {v8, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setFilterName(Ljava/lang/String;)V

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x0

    goto :goto_129

    :cond_11f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_129
    invoke-virtual {v7, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setIgnoreWhenNotSupported(Z)V

    :try_start_12c
    invoke-virtual {v7}, Lmiui/imagefilters/ImageFilterBuilder;->createImageFilter()Lmiui/imagefilters/IImageFilter;

    move-result-object v0

    if-eqz v0, :cond_135

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Lmiui/imagefilters/ImageFilterBuilder$NoSupportException; {:try_start_12c .. :try_end_135} :catch_136

    :cond_135
    goto :goto_140

    :catch_136
    move-exception v0

    invoke-virtual {v0}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;->printStackTrace()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_14a

    :cond_13e
    move-object/from16 v17, v2

    :goto_140
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto/16 :goto_c

    :cond_148
    move-object/from16 v17, v2

    :goto_14a
    new-instance v0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiui/imagefilters/IImageFilter;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiui/imagefilters/IImageFilter;

    invoke-direct {v0, v1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;-><init>([Lmiui/imagefilters/IImageFilter;)V

    return-object v0
.end method

.method private static makeIconMatrix(Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/Matrix;
    .registers 8

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_19

    iget-object v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    const/4 v5, 0x0

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v1, v1

    div-int/lit8 v6, v1, 0x2

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_6c

    :cond_19
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateX(F)V

    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v2, v4

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v2, v4

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postSkew(FF)Z

    :goto_6c
    return-object v0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .registers 21

    move-object/from16 v1, p1

    const-string v0, "icon_mask.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v0, "icon_background.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v0, "icon_pattern.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v0, "icon_border.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v1, :cond_3c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    :cond_3c
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v12, "IconCustomizer"

    const-string v13, "prepareCustomizedIcons start"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    move/from16 v16, v0

    new-instance v0, Lmiui/content/res/IconCustomizer$1;

    invoke-direct {v0, v15, v7}, Lmiui/content/res/IconCustomizer$1;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    goto :goto_5d

    :cond_7a
    move/from16 v16, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move/from16 v15, v16

    :goto_82
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/concurrent/Future;

    :try_start_90
    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_93} :catch_9d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_90 .. :try_end_93} :catch_94

    :goto_93
    goto :goto_a6

    :catch_94
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_a6

    :catch_9d
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_93

    :goto_a6
    if-eqz v1, :cond_ae

    add-int/lit8 v0, v15, 0x1

    invoke-interface {v1, v15}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move v15, v0

    :cond_ae
    goto :goto_82

    :cond_af
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "prepareCustomizedIcons end "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v14, v2

    move-object/from16 v18, v3

    sub-long v2, v16, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_d4

    invoke-interface/range {p1 .. p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    :cond_d4
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .registers 4

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/content/res/ThemeRuntimeManager;->saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .registers 6

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    :cond_12
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    if-ne v1, v2, :cond_26

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    if-ne v1, v2, :cond_26

    return-object p0

    :cond_26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_5c

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v1, v2

    float-to-int v2, v2

    invoke-static {p0, v2}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object p0, v3

    :cond_5c
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object v2
.end method

.method private static setHue(IF[I)I
    .registers 13

    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, p2, v0

    aget v2, p2, v2

    aget v3, p2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v2, v0, v1

    if-nez v2, :cond_27

    return p0

    :cond_27
    :goto_27
    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    const/high16 v5, 0x43b40000    # 360.0f

    if-gez v4, :cond_30

    add-float/2addr p1, v5

    goto :goto_27

    :cond_30
    :goto_30
    cmpl-float v4, p1, v5

    if-lez v4, :cond_36

    sub-float/2addr p1, v5

    goto :goto_30

    :cond_36
    const/high16 v4, 0x42f00000    # 120.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v5, v4, 0x78

    int-to-float v5, v5

    sub-float/2addr p1, v5

    add-int/lit8 v5, v4, 0x2

    rem-int/lit8 v5, v5, 0x3

    aput v1, p2, v5

    add-int/lit8 v4, v5, 0x2

    rem-int/lit8 v4, v4, 0x3

    int-to-float v6, v1

    int-to-float v7, v2

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v7, v9

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p2, v4

    add-int/lit8 v4, v5, 0x1

    rem-int/lit8 v4, v4, 0x3

    int-to-float v6, v0

    int-to-float v7, v2

    sub-float v9, p1, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v7, v3

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v3, v6

    aput v3, p2, v4

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v3

    return v3
.end method

.method private static setSaturation(IF[I)I
    .registers 11

    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v3, p2, v0

    aget v5, p2, v2

    aget v6, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v3, :cond_58

    if-ne v3, v1, :cond_27

    goto :goto_58

    :cond_27
    const/high16 v5, 0x3f800000    # 1.0f

    sub-int v6, v3, v1

    int-to-float v6, v6

    mul-float/2addr v6, v5

    int-to-float v5, v3

    div-float/2addr v6, v5

    int-to-float v5, v3

    aget v7, p2, v0

    sub-int v7, v3, v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, p2, v0

    int-to-float v0, v3

    aget v5, p2, v2

    sub-int v5, v3, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p2, v2

    int-to-float v0, v3

    aget v2, p2, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p2, v4

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v0

    return v0

    :cond_58
    :goto_58
    return p0
.end method

.method private static setValue(IF[I)I
    .registers 9

    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v1, :cond_17

    return p0

    :cond_17
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v5, v1

    mul-float/2addr v5, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v5, v3

    aget v3, p2, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, p2, v0

    aget v0, p2, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p2, v2

    aget v0, p2, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p2, v4

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v0

    return v0
.end method

.method private static transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10

    const/4 v0, 0x0

    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->isAdaptiveIconDrawale(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_12

    if-eqz p2, :cond_12

    invoke-static {p2, v2}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v3

    invoke-static {p2, v3, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_12
    if-eqz p1, :cond_35

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    const-string v2, "Generate customized icon for %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconCustomizer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "icon_mask.png"

    const-string v3, "icon_background.png"

    const-string v4, "icon_pattern.png"

    const-string v5, "icon_border.png"

    invoke-static {p1, v2, v3, v4, v5}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez v1, :cond_35

    invoke-static {p3, p1, p0}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    :cond_35
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method
