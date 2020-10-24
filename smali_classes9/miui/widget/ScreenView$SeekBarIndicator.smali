.class Lmiui/widget/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fastOffset(I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {}, Lmiui/widget/ScreenView;->access$900()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    invoke-static {}, Lmiui/widget/ScreenView;->access$900()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
