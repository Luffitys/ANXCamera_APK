.class public Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeSelectView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic OooO00o(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeSelectView;->access$600(Lcom/android/camera/ui/ModeSelectView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ModeSelectView;->access$700(Lcom/android/camera/ui/ModeSelectView;Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeSelectView;->access$800(Lcom/android/camera/ui/ModeSelectView;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/ModeSelectView;->access$900(Lcom/android/camera/ui/ModeSelectView;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/ui/ModeSelectView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode change , mCurMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v3}, Lcom/android/camera/ui/ModeSelectView;->access$800(Lcom/android/camera/ui/ModeSelectView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1, v0}, Lcom/android/camera/ui/ModeSelectView;->access$802(Lcom/android/camera/ui/ModeSelectView;I)I

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeSelectView;->access$1000(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeSelectView;->access$1000(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeSelectView;->access$800(Lcom/android/camera/ui/ModeSelectView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v3}, Lcom/android/camera/ui/ModeSelectView;->access$1100(Lcom/android/camera/ui/ModeSelectView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/ModeSelectView;->access$200(Lcom/android/camera/ui/ModeSelectView;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;->onModeSelected(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeSelectView;->access$1300(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeSelectView;->access$1200(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2, p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p0, v0, v3}, Lcom/android/camera/ui/ModeSelectView;->access$1400(Lcom/android/camera/ui/ModeSelectView;IZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->OooO00o(Landroid/view/View;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p0}, Lcom/android/camera/ui/ModeSelectView;->access$500(Lcom/android/camera/ui/ModeSelectView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->onBindViewHolder(Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;I)V
    .locals 3
    .param p1    # Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1, p2}, Lcom/android/camera/ui/ModeSelectView;->access$200(Lcom/android/camera/ui/ModeSelectView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1, p2}, Lcom/android/camera/ui/ModeSelectView;->access$300(Lcom/android/camera/ui/ModeSelectView;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p0, p2}, Lcom/android/camera/ui/ModeSelectView;->access$400(Lcom/android/camera/ui/ModeSelectView;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeSelectView;->access$000(Lcom/android/camera/ui/ModeSelectView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/camera/ui/ModeSelectView;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[onCreateViewHolder] h&f"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;-><init>(Lcom/android/camera/ui/ModeSelectView;Landroid/view/View;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00dd

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/android/camera/ui/OooO0o0;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/OooO0o0;-><init>(Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;-><init>(Lcom/android/camera/ui/ModeSelectView;Landroid/view/View;)V

    return-object p2
.end method
