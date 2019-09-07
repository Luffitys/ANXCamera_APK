.class public Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LiveBeautyFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilterItemAdapter"
.end annotation


# instance fields
.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;->access$100(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;->access$100(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;

    check-cast p1, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemHolder;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemHolder;->bindEffectIndex(ILcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b004d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterStillItemHolder;-><init>(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$FilterItemAdapter;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
