.class Lmiui/maml/util/MamlAccessHelper$1;
.super Ljava/lang/Object;
.source "MamlAccessHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/util/MamlAccessHelper;

.field final synthetic val$action:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lmiui/maml/util/MamlAccessHelper;II)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/util/MamlAccessHelper$1;->this$0:Lmiui/maml/util/MamlAccessHelper;

    iput p2, p0, Lmiui/maml/util/MamlAccessHelper$1;->val$id:I

    iput p3, p0, Lmiui/maml/util/MamlAccessHelper$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper$1;->this$0:Lmiui/maml/util/MamlAccessHelper;

    iget-object v1, v0, Lmiui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/maml/util/MamlAccessHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    iget v1, p0, Lmiui/maml/util/MamlAccessHelper$1;->val$id:I

    iget v2, p0, Lmiui/maml/util/MamlAccessHelper$1;->val$action:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
