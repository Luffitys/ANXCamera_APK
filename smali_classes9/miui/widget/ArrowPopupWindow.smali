.class public Lmiui/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source ""


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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$style;->Widget_PopupWindow:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    iput-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->setupPopupWindow()V

    return-void
.end method

.method private isTranslucentStatusEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setupPopupWindow()V
    .locals 4

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

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ArrowPopupView;

    iput-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->isTranslucentStatusEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->addShadow()V

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->animateToDismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method public getArrowMode()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowMode()I

    move-result p0

    return p0
.end method

.method public getContentHeight()I
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContentWidth()I
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentHeight()I

    move-result p0

    return p0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getNegativeButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getPositiveButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentWidth()I

    move-result p0

    return p0
.end method

.method protected onPrepareWindow()V
    .locals 0

    return-void
.end method

.method public setArrowMode(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget p0, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    if-le p1, p0, :cond_0

    move p1, p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object p2

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->isTranslucentStatusEnabled()Z

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    const p2, 0x800033

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    iget-boolean p2, p0, Lmiui/widget/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    iget-object p0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 6

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
