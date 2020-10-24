.class Lcom/android/camera/ui/DragLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/DragLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/DragLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$100(Lcom/android/camera/ui/DragLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$300(Lcom/android/camera/ui/DragLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout;->access$600(Lcom/android/camera/ui/DragLayout;I)V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$400(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Dependency;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayout;->access$300(Lcom/android/camera/ui/DragLayout;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$100(Lcom/android/camera/ui/DragLayout;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$100(Lcom/android/camera/ui/DragLayout;)I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$100(Lcom/android/camera/ui/DragLayout;)I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout;->access$502(Lcom/android/camera/ui/DragLayout;Z)Z

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$500(Lcom/android/camera/ui/DragLayout;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayout;->access$302(Lcom/android/camera/ui/DragLayout;Z)Z

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$400(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Dependency;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v1}, Lcom/android/camera/ui/DragLayout;->access$500(Lcom/android/camera/ui/DragLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/ui/DragLayout;->access$600(Lcom/android/camera/ui/DragLayout;I)V

    :cond_2
    return-void
.end method

.method public onUpdate(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$100(Lcom/android/camera/ui/DragLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0, p1}, Lcom/android/camera/ui/DragLayout;->access$202(Lcom/android/camera/ui/DragLayout;F)F

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p1}, Lcom/android/camera/ui/DragLayout;->access$400(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Dependency;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayout;->access$200(Lcom/android/camera/ui/DragLayout;)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$1;->this$0:Lcom/android/camera/ui/DragLayout;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayout;->access$300(Lcom/android/camera/ui/DragLayout;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    return-void
.end method
