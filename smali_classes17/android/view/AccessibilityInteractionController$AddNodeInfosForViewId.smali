.class final Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddNodeInfosForViewId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewId:I

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .registers 2

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method


# virtual methods
.method public init(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    return-void
.end method

.method public test(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->test(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
