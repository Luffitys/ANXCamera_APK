.class Landroid/widget/Editor$EmailAddPopupWindow;
.super Landroid/widget/Editor$ActionPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailAddPopupWindow"
.end annotation


# instance fields
.field private final POPUP_TEXT_LAYOUT:I

.field private mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

.field private mEmailTextView:Landroid/widget/TextView;

.field private mPosChanged:Z

.field private mTextActionPadding:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    const v0, 0x110b0036

    iput v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->POPUP_TEXT_LAYOUT:I

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    # invokes: Landroid/widget/Editor;->isBigFontMode()Z
    invoke-static {}, Landroid/widget/Editor;->access$5000()Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x110600cf

    goto :goto_1f

    :cond_1c
    const v0, 0x110600ce

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mTextActionPadding:I

    return-void
.end method

.method private newTextView()Landroid/widget/TextView;
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x110b0036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method


# virtual methods
.method protected createAnimations()V
    .registers 12

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_a4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_ac

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_b4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v5, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v1, v6, v8

    aput-object v3, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v2, [F

    fill-array-data v9, :array_bc

    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v2, [F

    fill-array-data v9, :array_c4

    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v2, [F

    fill-array-data v9, :array_cc

    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0x64

    invoke-virtual {v4, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/widget/Editor$EmailAddPopupWindow$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$EmailAddPopupWindow$1;-><init>(Landroid/widget/Editor$EmailAddPopupWindow;)V

    iput-object v2, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    return-void

    :array_a4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ac
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_bc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_cc
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method protected createPopupWindow()V
    .registers 5

    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public dismiss()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor$EmailAddPopupWindow;->setZeroTouchableSurface()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    return-void
.end method

.method public fadeIn(II)V
    .registers 5

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAboveHandle:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected getSelectionEnd()I
    .registers 5

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v1, v1, Landroid/widget/TextPatternUtil$EmailInfo;->cursorPos:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v2, v2, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    iget-object v3, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget-object v3, v3, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    if-le v2, v1, :cond_34

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    return v3

    :cond_34
    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v1, v1, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    iget-object v2, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget-object v2, v2, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getSelectionStart()I
    .registers 5

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v1, v1, Landroid/widget/TextPatternUtil$EmailInfo;->cursorPos:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v2, v2, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    if-ge v2, v1, :cond_29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    return v3

    :cond_29
    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v1, v1, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    return v1
.end method

.method protected initContentView()V
    .registers 5

    new-instance v0, Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TouchPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setOrientation(I)V

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110701e7

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110900c4

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setId(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/Editor$EmailAddPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmailTextView:Landroid/widget/TextView;

    const v1, 0x110e00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget-object v1, v1, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/phrase/Phrases$Utils;->startAddPhraseActivity(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/Editor$EmailAddPopupWindow;->hide()V

    :cond_18
    return-void
.end method

.method public setEmail(Landroid/widget/TextPatternUtil$EmailInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    if-eqz v0, :cond_25

    iget v0, v0, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    iget v1, p1, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget-object v0, v0, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    iget v0, v0, Landroid/widget/TextPatternUtil$EmailInfo;->cursorPos:I

    iget v1, p1, Landroid/widget/TextPatternUtil$EmailInfo;->cursorPos:I

    if-eq v0, v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mPosChanged:Z

    iput-object p1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    return-void
.end method

.method public show()V
    .registers 7

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/WindowLayoutParamsUtil;->isInSystemWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/phrase/Phrases$Utils;->isAddPhraseActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_37

    return-void

    :cond_37
    iget-boolean v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mPosChanged:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmail:Landroid/widget/TextPatternUtil$EmailInfo;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v1, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmailTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mTextActionPadding:I

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mTextActionPadding:I

    iget-object v5, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-super {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    :cond_5f
    return-void
.end method

.method protected updatePosition(II)V
    .registers 5

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isDismissing()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    return-void
.end method
