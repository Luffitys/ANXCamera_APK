.class Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ExploreByTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/miui/internal/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ExploreByTouchHelper;Lcom/miui/internal/widget/ExploreByTouchHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/miui/internal/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/miui/internal/widget/ExploreByTouchHelper;

    invoke-static {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->access$100(Lcom/miui/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/miui/internal/widget/ExploreByTouchHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->access$200(Lcom/miui/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
