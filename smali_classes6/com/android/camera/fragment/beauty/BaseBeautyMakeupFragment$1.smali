.class Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$002(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)I

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result v1

    sub-int v1, p3, v1

    iput v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iput p3, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result v0

    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$200(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result v0

    if-gt p3, v0, :cond_0

    iget-object p3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget-object v0, p3, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget v3, p3, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1, p2, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$300(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Landroid/view/View;I)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget p2, p1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-static {p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$400(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$000(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result p2

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-static {p1, p2, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$500(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;II)V

    :cond_3
    return-void
.end method
