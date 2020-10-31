.class Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;
.super Ljava/lang/Object;
.source "Android_View_ViewGroup_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInArray(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    # invokes: Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    invoke-static/range {v0 .. v5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$000(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public onChildVisibilityChanged(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    # invokes: Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    invoke-static/range {v0 .. v6}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$300(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;Landroid/view/View;II)V

    return-void
.end method

.method public removeFromArray(Landroid/view/ViewGroup;I)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    # invokes: Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;I)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$100(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;I)V

    return-void
.end method

.method public removeFromArray(Landroid/view/ViewGroup;II)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    # invokes: Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;II)V
    invoke-static/range {v0 .. v5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$200(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;II)V

    return-void
.end method

.method public resolveLayoutDirection(Landroid/view/ViewGroup;)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    # invokes: Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    invoke-static {v0, v1, v2, p1}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$400(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method
