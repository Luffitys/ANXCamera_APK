.class Lcom/android/camera/ui/DragLayout$Dependency;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCatchDragList:Ljava/util/List;

.field private mTotalTranY:F

.field final synthetic this$0:Lcom/android/camera/ui/DragLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/DragLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mTotalTranY:F

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mCatchDragList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/DragLayout;Lcom/android/camera/ui/DragLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout$Dependency;-><init>(Lcom/android/camera/ui/DragLayout;)V

    return-void
.end method


# virtual methods
.method public catchDrag(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mCatchDragList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/DragLayout$OnDragListener;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/DragLayout$OnDragListener;->catchDrag(II)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mCatchDragList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onDragDone(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone dragUp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout;->access$1000(Lcom/android/camera/ui/DragLayout;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mTotalTranY:F

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/DragLayout$OnDragListener;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/DragLayout$OnDragListener;->onDragDone(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p1}, Lcom/android/camera/ui/DragLayout;->access$1100(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Bar;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayout;->access$1100(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Bar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/DragLayout$Bar;->access$800(Lcom/android/camera/ui/DragLayout$Bar;I)Z

    :cond_2
    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mTotalTranY:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/DragLayout$OnDragListener;

    float-to-int v1, v0

    invoke-interface {p1, v1, p2}, Lcom/android/camera/ui/DragLayout$OnDragListener;->onDragProgress(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart dragUp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout;->access$1000(Lcom/android/camera/ui/DragLayout;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DragLayout$OnDragListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/DragLayout$OnDragListener;->onDragStart(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInterceptDrag()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v2}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Dependency;->mCatchDragList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v2}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/DragLayout$OnDragListener;

    invoke-interface {v2}, Lcom/android/camera/ui/DragLayout$OnDragListener;->onInterceptDrag()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public showPress(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v2}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Dependency;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v2}, Lcom/android/camera/ui/DragLayout;->access$900(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/DragLayout$OnDragListener;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/DragLayout$OnDragListener;->showDragAnimation(II)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
