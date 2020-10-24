.class Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# instance fields
.field protected mEffectListLeft:I

.field protected mHorizontalPadding:I

.field protected mVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070575

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mEffectListLeft:I

    iput p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mHorizontalPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mEffectListLeft:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mVerticalPadding:I

    iget p0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mHorizontalPadding:I

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
