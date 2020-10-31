.class Landroid/app/FragmentTransition$5;
.super Landroid/transition/TransitionListenerAdapter;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/TransitionSet;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .registers 7

    iput-object p1, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/app/FragmentTransition$5;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    iput-object p4, p0, Landroid/app/FragmentTransition$5;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    iput-object p6, p0, Landroid/app/FragmentTransition$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 5

    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v2, p0, Landroid/app/FragmentTransition$5;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_a
    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_13

    iget-object v2, p0, Landroid/app/FragmentTransition$5;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_13
    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Landroid/app/FragmentTransition$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1c
    return-void
.end method
