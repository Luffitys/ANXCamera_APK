.class Lmiui/animation/styles/TintDrawable$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$ref:Lmiui/animation/styles/TintDrawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lmiui/animation/styles/TintDrawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/styles/TintDrawable$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lmiui/animation/styles/TintDrawable$2;->val$ref:Lmiui/animation/styles/TintDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable$2;->val$view:Landroid/view/View;

    iget-object p0, p0, Lmiui/animation/styles/TintDrawable$2;->val$ref:Lmiui/animation/styles/TintDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
