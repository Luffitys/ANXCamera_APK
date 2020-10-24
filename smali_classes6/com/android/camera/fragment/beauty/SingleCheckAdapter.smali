.class public Lcom/android/camera/fragment/beauty/SingleCheckAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mEnableClick:Z

.field private mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field private mItemHorizontalMargin:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPreSelectedItem:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedItem:I

.field private mSingleCheckList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    iput p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance p2, Landroid/animation/FloatEvaluator;

    invoke-direct {p2}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method


# virtual methods
.method public baseNormalColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_0

    const p0, 0x3e19999a    # 0.15f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    :try_start_0
    invoke-virtual {p1, p1, v0, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->setDateToView(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mDegree:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0025

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;-><init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)V

    return-object p2
.end method

.method public onItemHolderClick(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mDegree:I

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return-void
.end method
