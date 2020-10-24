.class public Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# static fields
.field private static final LIST_COLUMN_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EditLevelListAdapter2"


# instance fields
.field private isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAvatarConfigItemClick2:Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;

.field private mContext:Landroid/content/Context;

.field private mItfGvOnItemClickListener:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;

.field private mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

.field private mMimojiThumbnailAdapters:Ljava/util/List;

.field private mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$1;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mAvatarConfigItemClick2:Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mItfGvOnItemClickListener:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;

    return-void
.end method

.method private synthetic OooO00o(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ILandroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->checkClickable()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->onGvItemClick(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;II)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;)Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mItfGvOnItemClickListener:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;)Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    return-object p0
.end method

.method private onGvItemClick(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;II)V
    .locals 4

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outerPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Select index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    if-ltz p3, :cond_2

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v2

    iget v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    int-to-float v3, p3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setInnerConfigSelectIndex(IF)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->updateSelectView(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;II)V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mAvatarConfigItemClick2:Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;->onConfigItemClick(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ZI)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p2, "onGvItemClick AvatarConfig.ASAvatarConfigInfo is null"

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p1, "gv mLevelDatas error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized showColor(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;->mColorRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;->mTvSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->getItemCount()I

    move-result v1

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    iget v2, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->showConfigTypeName(I)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->getColorConfigInfos()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v2

    iget v5, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    invoke-virtual {v2, v5}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getColorType(I)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_9

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmoji topic:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "----"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "----"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    iget v5, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    invoke-static {v5}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->showConfigTypeName(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getColorLayoutManagerMap(I)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_6

    :cond_4
    if-nez v2, :cond_5

    new-instance v2, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    const-string v5, "color_select"

    invoke-direct {v2, v3, v5}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v3, v5, v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->putColorLayoutManagerMap(ILcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;)V

    :cond_5
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_6
    new-instance v3, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mAvatarConfigItemClick2:Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;

    invoke-direct {v3, v5, v6, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;-><init>(Landroid/content/Context;Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v3, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->setData(Ljava/util/List;)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v3, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInnerConfigSelectIndex(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move v5, v4

    move v6, v5

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v7, v7, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-nez v7, :cond_7

    move v6, v5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmoji show color :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "color size:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " colorSelectPositon : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   curHolderPosition : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v6, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 v1, v1, -0x1

    if-lt p3, v1, :cond_a

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_9
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fmoji show color isColorNeedNotify : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic OooO0O0(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->OooO00o(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ILandroid/view/View;)V

    return-void
.end method

.method public getIsColorNeedNotify()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLevelDatas getItemCount size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public notifyThumbnailUpdate(III)V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSelectType()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p1, "update wrong !!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyThumbnailUpdate.... index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;

    if-eqz p1, :cond_3

    if-ltz p3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {p0, p3, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->updateData(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p1, "fmoji position message error !!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p1, "mHandler message error !!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p1, "mLevelDatas Exception !!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->onBindViewHolder(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;I)V
    .locals 10
    .param p1    # Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object v1, p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;->mThumbnailGV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->showColor(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;I)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    const/4 v5, 0x3

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/camera/features/mimoji2/widget/baseview/BaseNoScrollGridLayoutManager;

    iget-object v6, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v5}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseNoScrollGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_2
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v6, v0, 0x3

    rem-int/2addr v0, v5

    const/4 v7, 0x1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    add-int/2addr v6, v3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07035d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v8, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07035e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez p2, :cond_4

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;->mColorRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    div-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_4
    div-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x2

    :cond_5
    :goto_2
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/2addr v8, v6

    sub-int/2addr v6, v7

    mul-int/2addr v0, v6

    add-int/2addr v8, v0

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/android/camera/features/mimoji2/fragment/edit/OooO0OO;

    invoke-direct {p1, p0, v2, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/OooO0OO;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;I)V

    invoke-virtual {v2, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
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

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00be

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ViewHolder;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized refreshData(Ljava/util/List;ZZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLevelDatas refreshData list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mLevelDatas size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  isColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   loadThumbnailFromCache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move p3, v1

    :cond_2
    if-eqz p3, :cond_5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_7

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt v1, p3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setLevelDatas(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    new-instance p1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget p3, p3, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiThumbnailAdapters:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fmoji refreshData isColorNeedNotify = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :goto_3
    :try_start_1
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->TAG:Ljava/lang/String;

    const-string p2, "mLevelDatas refreshData list size error"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIsColorNeedNotify(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->isColorNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setLevelDatas(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setRenderThread(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    return-void
.end method

.method public updateSelectView(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mLevelDatas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click Thumbnail mConfigType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget v2, v2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->mMimojiLevelBean2:Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "configId :"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    iget-object p2, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget p2, p2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->setSelectItem(II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
