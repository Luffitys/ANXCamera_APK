.class Lmiui/animation/controller/FolmeTouch$3;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/controller/FolmeTouch;

.field final synthetic val$clickListenerSet:Z

.field final synthetic val$config:[Lmiui/animation/base/AnimConfig;

.field final synthetic val$isClickable:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiui/animation/base/AnimConfig;Z)V
    .registers 6

    iput-object p1, p0, Lmiui/animation/controller/FolmeTouch$3;->this$0:Lmiui/animation/controller/FolmeTouch;

    iput-boolean p2, p0, Lmiui/animation/controller/FolmeTouch$3;->val$clickListenerSet:Z

    iput-object p3, p0, Lmiui/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Lmiui/animation/controller/FolmeTouch$3;->val$config:[Lmiui/animation/base/AnimConfig;

    iput-boolean p5, p0, Lmiui/animation/controller/FolmeTouch$3;->val$isClickable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeTouch$3;->val$clickListenerSet:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$3;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/animation/controller/FolmeTouch$3;->val$config:[Lmiui/animation/base/AnimConfig;

    # invokes: Lmiui/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z
    invoke-static {v0, v1, v2, v3}, Lmiui/animation/controller/FolmeTouch;->access$200(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$3;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lmiui/animation/controller/FolmeTouch$3;->val$isClickable:Z

    # invokes: Lmiui/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lmiui/animation/controller/FolmeTouch;->access$300(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z)V

    :cond_1a
    return-void
.end method
