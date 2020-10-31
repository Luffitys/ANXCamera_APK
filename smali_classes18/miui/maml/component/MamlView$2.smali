.class Lmiui/maml/component/MamlView$2;
.super Ljava/lang/Object;
.source "MamlView.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlView;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChange(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    invoke-virtual {v0, p1}, Lmiui/maml/component/MamlView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lmiui/maml/component/MamlView;->sendAccessibilityEvent(I)V

    return-void
.end method
