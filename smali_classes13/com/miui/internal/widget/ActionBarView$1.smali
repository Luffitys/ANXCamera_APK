.class Lcom/miui/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$1;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$1;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$000(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$1;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$000(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_11
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
