.class Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# instance fields
.field final mLeftMargin:I

.field final mRightMargin:I

.field final synthetic this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

.field final synthetic val$isRTL:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    iput-boolean p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->val$isRTL:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07022c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mLeftMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07022d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-boolean p3, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->val$isRTL:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mLeftMargin:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    invoke-virtual {p1, p0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mLeftMargin:I

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    :goto_0
    invoke-virtual {p1, p2, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;->mRightMargin:I

    invoke-virtual {p1, p4, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
