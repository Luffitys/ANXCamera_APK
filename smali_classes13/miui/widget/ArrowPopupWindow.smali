.class public Lmiui/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ArrowPopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1


# instance fields
.field protected mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

.field private mAutoDismiss:Z

.field private mContext:Landroid/content/Context;

.field private mListViewMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$style;->Widget_PopupWindow:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    iput-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->setupPopupWindow()V

    return-void
.end method

.method private isTranslucentStatusEnabled()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v1, v3, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    nop

    :goto_21
    return v2
.end method

.method private setupPopupWindow()V
    .registers 6

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->arrow_popup_window_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->arrow_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ArrowPopupView;

    iput-object v1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x1

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->isTranslucentStatusEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_40
    const/4 v2, -0x1

    invoke-super {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    iget-object v2, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v2, p0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ArrowPopupView;->addShadow()V

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->update()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->animateToDismiss()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    :goto_b
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowMode()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentWidth()I
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    return v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v0

    return v0
.end method

.method protected onPrepareWindow()V
    .registers 1

    return-void
.end method

.method public setArrowMode(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_e

    iget v1, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    if-le p1, v1, :cond_e

    iget p1, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    :cond_e
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-void
.end method

.method public final setContentView(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentWidth(I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiui/widget/ArrowPopupWindow;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiui/widget/ArrowPopupWindow;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->isTranslucentStatusEnabled()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    const v0, 0x800033

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lmiui/widget/ArrowPopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    iget-boolean v1, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public update(IIIIZ)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v0, p0

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    invoke-virtual {p0, p4}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method
