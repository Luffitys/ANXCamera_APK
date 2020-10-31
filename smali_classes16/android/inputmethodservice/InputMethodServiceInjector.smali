.class Landroid/inputmethodservice/InputMethodServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardTypeListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardLanguageListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    }
.end annotation


# static fields
.field private static final FUNCTION_CLIPBOARD:Ljava/lang/String; = "clipboard_phrase"

.field private static final FUNCTION_SWITCH:Ljava/lang/String; = "switch_input_method"

.field private static final FUNCTION_SWITCH_KEYBOARD_LANGUAGE:Ljava/lang/String; = "switch_keyboard_language"

.field private static final FUNCTION_SWITCH_KEYBOARD_TYPE:Ljava/lang/String; = "switch_keyboard_type"

.field private static final FUNCTION_VOICE:Ljava/lang/String; = "voice_input"

.field private static final FUNCTION_XIAOAI:Ljava/lang/String; = "xiaoai_input"

.field private static final NO_FUNCTION:Ljava/lang/String; = "no_function"

.field private static final QUICK_MOVE_CURSOR:Ljava/lang/String; = "quick_move_cursor"

.field public static final TAG:Ljava/lang/String; = "InputMethodService"

.field private static sBottomIconStates:[[I

.field private static sBottomView:Landroid/widget/RelativeLayout;

.field private static sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

.field private static sCanPopCloudClipboardViewLeft:Z

.field private static sCanPopCloudClipboardViewRight:Z

.field private static sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

.field private static sClipContentType:I

.field private static sClipQuickPasteEnable:Z

.field private static sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

.field private static sClipboardUrlLink:Ljava/lang/String;

.field private static sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

.field private static sCloudClipPasteMode:I

.field private static sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

.field private static sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

.field private static sCloudClipboardTimeStamp:J

.field private static sDefBottomViewColor:I

.field private static sDefIconColorPressed:I

.field private static sDefIconColorUnpressed:I

.field private static sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static sDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static sFloatEnable:Z

.field private static sGuideCirImg:Landroid/widget/ImageView;

.field private static sGuideRecImg:Landroid/view/View;

.field private static sImeLastMiui10Version:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sImeMinVersionSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sImeWindowShowTimes:I

.field private static sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

.field private static sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

.field private static sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

.field private static sIsImeSupport:I

.field private static sIsLoadPluginEnable:Z

.field private static sIsMiuiBottomEnabled:Z

.field private static sIsMiuiBottomSupport:I

.field private static sIsScreenLandscape:Z

.field private static sLatestClipboardContent:Ljava/lang/String;

.field private static sLatestClipboardTimeStamp:J

.field private static sLeftButton:Landroid/widget/ImageView;

.field private static sLeftLayout:Landroid/widget/LinearLayout;

.field private static sLeftRedPoint:Landroid/widget/ImageView;

.field private static sLeftSelectedKey:Ljava/lang/String;

.field private static sLocalClipboardTimeStamp:J

.field private static sMiddleSelectedKey:Ljava/lang/String;

.field private static sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

.field private static sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

.field private static sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

.field private static sNeedClipboardBubbleShown:Z

.field private static sNeedHandleComputeInsets:Z

.field private static sPluginClassLoader:Ljava/lang/ClassLoader;

.field private static sRightButton:Landroid/widget/ImageView;

.field private static sRightLayout:Landroid/widget/LinearLayout;

.field private static sRightRedPoint:Landroid/widget/ImageView;

.field private static sRightSelectedKey:Ljava/lang/String;

.field private static sScreenBroadcastReceiver:Landroid/inputmethodservice/ScreenBroadcastReceiver;

.field private static sScreenHeightWithoutStatusBar:I

.field private static sStatusBarHeight:I

.field private static sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

.field private static sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

.field private static sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

.field private static sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field private static sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

.field private static sVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    const/4 v1, -0x1

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    const/4 v2, 0x0

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    const-string v3, ""

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiddleSelectedKey:Ljava/lang/String;

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardUrlLink:Ljava/lang/String;

    const-wide/16 v3, 0x0

    sput-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    sput-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLocalClipboardTimeStamp:J

    sput-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    const/4 v1, 0x2

    new-array v1, v1, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, -0x10100a7

    aput v4, v3, v0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    const v4, 0x10100a7

    aput v4, v3, v0

    aput-object v3, v1, v2

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomIconStates:[[I

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeWindowShowTimes:I

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsLoadPluginEnable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x1ee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.iflytek.inputmethod.miui"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v4, 0x1dd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.baidu.input_mi"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    const/16 v6, 0x1ee9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setMiuiBottomMargin(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    return p0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    return p0
.end method

.method static synthetic access$1200()J
    .registers 2

    sget-wide v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .registers 2

    sput-wide p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$1302(J)J
    .registers 2

    sput-wide p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$1400()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addCloudClipboardPopView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1602(I)I
    .registers 1

    sput p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    return p0
.end method

.method static synthetic access$1800()V
    .registers 0

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->dismissGuideView()V

    return-void
.end method

.method static synthetic access$1900(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isMiuiBottomEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Landroid/inputmethodservice/InputMethodService$Insets;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/inputmethodservice/InputMethodSwitchPopupView;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/inputmethodservice/InputMethodSwitchPopupView;
    .registers 1

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    return-object p0
.end method

.method static synthetic access$2300()Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .registers 1

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object p0
.end method

.method static synthetic access$2400()Landroid/widget/ImageView;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/widget/ImageView;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600()I
    .registers 1

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .registers 1

    sput p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    return p0
.end method

.method static synthetic access$2700()V
    .registers 0

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkClipboardUrlAndTaoBao()V

    return-void
.end method

.method static synthetic access$2800(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->openQuickPasteView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900()Z
    .registers 1

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isNavigationBarFullScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$3100(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3300()Landroid/view/View;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideRecImg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addMiuiBottomViewInner(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setFunctionChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiddleFunction(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getCloudClipboardContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addCloudClipboardPopView(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "InputMethodService"

    if-nez v0, :cond_42

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isClipboardFunctionSelected()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z

    move-result v0

    sget v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    if-eqz v2, :cond_32

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    const-string/jumbo v2, "sCloudClipPasteMode value is error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_26
    const-string v2, "cloud clipboard data paste mode is no tips."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_2c
    sput v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V

    goto :goto_41

    :cond_32
    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    :cond_3b
    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    nop

    :goto_41
    goto :goto_47

    :cond_42
    const-string v0, "cloud clipboard content is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method private static addDisplayListener(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$4;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_1f
    return-void
.end method

.method public static addMiuiBottomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Landroid/inputmethodservice/InputMethodService;)V
    .registers 32

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkMiuiBottomSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p6 .. p6}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodUtil;->isEnableLoadImeBottomPlugin(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsLoadPluginEnable:Z

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isCanLoadPlugin(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "InputMethodService"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7d

    const-string v0, "com.miui.phrase"

    invoke-static {v1, v0}, Landroid/inputmethodservice/InputMethodModuleManager;->getApkPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_21
    invoke-static/range {p6 .. p6}, Landroid/inputmethodservice/InputMethodServiceInjector;->getModuleContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/inputmethodservice/InputMethodModuleManager;->loadDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sput-object v6, Landroid/inputmethodservice/InputMethodServiceInjector;->sPluginClassLoader:Ljava/lang/ClassLoader;

    const-string v6, "addMiuiBottomView"

    const/16 v7, 0x8

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v4

    const-class v9, Landroid/view/LayoutInflater;

    aput-object v9, v8, v3

    const-class v9, Landroid/view/ViewGroup;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-class v9, Landroid/view/ViewGroup;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    const-class v9, Landroid/view/View;

    const/4 v12, 0x4

    aput-object v9, v8, v12

    const-class v9, Landroid/view/ViewGroup;

    const/4 v13, 0x5

    aput-object v9, v8, v13

    const-class v9, Landroid/view/inputmethod/InputMethodManager;

    const/4 v14, 0x6

    aput-object v9, v8, v14

    const-class v9, Landroid/inputmethodservice/InputMethodService;

    const/4 v15, 0x7

    aput-object v9, v8, v15

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object p0, v7, v3

    aput-object p1, v7, v10

    aput-object p2, v7, v11

    aput-object p3, v7, v12

    aput-object p4, v7, v13

    aput-object p5, v7, v14

    aput-object p6, v7, v15

    invoke-static {v6, v8, v7}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_75} :catch_76

    :cond_75
    goto :goto_7c

    :catch_76
    move-exception v0

    const-string v3, "load dex error!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    goto :goto_eb

    :cond_7d
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodUtil;->clearOldClipboardContent(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isImeSupport(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8b

    return-void

    :cond_8b
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9b

    sput-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    sput-boolean v4, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    sput-boolean v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->maybeDismissPopupWindow()V

    return-void

    :cond_9b
    sput-boolean v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    new-instance v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, v0

    move-object/from16 v24, p6

    invoke-direct/range {v16 .. v24}, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;Landroid/inputmethodservice/InputMethodService;)V

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->registerObserver(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->addDisplayListener(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isMiuiBottomEnabled(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    if-nez v3, :cond_ca

    const-string v3, "MiuiBottom is not enabled "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ca
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodUtil;->isGuideViewCanShow(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isNavigationBarFullScreen(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineSupport(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineEnable(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->getXiaoAiVersionCode(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->addMiuiBottomViewInner(Landroid/content/Context;)V

    :goto_eb
    return-void
.end method

.method private static addMiuiBottomViewInner(Landroid/content/Context;)V
    .registers 6

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    const-string v1, "InputMethodService"

    if-nez v0, :cond_e

    const-string v0, "MiuiBottomArea is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "MiuiBottomArea only can add once"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Landroid/inputmethodservice/MiuiBottomConfig;->getLayoutForDevice()I

    move-result v1

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_55

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getImeVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v2, v4, :cond_55

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11050028

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_55
    const v2, 0x11090064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    const v2, 0x11090065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    const v2, 0x11090066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    const v2, 0x11090067

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    const v2, 0x1109009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    const v2, 0x1109009b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    const v2, 0x11090069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    const v4, 0x11050027

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v2, 0x1109005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideRecImg:Landroid/view/View;

    const v2, 0x11090059

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideCirImg:Landroid/widget/ImageView;

    const v2, 0x11090068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/InputMethodBottomSeekBar;

    sput-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sDefBottomViewColor:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1105002b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sDefIconColorUnpressed:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1105002a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sDefIconColorPressed:I

    invoke-static {v3, v3, v3, v3}, Landroid/inputmethodservice/InputMethodServiceInjector;->setBottomColor(ZIII)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setFunctionChanged(Landroid/content/Context;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/inputmethodservice/InputMethodServiceInjector$1;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiddleFunction(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setPrimaryClipChangedListener(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getClipboardQuickPasteEnable(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getCloudClipboardQuickPasteMode(Landroid/content/Context;)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateUrlQuickPasteEnable(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateTaobaoQuickPasteEnable(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateTaoBaoCmdEnable(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateTaoBaoCmdRule(Landroid/content/Context;)V

    invoke-static {}, Landroid/inputmethodservice/InputMethodUtil;->isSupportLinearMotorVibrate()Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sIsSupportLinearMotorVibrate:Z

    new-instance v2, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static afterComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/inputmethodservice/InputMethodService;)V
    .registers 9

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isCanLoadPlugin(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    new-array v1, v3, [Ljava/lang/Class;

    const-class v4, Landroid/inputmethodservice/InputMethodService$Insets;

    aput-object v4, v1, v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string v2, "afterComputeInsets"

    invoke-static {v2, v1, v3}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_74

    :cond_1c
    sget-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    if-eqz v1, :cond_75

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    if-nez v1, :cond_25

    goto :goto_75

    :cond_25
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I

    move-result v5

    sget-object v6, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x14

    if-le v4, v5, :cond_51

    sget-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    if-nez v2, :cond_61

    sput-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_61

    :cond_51
    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    if-eqz v3, :cond_61

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V

    :cond_61
    :goto_61
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    sget-boolean v3, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-eqz v3, :cond_74

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v2, :cond_74

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_74
    :goto_74
    return-void

    :cond_75
    :goto_75
    return-void
.end method

.method private static changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .registers 14

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    const-string v1, "InputMethodService"

    if-eqz v0, :cond_120

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sput v6, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaHeight:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rootViewHeight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " fullScreenHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " inputAreaHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " miuiBottomHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v5, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isInputFrameFullScreen(Landroid/widget/LinearLayout$LayoutParams;ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7d

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "set  mInputFrame weight =1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11f

    :cond_7d
    if-eqz v3, :cond_11f

    sub-int v0, v3, v4

    sub-int/2addr v0, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "heightLeftForMIUI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, v6, :cond_11f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v8, v6, v0

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bottomAreaParams.bottomMargin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v8, :cond_d5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "heightNeedMore is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", don\'t need to set layoutParams."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d5
    sub-int v9, v4, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullScreenArea New Height "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v9, :cond_102

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullScreenAreaNewHeight is error. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_102
    sget-object v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v10, v10, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v11, v9, :cond_116

    const-string v11, "layoutParams.height == fullScreenAreaNewHeight is true, don\'t need to set layoutParams."

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_116
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11f
    :goto_11f
    return-void

    :cond_120
    const-string v0, "Can\'t show Miui bottom view."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static checkClipboardUrlAndTaoBao()V
    .registers 4

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdEnable:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdRule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdRule:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    return-void

    :cond_22
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getClipboardFistLink(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x3

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardUrlLink:Ljava/lang/String;

    :cond_39
    return-void
.end method

.method private static checkMiuiBottomSupport()Z
    .registers 3

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    const-string/jumbo v0, "ro.miui.support_miui_ime_bottom"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    :cond_f
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method private static customizeBottomViewColor(ZIII)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customizeBottomViewColor, isCustom : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodServiceInjector;->setBottomColor(ZIII)V

    return-void
.end method

.method private static disableQuickMoveCursor()V
    .registers 2

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsMoveCursorEnable:Z

    sput-object v1, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    return-void
.end method

.method private static dismissGuideView()V
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    :cond_15
    return-void
.end method

.method private static enableQuickMoveCursor()V
    .registers 5

    new-instance v0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideRecImg:Landroid/view/View;

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideCirImg:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;-><init>(Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeWindowShowTimes:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsMoveCursorEnable:Z

    return-void
.end method

.method private static getCloudClipboardContent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getCloudContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeVersionCode(Landroid/content/Context;)I
    .registers 3

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    :cond_f
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    return v0
.end method

.method private static getModuleContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    :try_start_0
    const-string v0, "com.miui.phrase"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    const-string v1, "InputMethodService"

    const-string v2, "getModuleContext"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getScreenHeight(Landroid/content/Context;)I
    .registers 3

    sget v0, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V

    :cond_8
    sget v0, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    return v0
.end method

.method private static getScreenHeightWithoutStatusBar(Landroid/content/Context;)I
    .registers 3

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V

    :cond_8
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    return v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    if-lez v1, :cond_1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sStatusBarHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    return v0
.end method

.method public static getsClipboardUrlLink()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardUrlLink:Ljava/lang/String;

    return-object v0
.end method

.method private static handleMoveCursorGuideViewShow(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsMoveCursorEnable:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    if-nez v0, :cond_f

    return-void

    :cond_f
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeWindowShowTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeWindowShowTimes:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1a

    return-void

    :cond_1a
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    if-nez v0, :cond_2f

    const v0, 0x110e00c1

    new-instance v2, Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-direct {v2, p0, v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;-><init>(Landroid/content/Context;I)V

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->setGuideWindow(Landroid/inputmethodservice/InputMethodGuidePopupView;)V

    :cond_2f
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/inputmethodservice/InputMethodGuidePopupView;->show(Landroid/view/View;Z)V

    const-string/jumbo v0, "move_cursor_guide_view_show1"

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addMoveCursorRecord(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideRecImg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sMiuiBottomViewTouchListener:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    invoke-virtual {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->setSecondGuideViewShow()V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodGuidePopupView:Landroid/inputmethodservice/InputMethodGuidePopupView;

    new-instance v1, Landroid/inputmethodservice/InputMethodServiceInjector$5;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodGuidePopupView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private static isBubbleViewLeft()Z
    .registers 2

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    return v1
.end method

.method private static isCanLoadPlugin(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsLoadPluginEnable:Z

    if-eqz v0, :cond_12

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isImeSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkMiuiBottomSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isClipboardFunctionSelected()Z
    .registers 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isImeSupport(Landroid/content/Context;)Z
    .registers 7

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_22

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getImeVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_22

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    return v2

    :cond_22
    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    return v1

    :cond_25
    if-ne v0, v2, :cond_28

    move v1, v2

    :cond_28
    return v1
.end method

.method private static isInputFrameFullScreen(Landroid/widget/LinearLayout$LayoutParams;ILandroid/content/Context;)Z
    .registers 6

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    if-eqz p1, :cond_10

    invoke-static {p2}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I

    move-result v0

    if-lt p1, v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static isMiuiBottomEnabled(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_ime_bottom_view"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private static isNavigationBarFullScreen(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isScreenLandscape(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private static isXiaoAiEnable()Z
    .registers 2

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    const-string/jumbo v1, "xiaoai_input"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method private static maybeDismissPopupWindow()V
    .registers 2

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    :cond_a
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->dismiss()V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    :cond_13
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->dismissGuideView()V

    return-void
.end method

.method static onBadTokenException(Landroid/inputmethodservice/InputMethodService;Landroid/view/WindowManager$BadTokenException;)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catch a BadTokeException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const-string v4, "InputMethod"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7db

    const/16 v10, 0x50

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static onDestroy(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isCanLoadPlugin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "onDestroy"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_13
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkMiuiBottomSupport()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->resetMoveCursorParams(Landroid/content/Context;)V

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->disableQuickMoveCursor()V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_33

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_33
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->maybeDismissPopupWindow()V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    :cond_45
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    :cond_54
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    :cond_63
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    :cond_72
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    :cond_81
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    :cond_90
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    if-eqz v0, :cond_9f

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    :cond_9f
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    :cond_ae
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    :cond_bd
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenBroadcastReceiver:Landroid/inputmethodservice/ScreenBroadcastReceiver;

    if-eqz v0, :cond_c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenBroadcastReceiver:Landroid/inputmethodservice/ScreenBroadcastReceiver;

    :cond_c6
    :goto_c6
    return-void
.end method

.method public static onWindowHidden(Landroid/inputmethodservice/InputMethodService;)V
    .registers 5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isCanLoadPlugin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "onWindowHidden"

    invoke-static {v3, v2, v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_3e

    :cond_16
    sget-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->resetMoveCursorParams(Landroid/content/Context;)V

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->maybeDismissPopupWindow()V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    return-void

    :cond_32
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isXiaoAiEnable()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->inputMethodDisappear(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->unBindXiaoAiService(Landroid/content/Context;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public static onWindowShown(Landroid/inputmethodservice/InputMethodService;)V
    .registers 10

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isCanLoadPlugin(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onWindowShown"

    invoke-static {v3, v1, v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_68

    :cond_16
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->handleMoveCursorGuideViewShow(Landroid/content/Context;)V

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isXiaoAiEnable()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->bindXiaoAiService(Landroid/content/Context;)V

    :cond_22
    sget-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    if-nez v1, :cond_39

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    if-eqz v1, :cond_39

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    if-eqz v3, :cond_39

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_39
    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x7530

    cmp-long v5, v5, v7

    if-lez v5, :cond_51

    const-string v3, "InputMethodService"

    const-string v4, "clipboard bubble view can not show because it\'s time interval over 30s."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    sget-wide v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_5b

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addCloudClipboardPopView(Landroid/content/Context;)V

    return-void

    :cond_5b
    sget-wide v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sLocalClipboardTimeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_68

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V

    :cond_68
    :goto_68
    return-void
.end method

.method private static openQuickPasteView(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isClipboardFunctionSelected()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    if-nez v0, :cond_18

    return-void

    :cond_18
    sget-wide v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    sput-wide v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLocalClipboardTimeStamp:J

    const-string/jumbo v0, "miui_input_no_need_show_pop"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodServiceInjector$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    return-void
.end method

.method private static varargs reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.miui.inputmethod.InputMethodBottomManager"

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sPluginClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    nop

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v1, "InputMethodService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private static registerObserver(Landroid/content/Context;)V
    .registers 6

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_37

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_miui_ime_bottom_view"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_37
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    if-nez v0, :cond_5a

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_gesture_line"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5a
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    if-nez v0, :cond_7e

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "use_gesture_version_three"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7e
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    if-nez v0, :cond_b4

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "full_screen_keyboard_left_function"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "full_screen_keyboard_right_function"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_b4
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    if-nez v0, :cond_d6

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "full_screen_keyboard_middle_function"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodMiddleFunctionObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodMiddleFunctionObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_d6
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    if-nez v0, :cond_f9

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cloud_clipboard_cipher_content_saved"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_f9
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    if-nez v0, :cond_11b

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "input_method_cloud_clipboard_quick_paste_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_11b
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    if-nez v0, :cond_13d

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_miui_quick_paste"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_13d
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    if-nez v0, :cond_15f

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_quick_paste_url"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_15f
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    if-nez v0, :cond_181

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_quick_paste_taobao"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_181
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    if-nez v0, :cond_1b6

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "input_method_taobao_cmd_rule"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "input_method_taobao_cmd_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1b6
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenBroadcastReceiver:Landroid/inputmethodservice/ScreenBroadcastReceiver;

    if-nez v0, :cond_1d0

    new-instance v0, Landroid/inputmethodservice/ScreenBroadcastReceiver;

    invoke-direct {v0}, Landroid/inputmethodservice/ScreenBroadcastReceiver;-><init>()V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenBroadcastReceiver:Landroid/inputmethodservice/ScreenBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenBroadcastReceiver:Landroid/inputmethodservice/ScreenBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1d0
    return-void
.end method

.method private static setBottomColor(ZIII)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_12

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-array v2, v2, [I

    aput p2, v2, v1

    aput p3, v2, v0

    move-object v0, v2

    goto :goto_24

    :cond_12
    new-array v2, v2, [I

    sget v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sDefIconColorUnpressed:I

    aput v3, v2, v1

    sget v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sDefIconColorPressed:I

    aput v1, v2, v0

    move-object v0, v2

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    sget v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sDefBottomViewColor:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_24
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomIconStates:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static setFunctionChanged(Landroid/content/Context;)V
    .registers 24

    move-object/from16 v6, p0

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_left_function"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_right_function"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, "InputMethodService"

    const v10, 0x110700e3

    const v11, 0x110700e2

    const-string/jumbo v14, "no_function"

    const-string/jumbo v15, "xiaoai_input"

    const-string/jumbo v5, "voice_input"

    const-string/jumbo v4, "switch_keyboard_language"

    const-string/jumbo v3, "switch_keyboard_type"

    const/16 v16, -0x1

    const-string v1, "clipboard_phrase"

    const-string/jumbo v7, "switch_input_method"

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_200

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_3dc

    :cond_59
    goto :goto_92

    :sswitch_5a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x2

    goto :goto_94

    :sswitch_62
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x6

    goto :goto_94

    :sswitch_6a
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v12

    goto :goto_94

    :sswitch_72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x3

    goto :goto_94

    :sswitch_7a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v2

    goto :goto_94

    :sswitch_82
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v13

    goto :goto_94

    :sswitch_8a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x5

    goto :goto_94

    :goto_92
    move/from16 v0, v16

    :goto_94
    packed-switch v0, :pswitch_data_3fa

    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error leftSelectedFunction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ff

    :pswitch_b6
    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    goto/16 :goto_1ff

    :pswitch_d0
    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardTypeListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardTypeListener;-><init>(Landroid/content/Context;)V

    sget-object v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    goto/16 :goto_1ff

    :pswitch_fc
    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardLanguageListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardLanguageListener;-><init>(Landroid/content/Context;)V

    sget-object v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    goto/16 :goto_1ff

    :pswitch_128
    sput-boolean v12, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v11, 0x110700e0

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;

    sget-object v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v13, v13, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v11, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v6, v13, v11, v12}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V

    sget-object v11, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    goto/16 :goto_1ff

    :pswitch_15d
    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x110700e1

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v18, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    const/16 v19, 0x1

    move-object/from16 v20, v0

    move-object v0, v11

    move-object v12, v1

    move-object v1, v13

    move v13, v2

    move-object/from16 v2, v20

    move-object v10, v3

    move-object/from16 v3, p0

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    move-object/from16 v22, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1ff

    :pswitch_1a3
    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1ff

    :pswitch_1d1
    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    :goto_1ff
    goto :goto_233

    :cond_200
    move-object v12, v1

    move v13, v2

    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    move-object v0, v11

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sput-object v7, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    :goto_233
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b5

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_40c

    :cond_244
    goto :goto_281

    :sswitch_245
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const/4 v7, 0x2

    goto :goto_283

    :sswitch_24d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const/4 v7, 0x6

    goto :goto_283

    :sswitch_255
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const/4 v7, 0x1

    goto :goto_283

    :sswitch_25d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const/4 v7, 0x3

    goto :goto_283

    :sswitch_265
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    move v7, v13

    goto :goto_283

    :sswitch_26f
    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const/4 v7, 0x4

    goto :goto_283

    :sswitch_279
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const/4 v7, 0x5

    goto :goto_283

    :goto_281
    move/from16 v7, v16

    :goto_283
    packed-switch v7, :pswitch_data_42a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error rightSelectedFunction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b4

    :pswitch_29e
    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3b4

    :pswitch_2b2
    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardTypeListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardTypeListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3b4

    :pswitch_2da
    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardLanguageListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchKeyboardLanguageListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3b4

    :pswitch_302
    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-direct {v0, v6, v1, v2, v13}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3b4

    :pswitch_331
    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3b4

    :pswitch_366
    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3b4

    :pswitch_38d
    sput-boolean v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    :goto_3b4
    goto :goto_3da

    :cond_3b5
    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-direct {v0, v6, v1, v2, v13}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sput-object v12, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    :goto_3da
    return-void

    nop

    :sswitch_data_3dc
    .sparse-switch
        -0x1ac6f539 -> :sswitch_8a
        0xe28065 -> :sswitch_82
        0x10556e7d -> :sswitch_7a
        0x332f6982 -> :sswitch_72
        0x3d6adcd2 -> :sswitch_6a
        0x3dd18096 -> :sswitch_62
        0x4c7a0621 -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_3fa
    .packed-switch 0x0
        :pswitch_1d1
        :pswitch_1a3
        :pswitch_15d
        :pswitch_128
        :pswitch_fc
        :pswitch_d0
        :pswitch_b6
    .end packed-switch

    :sswitch_data_40c
    .sparse-switch
        -0x1ac6f539 -> :sswitch_279
        0xe28065 -> :sswitch_26f
        0x10556e7d -> :sswitch_265
        0x332f6982 -> :sswitch_25d
        0x3d6adcd2 -> :sswitch_255
        0x3dd18096 -> :sswitch_24d
        0x4c7a0621 -> :sswitch_245
    .end sparse-switch

    :pswitch_data_42a
    .packed-switch 0x0
        :pswitch_38d
        :pswitch_366
        :pswitch_331
        :pswitch_302
        :pswitch_2da
        :pswitch_2b2
        :pswitch_29e
    .end packed-switch
.end method

.method private static setMiuiBottomMargin(Landroid/content/Context;)V
    .registers 9

    invoke-static {}, Landroid/inputmethodservice/InputMethodUtil;->isShowNavigationHandle()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->updateBottomMargin(I)V

    return-void

    :cond_b
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_73

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    if-nez v1, :cond_14

    goto :goto_73

    :cond_14
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getGestureLineHeight(Landroid/content/Context;)I

    move-result v4

    sub-int v5, v2, v3

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bottomLayoutHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bottomButtonHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", params.topMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputMethodService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodUtil;->updateBottomMargin(I)V

    sget-object v6, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    neg-int v7, v5

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v7, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v7, v7, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_73
    :goto_73
    return-void
.end method

.method public static setPrimaryClipChangedListener(Landroid/content/Context;)V
    .registers 3

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/inputmethodservice/InputMethodServiceInjector$2;

    invoke-direct {v1, v0, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$2;-><init>(Landroid/content/ClipboardManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_12
    return-void
.end method

.method private static showClipBubblePopupWindow(Landroid/content/Context;Z)V
    .registers 9

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    :cond_f
    new-instance v0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    sget v6, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;ZLjava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->initPopupWindow()V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "InputMethodService"

    if-nez v0, :cond_34

    const-string v2, "Bubble PopupWindow Token is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    const/4 v2, 0x0

    if-eqz p1, :cond_3f

    :try_start_37
    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget v4, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    invoke-virtual {v3, v0, v2, v2, v4}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_48

    :cond_3f
    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget v4, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    sget v5, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->showAtLocation(Landroid/os/IBinder;III)V

    :goto_48
    sget v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    invoke-static {p0, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardBubbleShowRecord(Landroid/content/Context;I)V
    :try_end_4d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_37 .. :try_end_4d} :catch_4e

    goto :goto_6f

    :catch_4e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t Show Bubble PopupWindow. token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", BadTokenException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    return-void
.end method

.method private static updateMiddleFunction(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_middle_function"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiddleSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiddleSelectedKey:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x3dd18096

    const/4 v4, 0x1

    if-eq v2, v3, :cond_30

    const v3, 0x67b92032

    if-eq v2, v3, :cond_25

    :cond_24
    goto :goto_3a

    :cond_25
    const-string/jumbo v2, "quick_move_cursor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    goto :goto_3a

    :cond_30
    const-string/jumbo v2, "no_function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v1, v4

    :goto_3a
    if-eqz v1, :cond_5b

    if-eq v1, v4, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid sMiddleSelectedKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiddleSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_57
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->disableQuickMoveCursor()V

    goto :goto_5f

    :cond_5b
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->enableQuickMoveCursor()V

    nop

    :goto_5f
    goto :goto_63

    :cond_60
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->enableQuickMoveCursor()V

    :goto_63
    return-void
.end method

.method private static updateMiuiBottomEnableValue(Landroid/content/Context;)V
    .registers 5

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isImeSupport(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    if-eqz v3, :cond_1a

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    if-nez v3, :cond_1a

    sget-boolean v3, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    if-eqz v3, :cond_1a

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    if-nez v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    sput-boolean v3, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-eqz v0, :cond_2c

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    if-eqz v3, :cond_2c

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    if-nez v3, :cond_2c

    sget-boolean v3, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    return-void
.end method

.method private static updateScreenHeight(Landroid/content/Context;)V
    .registers 6

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/inputmethodservice/InputMethodUtil;->sScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sScreenWidth : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getGestureLineHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenHeightWithoutStatusBar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
