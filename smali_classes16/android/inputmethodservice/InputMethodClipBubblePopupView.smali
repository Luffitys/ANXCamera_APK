.class public Landroid/inputmethodservice/InputMethodClipBubblePopupView;
.super Landroid/widget/PopupWindow;
.source "InputMethodClipBubblePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodClipBubblePopupView"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataContentType:I

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIsLeft:Z

.field private mTypeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;ZLjava/lang/String;I)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mIsLeft:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    iput p5, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    return v0
.end method

.method private clickClipContent()V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v1, "InputMethodClipBubblePopupView"

    if-nez v0, :cond_c

    const-string v0, "clickClipContent, mInputMethodService is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v2, "clickClipContent, inputConnection is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_6e

    if-eq v2, v3, :cond_68

    const/4 v4, 0x2

    if-eq v2, v4, :cond_54

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click clipboard content error. type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :cond_3c
    sget-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteUrlEnable:Z

    if-eqz v1, :cond_4e

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->getsClipboardUrlLink()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Landroid/inputmethodservice/InputMethodUtil;->startBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    goto :goto_74

    :cond_4e
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_74

    :cond_54
    sget-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteTaobaoEnable:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/inputmethodservice/InputMethodUtil;->startTaobao(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    goto :goto_74

    :cond_62
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_74

    :cond_68
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_74

    :cond_6e
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    nop

    :goto_74
    return-void
.end method

.method private showTypeIcon()V
    .registers 3

    iget v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    if-eqz v0, :cond_42

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show clipboard content type icon error. type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodClipBubblePopupView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_27
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const v1, 0x11070100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4a

    :cond_30
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const v1, 0x110700fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4a

    :cond_39
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const v1, 0x110700f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4a

    :cond_42
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    nop

    :goto_4a
    return-void
.end method


# virtual methods
.method public initPopupWindow()V
    .registers 13

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x110b001a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1109004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x11090058

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1109004b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x11090085

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->showTypeIcon()V

    const v4, 0x1109004a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x11090048

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mIsLeft:Z

    if-eqz v7, :cond_86

    const v7, 0x800053

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v7, 0x110700ed

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v7, 0x110f0009

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setAnimationStyle(I)V

    goto :goto_97

    :cond_86
    const v7, 0x800055

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v7, 0x110700ee

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v7, 0x110f000c

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setAnimationStyle(I)V

    :goto_97
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11060061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v8, v7

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setContentView(Landroid/view/View;)V

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;

    invoke-direct {v9, p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;-><init>(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)V

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_22

    goto :goto_21

    :sswitch_8
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->clickClipContent()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardBubbleClickRecord(Landroid/content/Context;I)V

    goto :goto_21

    :sswitch_16
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addClipboardBubbleCloseRecord(Landroid/content/Context;I)V

    nop

    :goto_21
    return-void

    :sswitch_data_22
    .sparse-switch
        0x11090048 -> :sswitch_16
        0x1109004b -> :sswitch_8
        0x1109004c -> :sswitch_16
        0x11090058 -> :sswitch_16
    .end sparse-switch
.end method
