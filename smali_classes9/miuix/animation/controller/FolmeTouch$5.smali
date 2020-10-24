.class Lmiuix/animation/controller/FolmeTouch$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$5;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$5;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-static {v0}, Lmiuix/animation/controller/FolmeTouch;->access$500(Lmiuix/animation/controller/FolmeTouch;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$5;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->access$600(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
