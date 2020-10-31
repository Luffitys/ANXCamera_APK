.class public final synthetic Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/PopupWindow$PopupDecorView;

.field public final synthetic f$1:Landroid/transition/Transition$TransitionListener;

.field public final synthetic f$2:Landroid/transition/Transition;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$0:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$1:Landroid/transition/Transition$TransitionListener;

    iput-object p3, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$2:Landroid/transition/Transition;

    iput-object p4, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$0:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$1:Landroid/transition/Transition$TransitionListener;

    iget-object v2, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$2:Landroid/transition/Transition;

    iget-object v3, p0, Landroid/widget/-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->lambda$startExitTransition$0$PopupWindow$PopupDecorView(Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V

    return-void
.end method
