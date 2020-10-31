.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/LinearLayout;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;,
        Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;,
        Lmiui/widget/AlphabetFastIndexer$TextHilighter;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayHeight:I

.field private mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

.field private mOverlayRightMargin:I

.field private mOverlayTextColor:I

.field private mOverlayTextSize:I

.field private mOverlayWidth:I

.field mSectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAnimBegin:Z

.field private mState:I

.field private mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

.field private mVerticalPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

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

    if-nez v3, :cond_4f

    move v3, p3

    goto :goto_53

    :cond_4f
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    :goto_53
    sget-object v4, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    invoke-virtual {p1, p2, v4, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v4, Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-direct {v4, p1, v0}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    sget v4, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_drawOverlay:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/widget/AlphabetFastIndexer;->mDrawOverlay:Z

    if-eqz v4, :cond_ec

    sget v4, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayMarginRight:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayRightMargin:I

    if-ge v5, v4, :cond_82

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayRightMargin:I

    :cond_82
    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextSize:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_text_size:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextColor:I

    sget v6, Lcom/miui/internal/R$color;->alphabet_indexer_overlay_text_color:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    sget v5, Lcom/miui/internal/R$drawable;->alphabet_indexer_overlay:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_itemHeight:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_indexer_item_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_itemMargin:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_indexer_item_margin:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mItemMargin:I

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayWidth:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_overlay_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayWidth:I

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayHeight:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_overlay_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I

    sget v5, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerMinWidth:I

    sget v6, Lcom/miui/internal/R$dimen;->alphabet_indexer_min_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mIndexerMinWidth:I

    :cond_ec
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v4, 0x800005

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setGravity(I)V

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setOrientation(I)V

    const/16 v1, 0x32

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->TRANSLATION_X:I

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->initAnimConfig()V

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->init()V

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mIndexerMinWidth:I

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setMinimumWidth(I)V

    new-instance v1, Lmiui/widget/AlphabetFastIndexer$1;

    invoke-direct {v1, p0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lmiui/widget/AlphabetFastIndexer$2;

    invoke-direct {v1, p0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/AlphabetFastIndexer;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->checkItemHeight()V

    return-void
.end method

.method static synthetic access$100(Lmiui/widget/AlphabetFastIndexer;)I
    .registers 2

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I

    return v0
.end method

.method static synthetic access$202(Lmiui/widget/AlphabetFastIndexer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/AlphabetFastIndexer;->mShowAnimBegin:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/widget/AlphabetFastIndexer;F)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->updateOverlayTranslationX(F)V

    return-void
.end method

.method static synthetic access$400(Lmiui/widget/AlphabetFastIndexer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/AlphabetFastIndexer;)I
    .registers 2

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    return v0
.end method

.method static synthetic access$600(Lmiui/widget/AlphabetFastIndexer;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/AlphabetFastIndexer;->updateIndexer(IF)V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/AlphabetFastIndexer;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    return-void
.end method

.method static synthetic access$802(Lmiui/widget/AlphabetFastIndexer;I)I
    .registers 2

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    return p1
.end method

.method static synthetic access$900(Lmiui/widget/AlphabetFastIndexer;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->hideOverlay()V

    return-void
.end method

.method private animateItem(IFI)V
    .registers 7

    invoke-direct {p0, p2, p3}, Lmiui/widget/AlphabetFastIndexer;->constructItemState(FI)[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/AlphabetFastIndexer;->executeAnimation(I[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    invoke-direct {p0, p3}, Lmiui/widget/AlphabetFastIndexer;->restoreState(I)V

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v0, v1

    iget v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->middleY:I

    int-to-float v1, v1

    invoke-direct {p0, v2, v1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    return-void
.end method

.method private varargs animateItemHide([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .registers 11

    const-string v0, "end"

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_4d

    aget-object v4, p1, v3

    if-eqz v4, :cond_4a

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

    iget-object v6, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v6, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->highLight:Z

    if-eqz v6, :cond_4a

    iget-object v6, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4d
    return-void
.end method

.method private varargs animateItemMove([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .registers 11

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_40

    aget-object v3, p1, v2

    if-eqz v3, :cond_3d

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

    iget-object v8, v3, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    aput-object v8, v7, v1

    invoke-static {v7}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v7

    invoke-interface {v7}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v7

    new-array v6, v6, [Lmiui/animation/base/AnimConfig;

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v8, v6, v1

    invoke-interface {v7, v4, v5, v6}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_40
    return-void
.end method

.method private varargs animateItemShow([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .registers 11

    const-string v0, "start"

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_37

    aget-object v4, p1, v3

    if-eqz v4, :cond_34

    iget v5, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    iget v6, v4, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    const-string v7, "end"

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

    invoke-interface {v7, v0, v5, v6}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_37
    return-void
.end method

.method private calculateIndex(FI)I
    .registers 6

    invoke-virtual {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_27

    add-int/lit8 v1, p2, 0x1

    :goto_f
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_23

    return v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    goto :goto_45

    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_45

    add-int/lit8 v1, p2, -0x1

    :goto_32
    if-lez v1, :cond_45

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_42

    return v1

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_45
    :goto_45
    return p2
.end method

.method private calculateOverlayPosition(I)I
    .registers 8

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_2a

    add-int/lit8 v2, p1, 0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v1, v2

    :cond_2a
    return v1
.end method

.method private checkItemHeight()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_11

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    if-eq v0, v1, :cond_11

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    :cond_11
    return-void
.end method

.method private constructItemState(FI)[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;
    .registers 7

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

    if-ltz v1, :cond_31

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_31
    add-int/lit8 v1, p2, -0x2

    if-ltz v1, :cond_49

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_49
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_65

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_65
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_81

    add-int/lit8 v1, p2, 0x2

    invoke-direct {p0, p1, v1}, Lmiui/widget/AlphabetFastIndexer;->setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_81
    return-object v0
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;F)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    const-string v0, "!"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "\u2665"

    goto :goto_15

    :cond_14
    move-object v0, p1

    :goto_15
    move-object p1, v0

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->showOverlay()V

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3d

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :cond_3d
    return-void
.end method

.method private varargs executeAnimation(I[Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    goto :goto_16

    :cond_a
    invoke-direct {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->animateItemHide([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    goto :goto_16

    :cond_e
    invoke-direct {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->animateItemMove([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    goto :goto_16

    :cond_12
    invoke-direct {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->animateItemShow([Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;)V

    nop

    :goto_16
    return-void
.end method

.method private generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;
    .registers 8

    new-instance v0, Lmiui/animation/controller/AnimState;

    invoke-direct {v0, p1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p2, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p3, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p3, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method private getIndex(Ljava/lang/String;)I
    .registers 5

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    :cond_1e
    return v0
.end method

.method private getListOffset()I
    .registers 3

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private getPosition(ILandroid/widget/SectionIndexer;)I
    .registers 13

    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_19

    return v1

    :cond_19
    move v3, p1

    if-gez v3, :cond_1d

    return v1

    :cond_1d
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v1, v1

    if-lt v3, v1, :cond_26

    array-length v1, v0

    return v1

    :cond_26
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_2c
    array-length v4, v0

    if-ge v1, v4, :cond_45

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_45
    const/4 v1, 0x0

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v4, v4, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    const/4 v5, 0x0

    :goto_4b
    add-int v6, v5, v3

    array-length v7, v4

    if-lt v6, v7, :cond_52

    if-lt v3, v5, :cond_8d

    :cond_52
    add-int v6, v5, v3

    sub-int v7, v3, v5

    array-length v8, v4

    if-ge v6, v8, :cond_72

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8d

    :cond_72
    if-ltz v7, :cond_8e

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    :cond_8d
    :goto_8d
    return v1

    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .registers 4

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    :goto_b
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1b

    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_1b

    move-object v2, v0

    check-cast v2, Landroid/widget/WrapperListAdapter;

    invoke-interface {v2}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_b

    :cond_1b
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_22

    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    :cond_22
    return-object v1
.end method

.method private hideOverlay()V
    .registers 8

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_46

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

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lmiui/animation/IVisibleStyle;->hide([Lmiui/animation/base/AnimConfig;)V

    :cond_46
    return-void
.end method

.method private init()V
    .registers 10

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->mItemMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_54

    aget-object v6, v2, v5

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget v8, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v8, v8, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v8, v8, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexerTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v8, "!"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4a

    const-string v8, "\u2665"

    goto :goto_4b

    :cond_4a
    move-object v8, v6

    :goto_4b
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7, v1}, Lmiui/widget/AlphabetFastIndexer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_54
    return-void
.end method

.method private initAnimConfig()V
    .registers 7

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mAnimConfig:Lmiui/animation/base/AnimConfig;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_60

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

    fill-array-data v4, :array_6a

    invoke-static {v3, v4}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHideAnimConfig:Lmiui/animation/base/AnimConfig;

    new-array v1, v1, [F

    fill-array-data v1, :array_74

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

    :array_60
    .array-data 4
        0x43960000    # 300.0f
        0x3f4ccccd    # 0.8f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_6a
    .array-data 4
        0x43960000    # 300.0f
        0x3f4ccccd    # 0.8f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_74
    .array-data 4
        0x43960000    # 300.0f
        0x3f7d70a4    # 0.99f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private normalizeIndex(I)I
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_10

    :cond_4
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_10

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :cond_10
    :goto_10
    return p1
.end method

.method private refreshMask()V
    .registers 9

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v1, -0x1

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_32
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_4a

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_47

    move v1, v6

    goto :goto_4a

    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_4a
    :goto_4a
    if-eq v1, v4, :cond_6b

    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v5, v1, :cond_6b

    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->isPressed()Z

    move-result v6

    if-nez v6, :cond_6b

    if-eq v5, v4, :cond_62

    const/4 v4, 0x2

    goto :goto_63

    :cond_62
    const/4 v4, 0x1

    :goto_63
    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->calculateOverlayPosition(I)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v4, v6, v1}, Lmiui/widget/AlphabetFastIndexer;->animateItem(IFI)V

    :cond_6b
    return-void
.end method

.method private restoreState(I)V
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-le p1, v1, :cond_7

    add-int/lit8 v0, p1, -0x2

    goto :goto_c

    :cond_7
    const/4 v1, 0x1

    if-le p1, v1, :cond_c

    add-int/lit8 v0, p1, -0x1

    :cond_c
    :goto_c
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/widget/AlphabetFastIndexer;->restoreViewState(II)V

    :cond_13
    const/4 v2, -0x1

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1f

    add-int/lit8 v2, p1, 0x2

    goto :goto_29

    :cond_1f
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_29

    add-int/lit8 v2, p1, 0x1

    :cond_29
    :goto_29
    if-eq v2, v1, :cond_34

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getChildCount()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lmiui/widget/AlphabetFastIndexer;->restoreViewState(II)V

    :cond_34
    return-void
.end method

.method private restoreViewState(II)V
    .registers 11

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_4a

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3d

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v4

    const-string v5, "start"

    invoke-direct {p0, v5, v2, v4}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "end"

    invoke-direct {p0, v5, v3, v4}, Lmiui/widget/AlphabetFastIndexer;->generateFolmeAnimState(Ljava/lang/String;FF)Lmiui/animation/controller/AnimState;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v5

    new-array v4, v4, [Lmiui/animation/base/AnimConfig;

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mItemAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v7, v4, v6

    invoke-interface {v5, v2, v3, v4}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_3d
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4a
    return-void
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .registers 25

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

    if-eqz v5, :cond_a7

    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_a7

    array-length v7, v5

    move/from16 v8, p2

    if-lt v8, v7, :cond_28

    add-int/lit8 v8, v7, -0x1

    :cond_28
    move v9, v8

    move v10, v8

    invoke-interface {v1, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    move v12, v3

    move v13, v11

    move v14, v8

    add-int/lit8 v15, v8, 0x1

    move/from16 v16, v10

    add-int/lit8 v10, v7, -0x1

    if-ge v8, v10, :cond_3f

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v1, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    :cond_3f
    if-ne v12, v11, :cond_55

    :cond_41
    if-lez v8, :cond_52

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v1, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    if-eq v13, v11, :cond_4e

    move v14, v8

    move v10, v8

    goto :goto_57

    :cond_4e
    if-nez v8, :cond_41

    const/4 v10, 0x0

    goto :goto_57

    :cond_52
    move/from16 v10, v16

    goto :goto_57

    :cond_55
    move/from16 v10, v16

    :goto_57
    add-int/lit8 v16, v15, 0x1

    move/from16 v21, v16

    move/from16 v16, v8

    move/from16 v8, v21

    :goto_5f
    if-ge v8, v7, :cond_70

    move/from16 v17, v10

    invoke-interface {v1, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    if-ne v10, v12, :cond_72

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v17

    goto :goto_5f

    :cond_70
    move/from16 v17, v10

    :cond_72
    int-to-float v10, v14

    int-to-float v1, v7

    div-float/2addr v10, v1

    int-to-float v1, v15

    move/from16 v18, v8

    int-to-float v8, v7

    div-float/2addr v1, v8

    int-to-float v8, v2

    move/from16 v19, v11

    int-to-float v11, v7

    div-float/2addr v8, v11

    if-ne v14, v9, :cond_89

    sub-float v11, v8, v10

    cmpg-float v11, v11, v6

    if-gez v11, :cond_89

    move v11, v13

    goto :goto_99

    :cond_89
    sub-int v11, v12, v13

    int-to-float v11, v11

    sub-float v20, v8, v10

    mul-float v11, v11, v20

    sub-float v20, v1, v10

    div-float v11, v11, v20

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v11, v13

    :goto_99
    move/from16 v19, v1

    add-int/lit8 v1, v3, -0x1

    if-le v11, v1, :cond_a1

    add-int/lit8 v11, v3, -0x1

    :cond_a1
    invoke-direct {v0, v11, v4}, Lmiui/widget/AlphabetFastIndexer;->setListSelection(II)V

    move/from16 v10, v17

    goto :goto_b2

    :cond_a7
    mul-int v1, v2, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v1, v4}, Lmiui/widget/AlphabetFastIndexer;->setListSelection(II)V

    const/4 v10, -0x1

    :goto_b2
    invoke-direct {v0, v10, v5}, Lmiui/widget/AlphabetFastIndexer;->updateOverlay(I[Ljava/lang/Object;)V

    return-void
.end method

.method private scrollToSelection(IFILandroid/widget/SectionIndexer;)V
    .registers 8

    invoke-direct {p0, p3, p4}, Lmiui/widget/AlphabetFastIndexer;->getPosition(ILandroid/widget/SectionIndexer;)I

    move-result v0

    if-gez v0, :cond_d

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_10

    :cond_d
    invoke-direct {p0, p4, v0}, Lmiui/widget/AlphabetFastIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    :goto_10
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/AlphabetFastIndexer;->animateItem(IFI)V

    return-void
.end method

.method private setListSelection(II)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/ExpandableListView;

    add-int v1, p1, p2

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_28

    :cond_17
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_23

    check-cast v0, Landroid/widget/ListView;

    add-int v1, p1, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_28

    :cond_23
    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    :goto_28
    return-void
.end method

.method private setupItemState(FI)Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;
    .registers 11

    new-instance v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;-><init>(Lmiui/widget/AlphabetFastIndexer;Lmiui/widget/AlphabetFastIndexer$1;)V

    invoke-virtual {p0, p2}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->middleY:I

    iget v2, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->middleY:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v3, v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    const v4, 0x3e999998    # 0.29999995f

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    iput v4, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    neg-float v3, v2

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->TRANSLATION_X:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    iput v3, v0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    :cond_5a
    return-object v0
.end method

.method private showOverlay()V
    .registers 8

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_4b

    iget-boolean v1, p0, Lmiui/widget/AlphabetFastIndexer;->mShowAnimBegin:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
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

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mAnimConfig:Lmiui/animation/base/AnimConfig;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lmiui/animation/IVisibleStyle;->show([Lmiui/animation/base/AnimConfig;)V

    :cond_4b
    return-void
.end method

.method private stop(I)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    if-gtz p1, :cond_16

    const-wide/16 v2, 0x0

    goto :goto_17

    :cond_16
    int-to-long v2, p1

    :goto_17
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateIndexer(IF)V
    .registers 13

    const/4 v0, -0x2

    :goto_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_6f

    add-int v1, v0, p1

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;

    if-nez v2, :cond_15

    goto :goto_6c

    :cond_15
    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    iget v4, v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->translationX:F

    mul-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v4, v2, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->scale:F

    mul-float/2addr v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    if-nez v0, :cond_50

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v5, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v9, v9, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6c

    :cond_50
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v5, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget v9, v9, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6f
    return-void
.end method

.method private updateOverlay(I[Ljava/lang/Object;)V
    .registers 7

    if-ltz p1, :cond_3c

    if-eqz p2, :cond_3c

    aget-object v0, p2, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const v2, 0x10000005

    invoke-static {v2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p0, v2}, Lmiui/widget/AlphabetFastIndexer;->performHapticFeedback(I)Z

    :cond_34
    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->calculateOverlayPosition(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    :cond_3c
    return-void
.end method

.method private updateOverlayTranslationX(F)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    :cond_14
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    if-nez p1, :cond_b

    return-void

    :cond_b
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lmiui/widget/AlphabetFastIndexer;->mDrawOverlay:Z

    if-eqz v3, :cond_7e

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayHeight:I

    const v6, 0x800005

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v2, v3

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayRightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_7e
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    or-int/lit8 v3, v3, 0x30

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2}, Lmiui/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 3

    new-instance v0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_15
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    :cond_1d
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .registers 7

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    if-nez v0, :cond_2c

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->getIndex(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->calculateOverlayPosition(I)I

    move-result v2

    const/4 v3, 0x3

    int-to-float v4, v2

    invoke-direct {p0, v3, v4, v1}, Lmiui/widget/AlphabetFastIndexer;->animateItem(IFI)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object v3, v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    :cond_2c
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    return v1

    :cond_9
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    return v1

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_29

    move v4, v3

    :cond_29
    move v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mItemHeight:I

    int-to-float v5, v5

    div-float v5, v3, v5

    float-to-int v5, v5

    invoke-direct {p0, v5}, Lmiui/widget/AlphabetFastIndexer;->normalizeIndex(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lmiui/widget/AlphabetFastIndexer;->calculateIndex(FI)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5c

    if-eq v2, v6, :cond_50

    const/4 v7, 0x3

    if-eq v2, v5, :cond_48

    if-eq v2, v7, :cond_50

    goto :goto_67

    :cond_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v7, v1, v4, v0}, Lmiui/widget/AlphabetFastIndexer;->scrollToSelection(IFILandroid/widget/SectionIndexer;)V

    goto :goto_67

    :cond_50
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    invoke-direct {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->restoreState(I)V

    const/16 v1, 0xc8

    invoke-direct {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_67

    :cond_5c
    invoke-virtual {p0, v6}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v5, v1, v4, v0}, Lmiui/widget/AlphabetFastIndexer;->scrollToSelection(IFILandroid/widget/SectionIndexer;)V

    nop

    :goto_67
    return v6
.end method

.method public setOverlayOffset(II)V
    .registers 3

    return-void
.end method

.method public setVerticalPosition(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const v0, 0x800005

    goto :goto_9

    :cond_6
    const v0, 0x800003

    :goto_9
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    return-void
.end method
