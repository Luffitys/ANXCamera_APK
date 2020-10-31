.class public Lcom/miui/internal/app/AlertControllerImpl;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;,
        Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

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
    .registers 1

    invoke-static {}, Lcom/miui/internal/app/AlertControllerImpl;->getAddExtraFlags()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/AlertControllerImpl;->ADD_EXTRA_FLAGS:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 10

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

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_55

    const-string v2, "ro.miui.notch"

    invoke-static {v2, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_55

    sget-object v2, Lcom/miui/internal/app/AlertControllerImpl;->ADD_EXTRA_FLAGS:Lmiui/reflect/Method;

    if-eqz v2, :cond_55

    const-class v3, Landroid/view/Window;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v5, 0x300

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v2, v3, v4, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_55
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    sget v2, Lcom/miui/internal/R$layout;->alert_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogLayout:I

    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_listLayout:I

    sget v2, Lcom/miui/internal/R$layout;->select_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListLayout:I

    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget v2, Lcom/miui/internal/R$layout;->select_dialog_multichoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMultiChoiceItemLayout:I

    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget v2, Lmiui/R$layout;->select_dialog_singlechoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mSingleChoiceItemLayout:I

    sget v1, Lcom/miui/internal/R$styleable;->AlertDialog_listItemLayout:I

    sget v2, Lcom/miui/internal/R$layout;->select_dialog_item:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListItemLayout:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/app/AlertControllerImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setupWindow(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->onCreatePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->onPreparePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/view/Window;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :cond_15
    if-lez v3, :cond_24

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImpl;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_15

    return v1

    :cond_24
    return v2
.end method

.method private centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    goto :goto_15

    :cond_9
    instance-of v0, p1, Lcom/miui/internal/widget/SingleCenterTextView;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/SingleCenterTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SingleCenterTextView;->setEnableSingleCenter(Z)V

    :cond_14
    return-void

    :cond_15
    :goto_15
    return-void
.end method

.method private ensureSubDecor()V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_7c

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

    if-eqz v1, :cond_47

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

    :cond_47
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogLayout:I

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v4, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast v5, Landroid/app/Dialog;

    invoke-direct {v4, v5}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBar:Lmiui/app/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4, v2}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    goto :goto_96

    :cond_7c
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupWindow(I)V

    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImplHelper;->initTouchAnim(Landroid/view/Window;)V

    return-void
.end method

.method private static getAddExtraFlags()Lmiui/reflect/Method;
    .registers 3

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "addExtraFlags"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_a
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static initScreenMinorSize(Landroid/content/Context;)V
    .registers 5

    sget v0, Lcom/miui/internal/app/AlertControllerImpl;->sScreenMinorSize:I

    if-nez v0, :cond_22

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/miui/internal/app/AlertControllerImpl;->sScreenMinorSize:I

    :cond_22
    return-void
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .registers 6

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v0, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private needRemoveCustomMargin()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private onCreatePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    iget v2, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->id:I

    iget-object v3, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->label:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v4, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v3, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->icon:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private onPreparePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private relayoutButtons(Lcom/miui/internal/widget/DialogButtonPanel;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/DialogButtonPanel;->setOrientation(I)V

    invoke-virtual {p1}, Lcom/miui/internal/widget/DialogButtonPanel;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_e

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/DialogButtonPanel;->addView(Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/DialogButtonPanel;->addView(Landroid/view/View;)V

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/DialogButtonPanel;->addView(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method private setBreakStragegy(Landroid/widget/TextView;I)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    :try_start_6
    const-class v0, Landroid/widget/TextView;

    const-string v1, "setBreakStrategy"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :cond_21
    :goto_21
    return-void
.end method

.method private setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenuPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    :cond_10
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_39

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_39

    :cond_25
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v2}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnimWithTint(Landroid/view/View;)V

    :cond_39
    :goto_39
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz v2, :cond_6d

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6d

    :cond_59
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v2}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_6d
    :goto_6d
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v2, :cond_a1

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a1

    :cond_8d
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v2}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_a1
    :goto_a1
    if-eqz v0, :cond_108

    sget v2, Lcom/miui/internal/R$id;->buttonGroup:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/DialogButtonPanel;

    const/4 v3, 0x2

    if-le v1, v3, :cond_b2

    invoke-direct {p0, v2}, Lcom/miui/internal/app/AlertControllerImpl;->relayoutButtons(Lcom/miui/internal/widget/DialogButtonPanel;)V

    goto :goto_107

    :cond_b2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_b9

    invoke-virtual {v2}, Lcom/miui/internal/widget/DialogButtonPanel;->clearVisibleChildMargins()V

    goto :goto_107

    :cond_b9
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$dimen;->dialog_btn_margin_horizontal:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    sub-int v8, v4, v6

    sub-int/2addr v8, v7

    div-int/2addr v8, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_e6
    invoke-virtual {v2}, Lcom/miui/internal/widget/DialogButtonPanel;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_102

    invoke-virtual {v2, v9}, Lcom/miui/internal/widget/DialogButtonPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_fc

    invoke-direct {p0, v10, v8}, Lcom/miui/internal/app/AlertControllerImpl;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v3

    :cond_fc
    if-eqz v3, :cond_ff

    goto :goto_102

    :cond_ff
    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    :cond_102
    :goto_102
    if-eqz v3, :cond_107

    invoke-direct {p0, v2}, Lcom/miui/internal/app/AlertControllerImpl;->relayoutButtons(Lcom/miui/internal/widget/DialogButtonPanel;)V

    :cond_107
    :goto_107
    goto :goto_10b

    :cond_108
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_10b
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_13
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_18
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 5

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

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_35

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setBreakStragegy(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_5a

    :cond_35
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_57

    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->setupListView()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5a

    :cond_57
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5a
    return-void
.end method

.method private setupCustom(Landroid/widget/FrameLayout;)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_97

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

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_27
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->needRemoveCustomMargin()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_36
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_96

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$dimen;->dialog_custom_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    goto :goto_56

    :cond_55
    move v4, v3

    :goto_56
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    if-eqz v5, :cond_61

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    goto :goto_62

    :cond_61
    move v5, v3

    :goto_62
    const v6, 0x102000d

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_73

    instance-of v7, v6, Lmiui/widget/ProgressBar;

    if-nez v7, :cond_73

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_96

    :cond_73
    sget v7, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_93

    sget v7, Lcom/miui/internal/R$id;->timePicker:I

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_93

    sget v7, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8c

    goto :goto_93

    :cond_8c
    invoke-virtual {p1, v4, v2, v5, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_96

    :cond_93
    :goto_93
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_96
    :goto_96
    goto :goto_9c

    :cond_97
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_9c
    return-void
.end method

.method private setupListView()V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_94

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8f

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->cancel:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_21

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/AlertControllerImpl$3;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v3, Lcom/miui/internal/R$id;->select:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_37

    iput-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    new-instance v3, Lcom/miui/internal/app/AlertControllerImpl$4;

    invoke-direct {v3, p0, v2}, Lcom/miui/internal/app/AlertControllerImpl$4;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    if-eqz v3, :cond_87

    new-instance v3, Lmiui/widget/EditableListViewWrapper;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-direct {v3, v4}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/miui/internal/app/AlertControllerImpl$5;

    invoke-direct {v5, p0, v3}, Lcom/miui/internal/app/AlertControllerImpl$5;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    if-eqz v4, :cond_74

    const/4 v4, 0x0

    :goto_65
    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    array-length v6, v5

    if-ge v4, v6, :cond_74

    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    aget-boolean v5, v5, v4

    invoke-virtual {v6, v4, v5}, Lmiui/widget/EditableListViewWrapper;->setItemChecked(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_74
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v5}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v5

    if-eqz v5, :cond_81

    sget v5, Lmiui/R$string;->deselect_all:I

    goto :goto_83

    :cond_81
    sget v5, Lmiui/R$string;->select_all:I

    :goto_83
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_8e

    :cond_87
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_8e
    goto :goto_94

    :cond_8f
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_94
    :goto_94
    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_a6

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_a6
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4f

    :cond_1d
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    sget v2, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_40

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_40
    iget v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    if-eqz v2, :cond_4f

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_4f

    :cond_4a
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private setupView()V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_f
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->contentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setupContent(Landroid/view/ViewGroup;)V

    :cond_1e
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v3, Lmiui/R$id;->customPanel:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2d

    invoke-direct {p0, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setupCustom(Landroid/widget/FrameLayout;)V

    :cond_2d
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3d

    invoke-direct {p0, v3}, Lcom/miui/internal/app/AlertControllerImpl;->setupCheckbox(Landroid/widget/CheckBox;)V

    :cond_3d
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v5, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4c

    invoke-direct {p0, v4}, Lcom/miui/internal/app/AlertControllerImpl;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_4c
    return-void
.end method

.method private setupWindow(I)V
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/miui/internal/app/AlertControllerImplHelper;->getLandScapeGravity()I

    move-result v2

    goto :goto_11

    :cond_f
    const/16 v2, 0x50

    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1b

    sget v2, Lcom/miui/internal/app/AlertControllerImpl;->sScreenMinorSize:I

    goto :goto_1c

    :cond_1b
    const/4 v2, -0x1

    :goto_1c
    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$attr;->dialogRoundWindowBg:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2c
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBar:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_11

    const/4 v0, -0x2

    if-eq p1, v0, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method public getCheckedItems()[Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-object v0
.end method

.method public getDialogInterface()Landroid/content/DialogInterface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public getListItemLayout()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListItemLayout:I

    return v0
.end method

.method public getListLayout()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListLayout:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMultiChoiceItemLayout()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMultiChoiceItemLayout:I

    return v0
.end method

.method public getSingleChoiceItemLayout()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mSingleChoiceItemLayout:I

    return v0
.end method

.method public hasButton()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public hasTitle()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public installContent()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_11
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
    .registers 3

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
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mComponentCallback:Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;

    :cond_c
    return-void
.end method

.method public setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    const/4 v0, -0x3

    if-eq p1, v0, :cond_25

    const/4 v0, -0x2

    if-eq p1, v0, :cond_20

    const/4 v0, -0x1

    if-ne p1, v0, :cond_18

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_2a

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_2a

    :cond_25
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    nop

    :goto_2a
    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .registers 3

    iput-boolean p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCheckedItem(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    return-void
.end method

.method public setCheckedItems([Z)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    return-void
.end method
