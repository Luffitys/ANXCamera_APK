.class Lmiui/animation/controller/FolmeTouch$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/animation/controller/FolmeTouch;

.field final synthetic val$clickListenerSet:Z

.field final synthetic val$config:[Lmiui/animation/base/AnimConfig;

.field final synthetic val$isClickable:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiui/animation/base/AnimConfig;Z)V
    .locals 0

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
    .locals 4

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeTouch$3;->val$clickListenerSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$3;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/animation/controller/FolmeTouch$3;->val$config:[Lmiui/animation/base/AnimConfig;

    invoke-static {v0, v1, v2, v3}, Lmiui/animation/controller/FolmeTouch;->access$200(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$3;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lmiui/animation/controller/FolmeTouch$3;->val$isClickable:Z

    invoke-static {v0, v1, p0}, Lmiui/animation/controller/FolmeTouch;->access$300(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
