.class public final synthetic Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Landroid/transition/TransitionSet;

.field public final synthetic f$10:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/app/FragmentTransition$FragmentContainerTransition;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Landroid/app/Fragment;

.field public final synthetic f$6:Landroid/app/Fragment;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Ljava/util/ArrayList;

.field public final synthetic f$9:Landroid/transition/Transition;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$1:Landroid/transition/TransitionSet;

    iput-object p3, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$2:Landroid/app/FragmentTransition$FragmentContainerTransition;

    iput-object p4, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$4:Landroid/view/View;

    iput-object p6, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$5:Landroid/app/Fragment;

    iput-object p7, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$6:Landroid/app/Fragment;

    iput-boolean p8, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$7:Z

    iput-object p9, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$8:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$9:Landroid/transition/Transition;

    iput-object p11, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$10:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$1:Landroid/transition/TransitionSet;

    iget-object v2, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$2:Landroid/app/FragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$4:Landroid/view/View;

    iget-object v5, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$5:Landroid/app/Fragment;

    iget-object v6, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$6:Landroid/app/Fragment;

    iget-boolean v7, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$7:Z

    iget-object v8, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$8:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$9:Landroid/transition/Transition;

    iget-object v10, p0, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;->f$10:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v10}, Landroid/app/FragmentTransition;->lambda$configureSharedElementsOrdered$3(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    return-void
.end method
