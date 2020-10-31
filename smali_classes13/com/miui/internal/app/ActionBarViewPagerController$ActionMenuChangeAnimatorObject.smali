.class Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionMenuChangeAnimatorObject"
.end annotation


# instance fields
.field private mPosition:I

.field private mShowActionMenu:Z

.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset(IZ)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    iput-boolean p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    return-void
.end method

.method public setValue(F)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    instance-of v2, v1, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    iget-boolean v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    xor-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    :cond_2e
    goto :goto_12

    :cond_2f
    return-void
.end method
