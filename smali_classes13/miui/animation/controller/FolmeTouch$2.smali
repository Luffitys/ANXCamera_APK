.class Lmiui/animation/controller/FolmeTouch$2;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/controller/FolmeTouch;->bindViewOfListItem(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/controller/FolmeTouch;

.field final synthetic val$config:[Lmiui/animation/base/AnimConfig;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    iput-object p1, p0, Lmiui/animation/controller/FolmeTouch$2;->this$0:Lmiui/animation/controller/FolmeTouch;

    iput-object p2, p0, Lmiui/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lmiui/animation/controller/FolmeTouch$2;->val$config:[Lmiui/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$2;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lmiui/animation/controller/FolmeTouch$2;->val$config:[Lmiui/animation/base/AnimConfig;

    const/4 v3, 0x0

    # invokes: Lmiui/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z
    invoke-static {v0, v1, v3, v2}, Lmiui/animation/controller/FolmeTouch;->access$200(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z

    return-void
.end method
