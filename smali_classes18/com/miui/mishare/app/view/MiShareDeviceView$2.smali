.class Lcom/miui/mishare/app/view/MiShareDeviceView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$2;->this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$2;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
