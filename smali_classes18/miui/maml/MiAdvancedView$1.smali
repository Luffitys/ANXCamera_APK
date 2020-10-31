.class Lmiui/maml/MiAdvancedView$1;
.super Ljava/lang/Object;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MiAdvancedView;


# direct methods
.method constructor <init>(Lmiui/maml/MiAdvancedView;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/MiAdvancedView$1;->this$0:Lmiui/maml/MiAdvancedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChange(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/MiAdvancedView$1;->this$0:Lmiui/maml/MiAdvancedView;

    invoke-virtual {v0, p1}, Lmiui/maml/MiAdvancedView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView$1;->this$0:Lmiui/maml/MiAdvancedView;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lmiui/maml/MiAdvancedView;->sendAccessibilityEvent(I)V

    return-void
.end method
