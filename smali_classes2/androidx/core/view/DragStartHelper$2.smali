.class Landroidx/core/view/DragStartHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Landroidx/core/view/DragStartHelper;


# direct methods
.method constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/DragStartHelper$2;->this$0:Landroidx/core/view/DragStartHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/DragStartHelper$2;->this$0:Landroidx/core/view/DragStartHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/DragStartHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
