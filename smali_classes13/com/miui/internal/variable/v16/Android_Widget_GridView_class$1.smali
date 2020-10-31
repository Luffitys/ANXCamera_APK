.class Lcom/miui/internal/variable/v16/Android_Widget_GridView_class$1;
.super Ljava/lang/Object;
.source "Android_Widget_GridView_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillGap(Landroid/widget/GridView;Z)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleFillGap(JLandroid/widget/GridView;Z)V

    return-void
.end method

.method public layoutChildren(Landroid/widget/GridView;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleLayoutChildren(JLandroid/widget/GridView;)V

    return-void
.end method
