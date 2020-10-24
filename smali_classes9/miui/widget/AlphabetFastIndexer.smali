.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final ANIM_LABEL_END:Ljava/lang/String; = "end"

.field private static final ANIM_LABEL_START:Ljava/lang/String; = "start"

.field private static final FADE_DELAYED:I = 0xc8

.field private static final MSG_FADE:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = "\u2665"

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private final DAMPING:F

.field private final DAMPING_HIDE:F

.field private final FINGER_STATE_HIDE:I

.field private final FINGER_STATE_INIT:I

.field private final FINGER_STATE_MOVE:I

.field private final FINGER_STATE_SHOW:I

.field private final HEIGHT_FACTOR:F

.field private final INVALID_INDEX:I

.field private final RESPONSE:F

.field private final RESPONSE_HIDE:F

.field private final SCALE:F

.field private final SCALE_START:F

.field private final TRANSLATION_X:I

.field private mAnimConfig:Lmiui/animation/base/AnimConfig;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndexerMinWidth:I

.field private mItemAnimConfig:Lmiui/animation/base/AnimConfig;

.field private mItemHeight:I

.field private mItemMargin:I

.field private mLastAlphabetIndex:I

.field private mListScrollState:I

.field private mListView:Landroid/widget/AdapterView;

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayHeight:I

.field private mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

.field private mOverlayRightMargin:I

.field private mOverlayTextColor:I

.field private mOverlayTextSize:I

.field private mOverlayWidth:I

.field mSectionMap:Ljava/util/HashMap;

.field private mShowAnimBegin:Z

.field private mState:I

.field private mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

.field private mVerticalPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->DAMPING:F

    const v2, 0x3f0ccccd    # 0.55f

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->RESPONSE:F

    const v2, 0x3f7d70a4    # 0.99f

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->DAMPING_HIDE:F

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->RESPONSE_HIDE:F

    const/4 v1, 0x1

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->FINGER_STATE_INIT:I

    const/4 v2, 0x2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->FINGER_STATE_SHOW:I

    const/4 v2, 0x3

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->FINGER_STATE_MOVE:I

    const/4 v2, 0x4

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->FINGER_STATE_HIDE:I

    const v2, 0x3fa66666    # 1.3f

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->SCALE:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->SCALE_START:F

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->HEIGHT_FACTOR:F

    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->INVALID_INDEX:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    new-instance v2, Lmiui/widget/AlphabetFastIndexer$5;

    invoke-direct {v2, p0}, Lmiui/widget/AlphabetFastIndexer$5;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p3

    :goto_0
    sget-object v3, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    invoke-virtual {p1, p2, v3, v0, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-direct {p3, p1, p2}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_drawOverlay:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/AlphabetFastIndexer;->mDrawOverlay:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sget p3, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayMarginRight:I

    sget v0, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayRightMargin:I

    if-ge p3, p1, :cond_1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayRightMargin:I

    :cond_1
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextSize:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_text_size:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextColor:I

    sget p3, Lcom/miui/internal/R$color;->alphabet_indexer_overlay_text_color:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    sget p1, Lcom/miui/internal/R$drawable;->alphabet_indexer_overlay:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_itemHeight:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_item_height:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_itemMargin:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_item_margin:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mItemMargin:I

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayWidth:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_overlay_width:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayWidth:I

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayHeight:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_overlay_height:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I

    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerMinWidth:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_min_width:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mIndexerMinWidth:I

    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x800005

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x32

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->TRANSLATION_X:I

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->initAnimConfig()V

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->init()V

    iget p1, p0, Lmiui/widget/AlphabetFastIndexer;->mIndexerMinWidth:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance p1, Lmiui/widget/AlphabetFastIndexer$1;

    invoke-direct {p1, p0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lmiui/widget/AlphabetFastIndexer$2;

    invoke-direct {p1, p0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->checkItemHeight()V

    return-void
.end method

.method static synthetic access$100(Lmiui/widget/AlphabetFastIndexer;)I
    .locals 0

    iget p0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I

    return p0
.end method

.method static synthetic access$202(Lmiui/widget/AlphabetFastIndexer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/AlphabetFastIndexer;->mShowAnimBegin:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/widget/AlphabetFastIndexer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->updateOverlayTranslationX(F)V

    return-void
.end method

.method static synthetic access$400(Lmiui/widget/AlphabetFastIndexer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/AlphabetFastIndexer;)I
    .locals 0

    iget p0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    return p0
.end method

.method static synthetic access$600(Lmiui/widget/AlphabetFastIndexer;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/AlphabetFastIndexer;->updateIndexer(IF)V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    return-void
.end method

.method static synthetic access$802(Lmiui/widget/AlphabetFastIndexer;I)I
    .locals 0

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    return p1
.end method

.method static synthetic access$900(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->hideOverlay()V

    return-void
.end method

.method private animateItem(IFI)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lmiui/widget/AlphabetFastIndexer;->constructItemState(FI)[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiui/widget/AlphabetFastIndexer;->executeAnimation(I[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    invoke-direct {p0, p3}, Lmiui/widget/AlphabetFastIndexer;->restoreState(I)V

    const/4 p1, 0x0

    aget-object p3, p2, p1

    iget-object p3, p3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    aget-object p1, p2, p1

    iget p1, p1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->middleY:I

    int-to-float p1, p1

    invoke-direct {p0, p3, p1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    return-void
.end method

.method private varargs animateItemHide([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .locals 9

    const-string v0, "end"

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    iget v5, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    iget v6, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    const-string v7, "start"

    invoke-direct {p0, v7, v5, v6}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    iget-object v8, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    aput-object v8, v7, v2

    invoke-static {v7}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v7

    invoke-interface {v7}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v7

    new-array v6, v6, [Lmiui/animation/base/AnimConfig;

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v8, v6, v2

    invoke-interface {v7, v5, v0, v6}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    iget-object v5, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v6, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v6, v6, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v5, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->highLight:Z

    if-eqz v5, :cond_0

    iget-object v4, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v5, v5, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs animateItemMove([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v4, v3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTranslationX()F

    move-result v4

    iget-object v5, v3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getScaleX()F

    move-result v5

    const-string v6, "start"

    invoke-direct {p0, v6, v4, v5}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v4

    iget v5, v3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    iget v6, v3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    const-string v7, "end"

    invoke-direct {p0, v7, v5, v6}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    iget-object v3, v3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    aput-object v3, v7, v1

    invoke-static {v7}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v3

    new-array v6, v6, [Lmiui/animation/base/AnimConfig;

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v7, v6, v1

    invoke-interface {v3, v4, v5, v6}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs animateItemShow([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .locals 8

    const-string v0, "start"

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    iget v5, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    iget v6, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    const-string v7, "end"

    invoke-direct {p0, v7, v5, v6}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    iget-object v4, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    aput-object v4, v7, v2

    invoke-static {v7}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v4

    new-array v6, v6, [Lmiui/animation/base/AnimConfig;

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v7, v6, v2

    invoke-interface {v4, v0, v5, v6}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateIndex(FI)I
    .locals 2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    :goto_1
    if-lez v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return p2
.end method

.method private calculateOverlayPosition(I)I
    .locals 4

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    iget p1, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    int-to-double p0, p0

    add-double/2addr v0, p0

    double-to-int v1, v0

    :cond_1
    return v1
.end method

.method private checkItemHeight()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    :cond_0
    return-void
.end method

.method private constructItemState(FI)[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    invoke-direct {p0, p1, p2}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    aget-object v1, v0, v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->highLight:Z

    add-int/lit8 v1, p2, -0x1

    if-ltz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x2

    if-ltz v1, :cond_1

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    aget-object v1, v0, v3

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    aget-object p1, v0, p2

    iget-object p1, p1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget p0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-object v0
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;F)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v0, "!"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u2665"

    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->showOverlay()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc8

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :cond_2
    return-void
.end method

.method private varargs executeAnimation(I[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->animateItemHide([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->animateItemMove([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->animateItemShow([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    :goto_0
    return-void
.end method

.method private generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;
    .locals 2

    new-instance p0, Lmiui/animation/controller/AnimState;

    invoke-direct {p0, p1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    const/4 v0, 0x0

    new-array v1, v0, [J

    invoke-virtual {p0, p1, p2, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p0

    sget-object p1, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    new-array p2, v0, [J

    invoke-virtual {p0, p1, p3, p2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p0

    sget-object p1, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    new-array p2, v0, [J

    invoke-virtual {p0, p1, p3, p2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 5

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method private getListOffset()I
    .locals 1

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPosition(ILandroid/widget/SectionIndexer;)I
    .locals 6

    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    return v0

    :cond_1
    if-gez p1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    array-length p0, p2

    return p0

    :cond_3
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object p2, p2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    move v1, v0

    :goto_1
    add-int v2, v1, p1

    array-length v3, p2

    if-lt v2, v3, :cond_5

    if-lt p1, v1, :cond_7

    :cond_5
    sub-int v3, p1, v1

    array-length v4, p2

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object p1, p2, v2

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_6
    if-ltz v3, :cond_8

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object p1, p2, v3

    goto :goto_2

    :cond_7
    :goto_3
    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 3

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    :goto_0
    instance-of v1, p0, Landroid/widget/SectionIndexer;

    if-nez v1, :cond_1

    instance-of v2, p0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_1

    check-cast p0, Landroid/widget/WrapperListAdapter;

    invoke-interface {p0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/SectionIndexer;

    :cond_2
    return-object v0
.end method

.method private hideOverlay()V
    .locals 7

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->visible()Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v4, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v4, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v4, v2}, Lmiui/animation/IVisibleStyle;->setScale(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v5, v2, v3

    const/4 v5, 0x0

    invoke-interface {v0, v5, v2}, Lmiui/animation/IVisibleStyle;->setScale(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v6, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v6, v2, v3

    invoke-interface {v0, v4, v2}, Lmiui/animation/IVisibleStyle;->setAlpha(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v4, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v4, v2, v3

    invoke-interface {v0, v5, v2}, Lmiui/animation/IVisibleStyle;->setAlpha(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object p0, v1, v3

    invoke-interface {v0, v1}, Lmiui/animation/IVisibleStyle;->hide([Lmiui/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mItemMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget v7, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexerTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "!"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v5, "\u2665"

    :cond_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initAnimConfig()V
    .locals 6

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mAnimConfig:Lmiui/animation/base/AnimConfig;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mAnimConfig:Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v4, v2, [Lmiui/animation/listener/TransitionListener;

    new-instance v5, Lmiui/widget/AlphabetFastIndexer$3;

    invoke-direct {v5, p0}, Lmiui/widget/AlphabetFastIndexer$3;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v3, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

    new-array v1, v2, [Lmiui/animation/listener/TransitionListener;

    new-instance v2, Lmiui/widget/AlphabetFastIndexer$4;

    invoke-direct {v2, p0}, Lmiui/widget/AlphabetFastIndexer$4;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    return-void

    :array_0
    .array-data 4
        0x43960000    # 300.0f
        0x3f4ccccd    # 0.8f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_1
    .array-data 4
        0x43960000    # 300.0f
        0x3f4ccccd    # 0.8f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_2
    .array-data 4
        0x43960000    # 300.0f
        0x3f7d70a4    # 0.99f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private normalizeIndex(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    :cond_1
    :goto_0
    return p1
.end method

.method private refreshMask()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_5

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v0, v1, :cond_5

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v3

    if-nez v3, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->calculateOverlayPosition(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2, v1}, Lmiui/widget/AlphabetFastIndexer;->animateItem(IFI)V

    :cond_5
    return-void
.end method

.method private restoreState(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x2

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lmiui/widget/AlphabetFastIndexer;->restoreViewState(II)V

    :cond_2
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_5

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lmiui/widget/AlphabetFastIndexer;->restoreViewState(II)V

    :cond_5
    return-void
.end method

.method private restoreViewState(II)V
    .locals 7

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    const-string v4, "start"

    invoke-direct {p0, v4, v1, v3}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "end"

    invoke-direct {p0, v4, v2, v3}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v4

    new-array v3, v3, [Lmiui/animation/base/AnimConfig;

    iget-object v6, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v6, v3, v5

    invoke-interface {v4, v1, v2, v3}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_0
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v1, v1, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v6, v5

    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    array-length v7, v5

    if-lt v2, v7, :cond_0

    add-int/lit8 v9, v7, -0x1

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    invoke-interface {v1, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v7, -0x1

    if-ge v9, v12, :cond_1

    invoke-interface {v1, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    move v13, v9

    if-ne v12, v10, :cond_5

    move v14, v10

    :cond_2
    if-lez v13, :cond_4

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v1, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-eq v14, v10, :cond_3

    goto :goto_2

    :cond_3
    if-nez v13, :cond_2

    const/4 v13, 0x0

    move v10, v14

    move v14, v13

    move v13, v9

    goto :goto_3

    :cond_4
    move v13, v9

    :goto_2
    move v10, v14

    :cond_5
    move v14, v13

    :goto_3
    add-int/lit8 v15, v11, 0x1

    :goto_4
    if-ge v15, v7, :cond_6

    invoke-interface {v1, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    if-ne v8, v12, :cond_6

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    int-to-float v1, v13

    int-to-float v7, v7

    div-float/2addr v1, v7

    int-to-float v8, v11

    div-float/2addr v8, v7

    int-to-float v2, v2

    div-float/2addr v2, v7

    if-ne v13, v9, :cond_7

    sub-float v7, v2, v1

    cmpg-float v6, v7, v6

    if-gez v6, :cond_7

    goto :goto_5

    :cond_7
    sub-int/2addr v12, v10

    int-to-float v6, v12

    sub-float/2addr v2, v1

    mul-float/2addr v6, v2

    sub-float/2addr v8, v1

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v10, v1

    :goto_5
    const/4 v1, 0x1

    sub-int/2addr v3, v1

    if-le v10, v3, :cond_8

    move v10, v3

    :cond_8
    invoke-direct {v0, v10, v4}, Lmiui/widget/AlphabetFastIndexer;->setListSelection(II)V

    goto :goto_6

    :cond_9
    mul-int v1, v2, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v1, v4}, Lmiui/widget/AlphabetFastIndexer;->setListSelection(II)V

    const/4 v14, -0x1

    :goto_6
    invoke-direct {v0, v14, v5}, Lmiui/widget/AlphabetFastIndexer;->updateOverlay(I[Ljava/lang/Object;)V

    return-void
.end method

.method private scrollToSelection(IFILandroid/widget/SectionIndexer;)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lmiui/widget/AlphabetFastIndexer;->getPosition(ILandroid/widget/SectionIndexer;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p4, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4, v0}, Lmiui/widget/AlphabetFastIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/AlphabetFastIndexer;->animateItem(IFI)V

    return-void
.end method

.method private setListSelection(II)V
    .locals 2

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v0, p0, Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ExpandableListView;

    add-int/2addr p1, p2

    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ListView;

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_1
    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :goto_0
    return-void
.end method

.method private setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;
    .locals 5

    new-instance v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;-><init>(Lmiui/widget/AlphabetFastIndexer;Lmiui/widget/AlphabetFastIndexer$1;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->middleY:I

    int-to-float p2, v1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    int-to-float p2, p2

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr p2, v1

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, p2, p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    const v1, 0x3e999998    # 0.29999995f

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    iput v1, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    neg-float p1, p1

    iget p2, p0, Lmiui/widget/AlphabetFastIndexer;->TRANSLATION_X:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iput p1, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p0, p1

    iput p0, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    :cond_0
    return-object v0
.end method

.method private showOverlay()V
    .locals 7

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmiui/widget/AlphabetFastIndexer;->mShowAnimBegin:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->visible()Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v4, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v4, v2, v3

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2}, Lmiui/animation/IVisibleStyle;->setScale(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v5, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v0, v5, v2}, Lmiui/animation/IVisibleStyle;->setScale(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v6, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v6, v2, v3

    invoke-interface {v0, v4, v2}, Lmiui/animation/IVisibleStyle;->setAlpha(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v4, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    aput-object v4, v2, v3

    invoke-interface {v0, v5, v2}, Lmiui/animation/IVisibleStyle;->setAlpha(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object p0, v1, v3

    invoke-interface {v0, v1}, Lmiui/animation/IVisibleStyle;->show([Lmiui/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method private stop(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    if-gtz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateIndexer(IF)V
    .locals 6

    const/4 v0, -0x2

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    add-int v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    check-cast v1, Landroid/widget/TextView;

    iget v3, v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    mul-float/2addr v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v2, v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v3, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    if-nez v0, :cond_1

    iget v5, v5, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    goto :goto_1

    :cond_1
    iget v5, v5, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateOverlay(I[Ljava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_1

    if-eqz p2, :cond_1

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x10000005

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->calculateOverlayPosition(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    :cond_1
    return-void
.end method

.method private updateOverlayTranslationX(F)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr v0, p1

    :cond_0
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .locals 4

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lmiui/widget/AlphabetFastIndexer;->mDrawOverlay:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I

    const v3, 0x800005

    invoke-direct {p1, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayRightMargin:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    or-int/lit8 v0, v0, 0x30

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    new-instance v0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    :cond_1
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->calculateOverlayPosition(I)I

    move-result v0

    const/4 v1, 0x3

    int-to-float v0, v0

    invoke-direct {p0, v1, v0, p1}, Lmiui/widget/AlphabetFastIndexer;->animateItem(IFI)V

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, p1, v0}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    :cond_0
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    return v1

    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result v3

    invoke-direct {p0, v4, v3}, Lmiui/widget/AlphabetFastIndexer;->calculateIndex(FI)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    const/4 v6, 0x3

    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v6, p1, v3, v0}, Lmiui/widget/AlphabetFastIndexer;->scrollToSelection(IFILandroid/widget/SectionIndexer;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    invoke-direct {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->restoreState(I)V

    const/16 p1, 0xc8

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v4, p1, v3, v0}, Lmiui/widget/AlphabetFastIndexer;->scrollToSelection(IFILandroid/widget/SectionIndexer;)V

    :goto_1
    return v5
.end method

.method public setOverlayOffset(II)V
    .locals 0

    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x800005

    goto :goto_0

    :cond_0
    const p1, 0x800003

    :goto_0
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    return-void
.end method
