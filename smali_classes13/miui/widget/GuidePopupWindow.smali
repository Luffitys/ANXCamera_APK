.class public Lmiui/widget/GuidePopupWindow;
.super Lmiui/widget/ArrowPopupWindow;
.source "GuidePopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x0

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x1

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x1

.field private static final DEFAULT_SHOW_DURATION:I = 0x1388


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mGuideView:Landroid/widget/LinearLayout;

.field private mShowDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private addGuideTextView(Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    array-length v1, v0

    if-nez v1, :cond_13

    goto :goto_32

    :cond_13
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_31

    aget-object v4, v0, v3

    sget v5, Lcom/miui/internal/R$layout;->guide_popup_text_view:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lmiui/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_31
    return-void

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method protected onPrepareWindow()V
    .registers 5

    invoke-super {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    const/16 v0, 0x1388

    iput v0, p0, Lmiui/widget/GuidePopupWindow;->mShowDuration:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->guide_popup_content_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lmiui/widget/GuidePopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ArrowPopupView;->enableShowingAnimation(Z)V

    return-void
.end method

.method public setGuideText(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/GuidePopupWindow;->addGuideTextView(Ljava/lang/String;)V

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    return-void
.end method

.method public setShowDuration(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/GuidePopupWindow;->mShowDuration:I

    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .registers 9

    invoke-virtual {p0, p4}, Lmiui/widget/GuidePopupWindow;->setAutoDismiss(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    if-eqz p4, :cond_12

    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lmiui/widget/GuidePopupWindow;->mShowDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/widget/ArrowPopupView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method
