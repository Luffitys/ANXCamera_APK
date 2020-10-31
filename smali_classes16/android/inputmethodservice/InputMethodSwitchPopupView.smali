.class Landroid/inputmethodservice/InputMethodSwitchPopupView;
.super Landroid/widget/PopupWindow;
.source "InputMethodSwitchPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_LIST_VIEW_ITEM_NUMBER:I = 0x4

.field private static final SETTINGS_URI:Ljava/lang/String; = "intent:#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.language.MiuiLanguageAndInputSettings;end"

.field private static final TAG:Ljava/lang/String; = "InputMethodSwitchView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

.field private mIsLeft:Z

.field private mListView:Landroid/widget/ListView;

.field private mTransitionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/inputmethodservice/InputMethodService;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodList:Ljava/util/List;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-boolean p4, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mIsLeft:Z

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/inputmethodservice/InputMethodService;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setListViewHeight()V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_e

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    move v0, v2

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_28

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setListViewListener()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    new-instance v1, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;-><init>(Landroid/inputmethodservice/InputMethodSwitchPopupView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->setClickListener(Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;)V

    return-void
.end method

.method private setListViewOnScrollListener()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;-><init>(Landroid/inputmethodservice/InputMethodSwitchPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public initPopupWindow()V
    .registers 11

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x110b001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x110900be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v4, 0x110900ba

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mIsLeft:Z

    if-eqz v6, :cond_4c

    const v6, 0x800053

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v6, 0x110700f7

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v6, 0x110f0009

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setAnimationStyle(I)V

    goto :goto_5d

    :cond_4c
    const v6, 0x800055

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v6, 0x110700f9

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v6, 0x110f000c

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setAnimationStyle(I)V

    :goto_5d
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x110900bd

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x110900bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_8a

    goto :goto_8c

    :cond_8a
    const/16 v1, 0x8

    :goto_8c
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x110900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    const v1, 0x11090078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/inputmethodservice/InputMethodSwitchAdapter;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    const v8, 0x110b001d

    iget-object v9, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodList:Ljava/util/List;

    invoke-direct {v3, v7, v8, v9}, Landroid/inputmethodservice/InputMethodSwitchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewOnScrollListener()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewHeight()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewListener()V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x11090078

    const-string v2, "InputMethodSwitchView"

    if-eq v0, v1, :cond_2e

    const v1, 0x110900be

    if-eq v0, v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown view id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_2a
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->dismiss()V

    goto :goto_54

    :cond_2e
    :try_start_2e
    const-string v0, "intent:#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.language.MiuiLanguageAndInputSettings;end"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    const-string v3, "clipboard_settings"

    invoke-static {v1, v3}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_46} :catch_47

    goto :goto_4e

    :catch_47
    move-exception v0

    const-string/jumbo v1, "start settings error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    nop

    :goto_54
    return-void
.end method
