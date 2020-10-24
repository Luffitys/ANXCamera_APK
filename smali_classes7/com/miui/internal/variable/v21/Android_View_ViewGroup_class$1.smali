.class Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInArray(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$000(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

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
    .locals 7

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$300(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;Landroid/view/View;II)V

    return-void
.end method

.method public removeFromArray(Landroid/view/ViewGroup;I)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$100(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;I)V

    return-void
.end method

.method public removeFromArray(Landroid/view/ViewGroup;II)V
    .locals 6

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$200(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;II)V

    return-void
.end method

.method public resolveLayoutDirection(Landroid/view/ViewGroup;)Z
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;->this$0:Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->access$400(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
