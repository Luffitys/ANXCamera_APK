.class Lcom/miui/internal/app/ViewPagerScrollEffect;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field mBaseItem:I

.field mBaseItemUpdated:Z

.field mIncomingPosition:I

.field mListView:Landroid/view/ViewGroup;

.field mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field mScrollBasePosition:I

.field mViewPager:Lmiui/view/ViewPager;

.field sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field sRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/DynamicFragmentPagerAdapter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    iput v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mScrollBasePosition:I

    iput v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mIncomingPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mViewPager:Lmiui/view/ViewPager;

    iput-object p2, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    return-void
.end method


# virtual methods
.method clearTranslation(Landroid/view/ViewGroup;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_13

    :cond_24
    return-void
.end method

.method clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_23

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_23
    goto :goto_4

    :cond_24
    return-void
.end method

.method computOffset(IIIF)I
    .registers 11

    const v0, 0x3dcccccd    # 0.1f

    if-ge p1, p3, :cond_9

    mul-int v1, p1, p2

    div-int/2addr v1, p3

    goto :goto_a

    :cond_9
    move v1, p2

    :goto_a
    mul-float v2, p4, p4

    int-to-float v3, v1

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f666666    # 0.9f

    div-float v5, v2, v5

    sub-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_20

    float-to-int v4, v3

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    return v4
.end method

.method fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/miui/internal/app/ViewPagerScrollEffect;->clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiui/util/ViewUtils;->getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_33

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_30

    :cond_2d
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_33
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    :cond_14
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 15

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    if-nez v1, :cond_11

    iput p1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    iput-boolean v2, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    iget-object v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    :cond_11
    iget v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mScrollBasePosition:I

    if-eq v1, p1, :cond_2f

    iget v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    if-ge v1, p1, :cond_1c

    iput p1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    goto :goto_24

    :cond_1c
    add-int/lit8 v3, p1, 0x1

    if-le v1, v3, :cond_24

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    :cond_24
    :goto_24
    iput p1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mScrollBasePosition:I

    iput-boolean v2, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    iget-object v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2f

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    :cond_2f
    cmpl-float v0, p2, v0

    if-lez v0, :cond_99

    move v0, p2

    iget-boolean v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_76

    iput-boolean v3, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    iget v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mBaseItem:I

    if-ne v1, p1, :cond_4d

    iget-object v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_4d

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mIncomingPosition:I

    goto :goto_4f

    :cond_4d
    iput p1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mIncomingPosition:I

    :goto_4f
    iget-object v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget v4, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mIncomingPosition:I

    invoke-virtual {v1, v4, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_76

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_76

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    :cond_76
    iget v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mIncomingPosition:I

    if-ne v1, p1, :cond_7e

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p2

    :cond_7e
    iget-object v5, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_99

    nop

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    iget v1, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->mIncomingPosition:I

    if-eq v1, p1, :cond_93

    move v9, v2

    goto :goto_94

    :cond_93
    move v9, v3

    :goto_94
    move-object v4, p0

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/app/ViewPagerScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V

    :cond_99
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method translateView(Landroid/view/ViewGroup;IIFZ)V
    .registers 13

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v1, v5, :cond_46

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v5, v1, v0

    invoke-virtual {p0, v5, p2, p3, p4}, Lcom/miui/internal/app/ViewPagerScrollEffect;->computOffset(IIIF)I

    move-result v5

    if-eqz p5, :cond_44

    move v6, v5

    goto :goto_45

    :cond_44
    neg-int v6, v5

    :goto_45
    move v2, v6

    :cond_46
    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_24

    :cond_4b
    return-void
.end method
