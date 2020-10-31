.class Landroid/transition/TransitionManager$MultiListener$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/TransitionManager$MultiListener;

.field final synthetic val$runningTransitions:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V
    .registers 3

    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4

    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iget-object v1, v1, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
