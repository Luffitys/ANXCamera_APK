.class public Lcom/miui/internal/app/AlertControllerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# static fields
.field private static final ADD_EXTRA_FLAGS:Lmiui/reflect/Method;

.field private static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field private static final FLAG_NO_EAR_AREA:I = 0x300

.field private static final TAG:Ljava/lang/String; = "AlertController"

.field private static sScreenMinorSize:I


# instance fields
.field private mActionBar:Lmiui/app/ActionBar;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionItems:Ljava/util/ArrayList;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private mAlertDialogView:Landroid/view/ViewGroup;

.field private mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mButtonSelect:Landroid/widget/Button;

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

.field private mDialogInterface:Landroid/content/DialogInterface;

.field private mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

.field private mHandler:Landroid/os/Handler;

.field public mHapticFeedbackEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mIsChecked:Z

.field private final mListItemLayout:I

.field private final mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMenuPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private final mMultiChoiceItemLayout:I

.field private mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mScrollView:Landroid/widget/ScrollView;

.field private final mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private final mWindow:Landroid/view/Window;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/app/AlertControllerImpl;->getAddExtraFlags()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/AlertControllerImpl;->ADD_EXTRA_FLAGS:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$1;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$2;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$6;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$6;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenuPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$7;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$7;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->initScreenMinorSize(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/Window;->requestFeature(I)Z

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge p3, v2, :cond_0

    const-string p3, "ro.miui.notch"

    invoke-static {p3, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v1, :cond_0

    sget-object p3, Lcom/miui/internal/app/AlertControllerImpl;->ADD_EXTRA_FLAGS:Lmiui/reflect/Method;

    if-eqz p3, :cond_0

    const-class v2, Landroid/view/Window;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0x300

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p3, v2, v3, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance p3, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;

    invoke-direct {p3, p2}, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    sget-object p3, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v1, 0x101005d

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    sget p3, Lcom/miui/internal/R$layout;->alert_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogLayout:I

    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_listLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListLayout:I

    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog_multichoice:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMultiChoiceItemLayout:I

    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget p3, Lmiui/R$layout;->select_dialog_singlechoice:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mSingleChoiceItemLayout:I

    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_listItemLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog_item:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListItemLayout:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/internal/app/AlertControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setupWindow(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->onCreatePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->onPreparePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/app/AlertControllerImpl;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/miui/internal/widget/SingleCenterTextView;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/miui/internal/widget/SingleCenterTextView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/SingleCenterTextView;->setEnableSingleCenter(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureSubDecor()V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    sget v3, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogLayout:I

    invoke-static {v3, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBar:Lmiui/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupWindow(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImplHelper;->initTouchAnim(Landroid/view/Window;)V

    return-void
.end method

.method private static getAddExtraFlags()Lmiui/reflect/Method;
    .locals 3

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "addExtraFlags"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/miui/internal/app/AlertControllerImpl;->sScreenMinorSize:I

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/miui/internal/app/AlertControllerImpl;->sScreenMinorSize:I

    :cond_0
    return-void
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    if-le p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needRemoveCustomMargin()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onCreatePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 4

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    iget v1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->id:I

    iget-object v2, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->label:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v3, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->icon:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private onPreparePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private relayoutButtons(Lcom/miui/internal/widget/DialogButtonPanel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private setBreakStragegy(Landroid/widget/TextView;I)V
    .locals 3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    :try_start_0
    const-class p0, Landroid/widget/TextView;

    const-string v0, "setBreakStrategy"

    const-string v1, "(I)V"

    invoke-static {p0, v0, v1}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0

    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenuPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    :cond_1
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v0}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnimWithTint(Landroid/view/View;)V

    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    move v4, v0

    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v4}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    move v4, v3

    :cond_3
    :goto_2
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v4}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    move v4, v3

    :cond_5
    :goto_3
    if-eqz v4, :cond_b

    sget v1, Lcom/miui/internal/R$id;->buttonGroup:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/DialogButtonPanel;

    const/4 v4, 0x2

    if-le v0, v4, :cond_6

    :goto_4
    invoke-direct {p0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->relayoutButtons(Lcom/miui/internal/widget/DialogButtonPanel;)V

    goto :goto_7

    :cond_6
    if-ne v0, v3, :cond_7

    invoke-virtual {v1}, Lcom/miui/internal/widget/DialogButtonPanel;->clearVisibleChildMargins()V

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/miui/internal/R$dimen;->dialog_btn_margin_horizontal:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int/2addr v0, v3

    sub-int/2addr v0, p1

    div-int/2addr v0, v4

    move p1, v2

    :goto_5
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0, v3, v0}, Lcom/miui/internal/app/AlertControllerImpl;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result p1

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    :goto_7
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v2, Lmiui/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setBreakStragegy(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->setupListView()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupCustom(Landroid/widget/FrameLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->needRemoveCustomMargin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/miui/internal/R$dimen;->dialog_custom_horizontal_padding:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    :cond_3
    const v3, 0x102000d

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v3, v3, Lmiui/widget/ProgressBar;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    sget v3, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    sget v3, Lcom/miui/internal/R$id;->timePicker:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    sget v3, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2, v1, p0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_7
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private setupListView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->cancel:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/AlertControllerImpl$3;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->select:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$4;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/app/AlertControllerImpl$4;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    if-eqz v1, :cond_4

    new-instance v1, Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-direct {v1, v2}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/app/AlertControllerImpl$5;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    aget-boolean v1, v1, v0

    invoke-virtual {v2, v0, v1}, Lmiui/widget/EditableListViewWrapper;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v1}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lmiui/R$string;->deselect_all:I

    goto :goto_1

    :cond_3
    sget v1, Lmiui/R$string;->select_all:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_6
    :goto_3
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    iget p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_7
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    sget v0, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setupView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupContent(Landroid/view/ViewGroup;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lmiui/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupCustom(Landroid/widget/FrameLayout;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupCheckbox(Landroid/widget/CheckBox;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_4
    return-void
.end method

.method private setupWindow(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/internal/app/AlertControllerImplHelper;->getLandScapeGravity()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x50

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_2

    sget v1, Lcom/miui/internal/app/AlertControllerImpl;->sScreenMinorSize:I

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/miui/internal/R$attr;->dialogRoundWindowBg:I

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBar:Lmiui/app/ActionBar;

    return-object p0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getCheckedItems()[Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-object p0
.end method

.method public getDialogInterface()Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method public getListItemLayout()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListItemLayout:I

    return p0
.end method

.method public getListLayout()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListLayout:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getMultiChoiceItemLayout()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMultiChoiceItemLayout:I

    return p0
.end method

.method public getSingleChoiceItemLayout()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mSingleChoiceItemLayout:I

    return p0
.end method

.method public hasButton()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTitle()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public installContent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->ensureSubDecor()V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    sget v1, Lcom/miui/internal/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->setupView()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    :cond_0
    return-void
.end method

.method public setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    return-void
.end method

.method public setCheckedItems([Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    return-void
.end method
